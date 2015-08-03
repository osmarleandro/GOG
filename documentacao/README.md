<script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="http://adrai.github.io/flowchart.js/flowchart-latest.js"></script>
<script>
	window.onload = function () {
		var diagram = flowchart.parse("st=>start: Iniciar\n" + 
			"e=>end\n" + 
			"op=>operation: Configurar o Banco de Dados\n" + 
			"op0=>operation: Configurar o projeto no Eclipse\n" + 
			"op1=>operation: Configurar o Jboss\n" + 
			"op2=>operation: Executar carga inicial\n" + 
			"op3=>operation: Ajustar as configurações\n" + 
			"cond=>condition: Aplicação Montada?\n" + 
			"st->op0->op->op1->cond\n" + 
			"cond(yes)->op2->op3->e\n" + 
			"cond(no)->op");
		diagram.drawSVG('diagram');
	};
</script>

GOG Documentação 
================
Aqui algumas informações sobre a configuração e montagem dos ambientes para utilização do sistema GOG.

---------------

## Montagem do ambiente de desenvolvimento

<div id='diagram' />

1. Configurar o projeto no Eclipse
2. Configurar o Banco de Dados
3. Configurar o Jboss
4. Executar carga inicial
5. Ajustar as configurações




## Configuração do projeto no Eclipse
O projeto foi desenvolvido em Java, com uso do Maven. O arquivo "pom.xml" pode ser adequamente utilizado para importar o projeto em um IDE.

No Eclipse basta solicitar a importação de um novo projeto (Import ==> Import Existing Maven Projects) e apontar para a raiz do projeto.

## Configuração do Banco de Dados
Inicialmente, o projeto GOG foi desenvolvido para a plataforma SQLServer, utilizando a API EclipseLink para o mapeamento objeto relacional - ORM.
A versão mais atual do projeto passou a utilizar JPA (com hibernate), mantendo o mapeamento objeto relacional mais transparente. 

Com o mapeamento JPA, podemos utlizar qualquer gerenciador de banco de dados, bastando ajustar os drivers e os arquivos de configuração. Com isto, podemos utilizar o SGBD Postgresql como Banco de Dados do projeto GOG.

### Configuração do dataSource no projeto (arquivo "persistence.xml") 
Path: /GOG/src/main/resources/META-INF/persistence.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<persistence xmlns="http://java.sun.com/xml/ns/persistence"
             xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
             xsi:schemaLocation="http://java.sun.com/xml/ns/persistence http://java.sun.com/xml/ns/persistence/persistence_2_0.xsd"
             version="2.0">
	<persistence-unit name="ouvidoriaPersistenceUnit">
		<jta-data-source>java:/datasources/GOGDSPostreSQL</jta-data-source>
		<properties>
			<!-- Properties for Hibernate -->
			<property name="hibernate.dialect" value="org.hibernate.dialect.PostgreSQLDialect" />
			<property name="hibernate.hbm2ddl.auto" value="create-drop" /> 
			<property name="hibernate.format_sql" value="true" />
			<property name="hibernate.show_sql" value="true" />
			<property name="hibernate.enable_lazy_load_no_trans" value="true" />
		</properties>
	</persistence-unit>
</persistence>
```

> **Nota:** 

> - A criação da DLL do banco de dados pode ser comentada no arquivo de persistence, após a primeira disponibilização do projeto. Este procedimento garante a instalação do banco de dados durante a primeira execução do sistema.
```
<!-- 			<property name="hibernate.hbm2ddl.auto" value="create-drop" /> -->
```

> - Pode-se configurar a aplicação para não exibir os scritps SQL durante a execução do sistema, alterando o valor da propriedade.

```
 			<property name="hibernate.show_sql" value="false" /> 
