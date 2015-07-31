GOG Documentação 
================
Aqui algumas informações sobre a configuração e montagem dos ambientes para utilização do sistema GOG.

---------------

## Montagem do ambiente de desenvolvimento


```flow
st=>start: Iniciar
e=>end
op=>operation: Configurar o Banco de Dados
op0=>operation: Configurar o projeto no Eclipse
op1=>operation: Configurar o Jboss
op2=>operation: Executar carga inicial
op3=>operation: Ajustar as configurações
cond=>condition: Aplicação Montada?

st->op0->op->op1->cond
cond(yes)->op2->op3->e
cond(no)->op
```

- Configurar o projeto no Eclipse
- Configurar o Banco de Dados
- Configurar o Jboss
- Executar carga inicial
- Ajustar as configurações




## Configuração do projeto no Eclipse
O projeto foi desenvolvido em Java, com uso do Maven. O arquivo "pom.xml" pode ser adequamente utilizado para importar o projeto em um IDE.
No Eclipse basta solicitar a importação de um novo projeto (Import ==> Import Existing Maven Projects) e apontar para a raiz do projeto.

## Configuração do Banco de Dados
Inicialmente, o projeto GOG foi desenvolvido para a plataforma SQLServer, utilizando a API EclipseLink para o mapeamento objeto relacional - ORM.
A versão mais atual do projeto passou a utilizar JPA (com hibernate), mantendo o mapeamento objeto relacional mais transparente.
Com isto, podemos utilizar o SGBD Postgresql como Banco de Dados do projeto GOG.

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

> - A criação da DLL do banco de dados pode ser comentada no arquivo de persistence, após a primeira disponibilização do projeto
```
<!-- 			<property name="hibernate.hbm2ddl.auto" value="create-drop" /> -->
```

> - Pode-se configurar também para não exibir os scritps SQL durante a execução do sistema, alterando o valor da propriedade.

```
 			<property name="hibernate.show_sql" value="false" /> 
```


## Configuração do Jboss (arquivo "standalone.xml")

A configuração do Jboss é feita basicamente em um único arquivo de propriedades, o 'standalone.xml', para ajustar a conexão com o banco de dados e para configurar os parâmetros de autenticação e segurança, conforme os seguintes passos:

- <i class="icon-pencil"></i> Criar o datasource
O data source precisar definir o jndi-name="java:/datasources/GOGDSPostreSQL" e as configurações de conexão com o banco de dados.

> - Para configurar o datasource no Jboss 7.1.1 será necessário criar e configurar um "module" para o funcionamento do driver do Banco de Dados ('jar' contendo as classes para acesso ao banco).

```
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


- <i class="icon-pencil"></i> Criar o driver referenciado no datasource
O driver para o Postgresql deve referenciar o módulo a ser carregado com o necessário arquivo '*.jar' de conexão.
- <i class="icon-pencil"></i> Criar o security domain - configuração de autenticação

```
<security-domain name="OuvidoriaSecurityDomain">
	<authentication>
		<login-module code="br.com.xti.ouvidoria.security.OuvidoriaLoginModule" flag="required"/>
	</authentication>
</security-domain>
```


