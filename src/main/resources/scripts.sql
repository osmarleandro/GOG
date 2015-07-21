-- Versão:	1.2.x
-- Autor:	Samuel Correia Guimarães
-- Data:	18/12/2014

USE [BDOuvidoria]
GO

INSERT INTO [dbo].[tbFuncionalidade] ([idFuncionalidade] ,[dsFuncionalidade]) VALUES (43 ,'Manter Questionário')
GO

ALTER TABLE [dbo].[tbManifestacao] ADD tpManifestante char(1);
GO

EXEC sp_rename 'tbEncaminhamento.idUnidadeEnvio' , 'idUnidadeRecebeu', 'COLUMN'
GO

EXEC sp_rename 'tbEncaminhamento.idUsuarioOuvidor' , 'idUsuarioEnviou', 'COLUMN'
GO

ALTER TABLE [dbo].[tbEncaminhamento] ADD idUnidadeEnviou int not null default 1;
GO

ALTER TABLE [dbo].[tbUnidade] ADD stEncaminharOutrasAreas char(1) not null default '2';
GO

ALTER TABLE [dbo].[tbTramite] ADD stNotificacao char(1) not null default '2';
GO

ALTER TABLE [dbo].[tbTramite] ADD stTramitePublico char(1) not null default '2';
GO

ALTER TABLE [dbo].[tbComunicacaoExterna] ADD stComunicacaoPublica char(1) not null default '2';
GO

ALTER TABLE [dbo].[tbManifestacao] ADD CONSTRAINT UK_NR_MANIFESTACAO UNIQUE (nrManifestacao); 
GO

ALTER TABLE [dbo].[TbComentarioQuestionario]  WITH CHECK ADD  CONSTRAINT [FK_Manifestacao] FOREIGN KEY([idComentario])
REFERENCES [dbo].[tbManifestacao] ([idManifestacao])
GO

ALTER TABLE [dbo].[TbComentarioQuestionario] CHECK CONSTRAINT [FK_Manifestacao]
GO

ALTER TABLE [dbo].[tbClassificacao_tbUnidade]  WITH CHECK ADD  CONSTRAINT [FK_Classificacao] FOREIGN KEY([TbClassificacao_idClassificacao])
REFERENCES [dbo].[tbClassificacao] ([idClassificacao])
GO

ALTER TABLE [dbo].[tbClassificacao_tbUnidade] CHECK CONSTRAINT [FK_Classificacao]
GO

DROP TABLE [dbo].[tbAjuda]
GO

DROP TABLE [dbo].[tbCep]
GO

DROP TABLE [dbo].[tbFiltroSpam]
GO

DROP TABLE [dbo].[tbPerfilxGrupo]
GO

DROP TABLE [dbo].[tbPrazoEsic]
GO

DROP TABLE [dbo].[tbResposta]
GO

