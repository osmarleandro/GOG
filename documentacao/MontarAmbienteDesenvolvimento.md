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
2. [Configurar o Jboss](documentacao/MontarAmbienteDesenvolvimento_ConfiguracaoJboss.md)
   * Criar o datasource
   * Configuração dos drivers de conexão
   * Configuração complementar - domínio de segurança e autenticação
3. [Configurar o Banco de Dados](documentacao/MontarAmbienteDesenvolvimento_ConfiguracaoSGDB.md)
4. [Executar carga inicial dos dados](documentacao/MontarAmbienteDesenvolvimento_CargaInicialDados.md)
   * Ajustar as configurações