```


## Configuração do Jboss (arquivo "standalone.xml")

A configuração do Jboss é feita basicamente em um único arquivo de propriedades, o 'standalone.xml', para ajustar a conexão com o banco de dados e para configurar os parâmetros de autenticação e segurança, conforme os seguintes passos:

- <i class="icon-pencil"></i> Criar o datasource: O data source precisa definir o jndi-name="java:/datasources/GOGDSPostreSQL" e as configurações de conexão com o banco de dados.

> - Para configurar o datasource no Jboss 7.1.1 será necessário criar e configurar um "module" para o funcionamento do driver do Banco de Dados ('jar' contendo as classes para acesso ao banco).

```xml
                <datasource jndi-name="java:/datasources/GOGDSPostreSQL" pool-name="GOGDSPostreSQL" enabled="true" use-java-context="true" use-ccm="true">
                    <connection-url>jdbc:postgresql://localhost:5432/GOG</connection-url>
                    <driver>org.postgresql</driver>
                    <transaction-isolation>TRANSACTION_READ_COMMITTED</transaction-isolation>
                    <pool>
                        <min-pool-size>5</min-pool-size>
                        <max-pool-size>50</max-pool-size>
                        <prefill>true</prefill>
                        <use-strict-min>false</use-strict-min>
                        <flush-strategy>FailingConnectionOnly</flush-strategy>
                    </pool>
                    <security>
                        <user-name>java</user-name>
                        <password>java</password>
                    </security>
                    <timeout>
                        <set-tx-query-timeout>true</set-tx-query-timeout>
                        <blocking-timeout-millis>5000</blocking-timeout-millis>
                        <idle-timeout-minutes>15</idle-timeout-minutes>
                    </timeout>
                    <statement>
                        <track-statements>false</track-statements>
                        <prepared-statement-cache-size>100</prepared-statement-cache-size>
                        <share-prepared-statements>true</share-prepared-statements>
                    </statement>
                </datasource>
                <drivers>
                    <driver name="org.postgresql" module="org.postgresql">
                        <driver-class>org.postgresql.Driver</driver-class>
                    </driver>
                    <driver name="JTDS" module="net.sourceforge.jtds">
                        <driver-class>net.sourceforge.jtds.jdbc.Driver</driver-class>
                    </driver>
                </drivers>
```


- <i class="icon-pencil"></i> Criar o driver referenciado no datasource: O driver para o Postgresql deve referenciar o módulo a ser carregado com o necessário arquivo '*.jar' de conexão.
- <i class="icon-pencil"></i> Criar o security domain - configuração de autenticação

```xml
<security-domain name="OuvidoriaSecurityDomain">
	<authentication>
		<login-module code="br.com.xti.ouvidoria.security.OuvidoriaLoginModule" flag="required"/>
	</authentication>
</security-domain>
```


## Executar carga inicial

A carga inicial do sistema, com o povoamento dos dados das tabelas de domínio utilizadas no sistema, deve ser realizada com a execução do script disponibilizado no arquivo src/main/resources/ScriptCargaDominio.sql


## Ajustar as configurações
### Criar as views sql utilizadas pela aplicação
* Deletar as tabelas criadas na execução da DLL durante o primeiro deploy
```sql
DROP TABLE vwestatisticasmanifestacao;
DROP TABLE vwultimotramite;
```
- Executar o script disponibilizado nos arquivos listados a seguir, para criação das views que serão utilizadas:
  - src/main/resources/CREATE VwEstatisticasManifestacao.sql 
  - src/main/resources/CREATE vwUltimoTramite.sql


### Ajustar a tabela de parâmetros da aplicação
A tabela 'TbPreferenciaSistema' deve ser ajustada para configuração de alguns parâmetros da aplicação. 
```sql
INSERT INTO TbPreferenciaSistema
	(idPreferenciaSistema, nomeOuvidoria, emailOuvidoria, hostEmail, portaEmail, usuarioEmail, 
	senhaEmail, sslEmail, encerrarTramiteEncaminhada, retornarTramiteOuvidoria, ctlPrazoManifSoluc,
	RespostasImediatas, prazoEntrada, prazoAreaSolucionadora, prazoRespostaCidadao)
VALUES 
	(1, 'Ouvidoria MinC', 'naoresponda.ouvidoria@cultura.gov.br', '10.0.0.54', 25, 'ouvidoria@cultura.gov.br',
	'', '2', '1', '1', '1', 
	'1', 1, 28, 1);
```
