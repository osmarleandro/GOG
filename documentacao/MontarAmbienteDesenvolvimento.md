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

# Ambiente de Desenvolvimento
Neste documento apresentamos informações necessárias para realizar a montagem, configuração e utilização do ambiente de desenvolvimento do sistema GOG. 

As versões dos pacotes de instalação foram expressamente declaradas neste documentos com o simples objetivo de refletir a realidade vivenciada pela equipe de desenvolvimento do MinC. A intenção é garantir que este guia possa conduzir seu leitor a uma instalação de sucesso; entretanto, nada impede que o leitor tente utilizar novas versões das aplicações ou pacotes aqui citados.


## Montagem do ambiente de desenvolvimento

<div id='diagram' />

1. [Preparação do Ambiente](documentacao/MontarAmbienteDesenvolvimento_PreparacaoAmbiente.md)
   * Configuração do sistema operacional
     * Instalação do Git
     * Instalação do Java JDK 8
   * Instalação do JBoss AS 7.1.1.Final
   * Instalação do Eclipse
     * Instalar o plugin Jbosstools
     * Configurar projeto no Eclipse
2. Configurar o Banco de Dados
3. [Configurar o Jboss](documentacao/MontarAmbienteDesenvolvimento_ConfiguracaoJboss.md)
4. Executar carga inicial
   * Ajustar as configurações


## [Preparação do Ambiente](documentacao/MontarAmbienteDesenvolvimento_PreparacaoAmbiente.md)

## Configuração do Banco de Dados
O projeto GOG utiliza para o mapeamento objeto relacional - ORM - a especificação JPA (com hibernate), mantendo o mapeamento objeto relacional mais transparente. 

Com o mapeamento JPA, podemos utilizar qualquer gerenciador de banco de dados, bastando ajustar os drivers e os arquivos de configuração. Com isto, podemos utilizar o SGBD Postgresql como Banco de Dados do projeto GOG.

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

## [Configurar o Jboss](documentacao/MontarAmbienteDesenvolvimento_ConfiguracaoJboss.md)


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

#### Tabela 'TbPreferenciaSistema' 

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

A tabela 'TbPreferenciaSistema' também pode ser editada internamente no sistema, utilizando-se de um usuário cadastrado como "Administrador" e acessando o menu "Sistema" - "Preferências do Sistema".

#### Tabela 'tbParametro'

A tabela 'TbParametro' é utilizada para configuração mais alguns parâmetros da aplicação. 

```sql
INSERT INTO tbparametro (nmparametro, vlrparametro) VALUES ( 'Sequencial da Manifestação', '1');
INSERT INTO tbparametro (nmparametro, vlrparametro) VALUES ( 'Ano atual', '2015');
INSERT INTO tbparametro (nmparametro, vlrparametro) VALUES ( 'Diretório para onde serão enviados os arquivos anexados', '/var/arquivos/');
INSERT INTO tbparametro (nmparametro, vlrparametro) VALUES ( 'URL base do Sistema', 'http://ouvidoria.ouvidoria.gov.br');
INSERT INTO tbparametro (nmparametro, vlrparametro) VALUES ( 'Email do Monitoramento', 'ouvidoria@cultura.gov.br');
```

> A aplicação vai utilizar estes valores para garantir a realização de algumas funcionalidades, como:
> - geração do numero da manifestação
> - gerenciamento de arquivos anexados
> - montagem da URL e links para manifestações nas mensagens de e-mail

### Realizar a configuração/criação de usuários do sistema
A tabela 'tbUsuario' deve ser carregada com um usuário com função de Administrador. 
Esta configuração é oferecida no script de carga de dados iniciais (disponibilizado no arquivo src/main/resources/ScriptCargaDominio.sql), pelo seguinte trecho:

```sql
--tbUsuario
/*
Insere um usuário Administrador (tpFuncao=5) com a senha 123456 e login = 'root'. Este usuário deve ser criado para permitir a configuração interna do sistema,
como a inclusão de novos usuários.
*/
INSERT INTO tbUsuario 
	(idUsuario, nmUsuario, stStatus, eeEmail, idUnidade, tpUsuario, nmLogin, 
	numTelefone, nmSenha, tpFuncao) 
VALUES 
	(1, 'root', 1, 'email@email.com', 1, '1', 'root', 
	'(61)99999999', 'E10ADC3949BA59ABBE56E057F20F883E', '5');

```

> **Nota:** 

> - Um usuário com função de Administrador tem permissão de editar o cadastro de usuários do sistema e de acessar as funcionalidades disponíveis.

