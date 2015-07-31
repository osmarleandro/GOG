--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.4
-- Dumped by pg_dump version 9.3.4
-- Started on 2014-08-01 11:16:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

DROP DATABASE ouvidoria;
--
-- TOC entry 3387 (class 1262 OID 31181)
-- Name: ouvidoria; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE ouvidoria WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE ouvidoria OWNER TO postgres;

\connect ouvidoria

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 267 (class 3079 OID 12617)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 267
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 171 (class 1259 OID 32441)
-- Name: tbajuda; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbajuda (
    idajuda integer NOT NULL,
    dsajuda character varying(255),
    idgrupo integer,
    nmcategoriaajuda character varying(255)
);


ALTER TABLE public.tbajuda OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 32439)
-- Name: tbajuda_idajuda_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbajuda_idajuda_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbajuda_idajuda_seq OWNER TO postgres;

--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 170
-- Name: tbajuda_idajuda_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbajuda_idajuda_seq OWNED BY tbajuda.idajuda;


--
-- TOC entry 173 (class 1259 OID 32452)
-- Name: tbanexo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbanexo (
    idanexo integer NOT NULL,
    dscaminhoanexo character varying(255),
    nmanexo character varying(255)
);


ALTER TABLE public.tbanexo OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 32450)
-- Name: tbanexo_idanexo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbanexo_idanexo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbanexo_idanexo_seq OWNER TO postgres;

--
-- TOC entry 3392 (class 0 OID 0)
-- Dependencies: 172
-- Name: tbanexo_idanexo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbanexo_idanexo_seq OWNED BY tbanexo.idanexo;


--
-- TOC entry 175 (class 1259 OID 32463)
-- Name: tbareaentrada; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbareaentrada (
    idareaentrada integer NOT NULL,
    nmareaentrada character varying(255)
);


ALTER TABLE public.tbareaentrada OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 32461)
-- Name: tbareaentrada_idareaentrada_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbareaentrada_idareaentrada_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbareaentrada_idareaentrada_seq OWNER TO postgres;

--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 174
-- Name: tbareaentrada_idareaentrada_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbareaentrada_idareaentrada_seq OWNED BY tbareaentrada.idareaentrada;


--
-- TOC entry 177 (class 1259 OID 32471)
-- Name: tbaviso; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbaviso (
    idavisos integer NOT NULL,
    dtinicioaviso timestamp without time zone,
    dtfimaviso timestamp without time zone,
    dstitulo character varying(255),
    dsconteudo character varying(255),
    idusuario integer
);


ALTER TABLE public.tbaviso OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 32469)
-- Name: tbaviso_idavisos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbaviso_idavisos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbaviso_idavisos_seq OWNER TO postgres;

--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 176
-- Name: tbaviso_idavisos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbaviso_idavisos_seq OWNED BY tbaviso.idavisos;


--
-- TOC entry 178 (class 1259 OID 32480)
-- Name: tbcep; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbcep (
    cdcep integer NOT NULL,
    sguf character varying(255),
    nmlocalidade character varying(255),
    nmlogradouro character varying(255),
    nmbairro character varying(255)
);


ALTER TABLE public.tbcep OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 32490)
-- Name: tbclassificacao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbclassificacao (
    idclassificacao integer NOT NULL,
    dsclassificacao character varying(255)
);


ALTER TABLE public.tbclassificacao OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 32488)
-- Name: tbclassificacao_idclassificacao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbclassificacao_idclassificacao_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbclassificacao_idclassificacao_seq OWNER TO postgres;

--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 179
-- Name: tbclassificacao_idclassificacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbclassificacao_idclassificacao_seq OWNED BY tbclassificacao.idclassificacao;


--
-- TOC entry 261 (class 1259 OID 32875)
-- Name: tbclassificacao_tbsubclassificacao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbclassificacao_tbsubclassificacao (
    tbclassificacao_idclassificacao integer NOT NULL,
    tbsubclassificacaocollection_idsubclassificacao integer NOT NULL
);


ALTER TABLE public.tbclassificacao_tbsubclassificacao OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 32880)
-- Name: tbclassificacao_tbunidade; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbclassificacao_tbunidade (
    tbclassificacao_idclassificacao integer NOT NULL,
    tbunidadecollection_idunidade integer NOT NULL
);


ALTER TABLE public.tbclassificacao_tbunidade OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 32496)
-- Name: tbcomentarioquestionario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbcomentarioquestionario (
    idcomentario integer NOT NULL,
    dscomentario character varying(255)
);


ALTER TABLE public.tbcomentarioquestionario OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 32503)
-- Name: tbcomunicacaoexterna; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbcomunicacaoexterna (
    idcomunicacaoexterna integer NOT NULL,
    idusuario integer,
    dtcomunicacao timestamp without time zone,
    dscomunicacao text,
    idmanifestacao integer,
    strespostafinal character varying(255)
);


ALTER TABLE public.tbcomunicacaoexterna OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 32501)
-- Name: tbcomunicacaoexterna_idcomunicacaoexterna_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbcomunicacaoexterna_idcomunicacaoexterna_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbcomunicacaoexterna_idcomunicacaoexterna_seq OWNER TO postgres;

--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 182
-- Name: tbcomunicacaoexterna_idcomunicacaoexterna_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbcomunicacaoexterna_idcomunicacaoexterna_seq OWNED BY tbcomunicacaoexterna.idcomunicacaoexterna;


--
-- TOC entry 185 (class 1259 OID 32514)
-- Name: tbcomunicacaoexternaxanexo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbcomunicacaoexternaxanexo (
    idcomunicacaoexternaxanexo integer NOT NULL,
    idcomunicacaoexterna integer,
    idanexo integer
);


ALTER TABLE public.tbcomunicacaoexternaxanexo OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 32512)
-- Name: tbcomunicacaoexternaxanexo_idcomunicacaoexternaxanexo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbcomunicacaoexternaxanexo_idcomunicacaoexternaxanexo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbcomunicacaoexternaxanexo_idcomunicacaoexternaxanexo_seq OWNER TO postgres;

--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 184
-- Name: tbcomunicacaoexternaxanexo_idcomunicacaoexternaxanexo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbcomunicacaoexternaxanexo_idcomunicacaoexternaxanexo_seq OWNED BY tbcomunicacaoexternaxanexo.idcomunicacaoexternaxanexo;


--
-- TOC entry 187 (class 1259 OID 32522)
-- Name: tbemailautomatizado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbemailautomatizado (
    idemailautomatizado integer NOT NULL,
    tpemail character varying(255) NOT NULL,
    nmtituloemail character varying(200) NOT NULL,
    dsemail text NOT NULL
);


ALTER TABLE public.tbemailautomatizado OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 32520)
-- Name: tbemailautomatizado_idemailautomatizado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbemailautomatizado_idemailautomatizado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbemailautomatizado_idemailautomatizado_seq OWNER TO postgres;

--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 186
-- Name: tbemailautomatizado_idemailautomatizado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbemailautomatizado_idemailautomatizado_seq OWNED BY tbemailautomatizado.idemailautomatizado;


--
-- TOC entry 189 (class 1259 OID 32533)
-- Name: tbencaminhamento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbencaminhamento (
    idencaminhamento integer NOT NULL,
    dtenviotramite timestamp without time zone,
    dtrespostatramite timestamp without time zone,
    dsdescricao text,
    stencaminhamento character varying(255),
    idmanifestacao integer,
    idunidadeenvio integer,
    idusuarioouvidor integer,
    dtcriacaoencaminhamento timestamp without time zone
);


ALTER TABLE public.tbencaminhamento OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 32531)
-- Name: tbencaminhamento_idencaminhamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbencaminhamento_idencaminhamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbencaminhamento_idencaminhamento_seq OWNER TO postgres;

--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 188
-- Name: tbencaminhamento_idencaminhamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbencaminhamento_idencaminhamento_seq OWNED BY tbencaminhamento.idencaminhamento;


--
-- TOC entry 191 (class 1259 OID 32544)
-- Name: tbencaminhamentopadronizado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbencaminhamentopadronizado (
    idencaminhamentopadronizado integer NOT NULL,
    dstitulo character varying(255),
    dsconteudo character varying(255),
    dtcadastro timestamp without time zone
);


ALTER TABLE public.tbencaminhamentopadronizado OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 32542)
-- Name: tbencaminhamentopadronizado_idencaminhamentopadronizado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbencaminhamentopadronizado_idencaminhamentopadronizado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbencaminhamentopadronizado_idencaminhamentopadronizado_seq OWNER TO postgres;

--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 190
-- Name: tbencaminhamentopadronizado_idencaminhamentopadronizado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbencaminhamentopadronizado_idencaminhamentopadronizado_seq OWNED BY tbencaminhamentopadronizado.idencaminhamentopadronizado;


--
-- TOC entry 193 (class 1259 OID 32555)
-- Name: tbencaminhamentoxanexo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbencaminhamentoxanexo (
    idencaminhamentoxanexo integer NOT NULL,
    idencaminhamento integer,
    idanexo integer
);


ALTER TABLE public.tbencaminhamentoxanexo OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 32553)
-- Name: tbencaminhamentoxanexo_idencaminhamentoxanexo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbencaminhamentoxanexo_idencaminhamentoxanexo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbencaminhamentoxanexo_idencaminhamentoxanexo_seq OWNER TO postgres;

--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 192
-- Name: tbencaminhamentoxanexo_idencaminhamentoxanexo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbencaminhamentoxanexo_idencaminhamentoxanexo_seq OWNED BY tbencaminhamentoxanexo.idencaminhamentoxanexo;


--
-- TOC entry 195 (class 1259 OID 32563)
-- Name: tbfaixaetaria; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbfaixaetaria (
    idfaixaetaria integer NOT NULL,
    nmfaixaetaria character varying(255)
);


ALTER TABLE public.tbfaixaetaria OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 32561)
-- Name: tbfaixaetaria_idfaixaetaria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbfaixaetaria_idfaixaetaria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbfaixaetaria_idfaixaetaria_seq OWNER TO postgres;

--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 194
-- Name: tbfaixaetaria_idfaixaetaria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbfaixaetaria_idfaixaetaria_seq OWNED BY tbfaixaetaria.idfaixaetaria;


--
-- TOC entry 197 (class 1259 OID 32571)
-- Name: tbfiltropersonalizado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbfiltropersonalizado (
    idfiltropersonalizado integer NOT NULL,
    nmfiltropersonalizado character varying(255),
    idusuario integer,
    dsparticao character varying(255)
);


ALTER TABLE public.tbfiltropersonalizado OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 32569)
-- Name: tbfiltropersonalizado_idfiltropersonalizado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbfiltropersonalizado_idfiltropersonalizado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbfiltropersonalizado_idfiltropersonalizado_seq OWNER TO postgres;

--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 196
-- Name: tbfiltropersonalizado_idfiltropersonalizado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbfiltropersonalizado_idfiltropersonalizado_seq OWNED BY tbfiltropersonalizado.idfiltropersonalizado;


--
-- TOC entry 199 (class 1259 OID 32582)
-- Name: tbfiltrospam; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbfiltrospam (
    idfiltrosspam integer NOT NULL,
    tpfiltro character varying(255),
    dsfiltro character varying(255)
);


ALTER TABLE public.tbfiltrospam OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 32580)
-- Name: tbfiltrospam_idfiltrosspam_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbfiltrospam_idfiltrosspam_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbfiltrospam_idfiltrosspam_seq OWNER TO postgres;

--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 198
-- Name: tbfiltrospam_idfiltrosspam_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbfiltrospam_idfiltrosspam_seq OWNED BY tbfiltrospam.idfiltrosspam;


--
-- TOC entry 201 (class 1259 OID 32593)
-- Name: tbfuncionalidade; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbfuncionalidade (
    idfuncionalidade integer NOT NULL,
    dsfuncionalidade character varying(255)
);


ALTER TABLE public.tbfuncionalidade OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 32591)
-- Name: tbfuncionalidade_idfuncionalidade_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbfuncionalidade_idfuncionalidade_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbfuncionalidade_idfuncionalidade_seq OWNER TO postgres;

--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 200
-- Name: tbfuncionalidade_idfuncionalidade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbfuncionalidade_idfuncionalidade_seq OWNED BY tbfuncionalidade.idfuncionalidade;


--
-- TOC entry 203 (class 1259 OID 32601)
-- Name: tbgrauinstrucao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbgrauinstrucao (
    idgrauinstrucao integer NOT NULL,
    nmgrauinstrucao character varying(255)
);


ALTER TABLE public.tbgrauinstrucao OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 32599)
-- Name: tbgrauinstrucao_idgrauinstrucao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbgrauinstrucao_idgrauinstrucao_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbgrauinstrucao_idgrauinstrucao_seq OWNER TO postgres;

--
-- TOC entry 3406 (class 0 OID 0)
-- Dependencies: 202
-- Name: tbgrauinstrucao_idgrauinstrucao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbgrauinstrucao_idgrauinstrucao_seq OWNED BY tbgrauinstrucao.idgrauinstrucao;


--
-- TOC entry 205 (class 1259 OID 32609)
-- Name: tbgrupo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbgrupo (
    idgrupo integer NOT NULL,
    nmgrupo character varying(255),
    idgrupopai integer
);


ALTER TABLE public.tbgrupo OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 32607)
-- Name: tbgrupo_idgrupo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbgrupo_idgrupo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbgrupo_idgrupo_seq OWNER TO postgres;

--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 204
-- Name: tbgrupo_idgrupo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbgrupo_idgrupo_seq OWNED BY tbgrupo.idgrupo;


--
-- TOC entry 207 (class 1259 OID 32617)
-- Name: tblogoperacao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tblogoperacao (
    idlogoperacoes integer NOT NULL,
    dsoperacao character varying(255),
    idusuario integer,
    dtdatalog timestamp without time zone,
    tpoperacao character varying(255)
);


ALTER TABLE public.tblogoperacao OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 32615)
-- Name: tblogoperacao_idlogoperacoes_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tblogoperacao_idlogoperacoes_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblogoperacao_idlogoperacoes_seq OWNER TO postgres;

--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 206
-- Name: tblogoperacao_idlogoperacoes_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tblogoperacao_idlogoperacoes_seq OWNED BY tblogoperacao.idlogoperacoes;


--
-- TOC entry 209 (class 1259 OID 32628)
-- Name: tbmanifestacao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbmanifestacao (
    idmanifestacao integer NOT NULL,
    nrmanifestacao integer,
    dssenha character varying(255),
    sisigilo character varying(255),
    nmpessoa character varying(255),
    eeemailsecundario character varying(255),
    tpsexo character varying(255),
    stresposta character varying(255),
    enendereco character varying(255),
    nrendereco integer,
    dscomplemento character varying(255),
    dsbairro character varying(255),
    dstextomanifestacao character varying(255),
    ststatusmanifestacao character varying(255),
    idprioridade integer,
    idareaentrada integer,
    idmeioentrada integer,
    idfaixaetaria integer,
    idtipomanifestacao integer,
    idpais integer,
    idusuariomanifestante integer,
    dtcadastro timestamp without time zone,
    dtultimaatualizacao timestamp without time zone,
    tpraca character varying(255),
    idmeioresposta integer,
    nrtelefone character varying(255),
    nrcep character varying(255),
    nrfax character varying(255),
    eeemailusuario character varying(255),
    dtfechamento timestamp without time zone,
    stspam character varying(255),
    idusuarioanalisador integer,
    nrcelular character varying(255),
    nrtelefone2 character varying(255),
    iduf integer,
    dslocalidade character varying(255),
    nrcpfcnpj character varying(255),
    idgrauinstrucao integer,
    ststatusocultacao character varying(255),
    dsmotivoocultacao character varying(255),
    idquestionario integer,
    nrprocesso character varying(255),
    nrpronac character varying(255),
    idusuariocriador integer,
    tipopessoa character varying(255),
    idusuarioreativou integer,
    idusuariobloqueou integer
);


ALTER TABLE public.tbmanifestacao OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 32626)
-- Name: tbmanifestacao_idmanifestacao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbmanifestacao_idmanifestacao_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbmanifestacao_idmanifestacao_seq OWNER TO postgres;

--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 208
-- Name: tbmanifestacao_idmanifestacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbmanifestacao_idmanifestacao_seq OWNED BY tbmanifestacao.idmanifestacao;


--
-- TOC entry 260 (class 1259 OID 32870)
-- Name: tbmanifestacao_tbclassificacao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbmanifestacao_tbclassificacao (
    tbmanifestacao_idmanifestacao integer NOT NULL,
    tbclassificacao_idclassificacao integer NOT NULL
);


ALTER TABLE public.tbmanifestacao_tbclassificacao OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 32885)
-- Name: tbmanifestacao_tbsubclassificacao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbmanifestacao_tbsubclassificacao (
    tbmanifestacao_idmanifestacao integer NOT NULL,
    tbsubclassificacao_idsubclassificacao integer NOT NULL
);


ALTER TABLE public.tbmanifestacao_tbsubclassificacao OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 32890)
-- Name: tbmanifestacao_unidadeareasolucionadora; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbmanifestacao_unidadeareasolucionadora (
    idmanifestacao integer NOT NULL,
    idunidade integer NOT NULL
);


ALTER TABLE public.tbmanifestacao_unidadeareasolucionadora OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 32639)
-- Name: tbmanifestacaoxanexo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbmanifestacaoxanexo (
    idmanifestacaoxanexo integer NOT NULL,
    idmanifestacao integer,
    idanexo integer
);


ALTER TABLE public.tbmanifestacaoxanexo OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 32637)
-- Name: tbmanifestacaoxanexo_idmanifestacaoxanexo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbmanifestacaoxanexo_idmanifestacaoxanexo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbmanifestacaoxanexo_idmanifestacaoxanexo_seq OWNER TO postgres;

--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 210
-- Name: tbmanifestacaoxanexo_idmanifestacaoxanexo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbmanifestacaoxanexo_idmanifestacaoxanexo_seq OWNED BY tbmanifestacaoxanexo.idmanifestacaoxanexo;


--
-- TOC entry 213 (class 1259 OID 32647)
-- Name: tbmeioentrada; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbmeioentrada (
    idmeioentrada integer NOT NULL,
    nmmeioentrada character varying(255)
);


ALTER TABLE public.tbmeioentrada OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 32645)
-- Name: tbmeioentrada_idmeioentrada_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbmeioentrada_idmeioentrada_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbmeioentrada_idmeioentrada_seq OWNER TO postgres;

--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 212
-- Name: tbmeioentrada_idmeioentrada_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbmeioentrada_idmeioentrada_seq OWNED BY tbmeioentrada.idmeioentrada;


--
-- TOC entry 215 (class 1259 OID 32655)
-- Name: tbmeioresposta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbmeioresposta (
    idmeioresposta integer NOT NULL,
    nmmeioresposta character varying(255)
);


ALTER TABLE public.tbmeioresposta OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 32653)
-- Name: tbmeioresposta_idmeioresposta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbmeioresposta_idmeioresposta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbmeioresposta_idmeioresposta_seq OWNER TO postgres;

--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 214
-- Name: tbmeioresposta_idmeioresposta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbmeioresposta_idmeioresposta_seq OWNED BY tbmeioresposta.idmeioresposta;


--
-- TOC entry 217 (class 1259 OID 32663)
-- Name: tbmunicipio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbmunicipio (
    idmunicipio integer NOT NULL,
    iduf integer,
    nmmunicipio character varying(255)
);


ALTER TABLE public.tbmunicipio OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 32661)
-- Name: tbmunicipio_idmunicipio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbmunicipio_idmunicipio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbmunicipio_idmunicipio_seq OWNER TO postgres;

--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 216
-- Name: tbmunicipio_idmunicipio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbmunicipio_idmunicipio_seq OWNED BY tbmunicipio.idmunicipio;


--
-- TOC entry 219 (class 1259 OID 32671)
-- Name: tbpais; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbpais (
    idpais integer NOT NULL,
    nmpais character varying(255)
);


ALTER TABLE public.tbpais OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 32669)
-- Name: tbpais_idpais_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbpais_idpais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbpais_idpais_seq OWNER TO postgres;

--
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 218
-- Name: tbpais_idpais_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbpais_idpais_seq OWNED BY tbpais.idpais;


--
-- TOC entry 221 (class 1259 OID 32679)
-- Name: tbparametro; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbparametro (
    idparametro integer NOT NULL,
    nmparametro character varying(255),
    vlrparametro character varying(255)
);


ALTER TABLE public.tbparametro OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 32677)
-- Name: tbparametro_idparametro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbparametro_idparametro_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbparametro_idparametro_seq OWNER TO postgres;

--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 220
-- Name: tbparametro_idparametro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbparametro_idparametro_seq OWNED BY tbparametro.idparametro;


--
-- TOC entry 223 (class 1259 OID 32690)
-- Name: tbperfil; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbperfil (
    idperfil integer NOT NULL,
    tpperfil character varying(255),
    nmperfil character varying(255)
);


ALTER TABLE public.tbperfil OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 32688)
-- Name: tbperfil_idperfil_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbperfil_idperfil_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbperfil_idperfil_seq OWNER TO postgres;

--
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 222
-- Name: tbperfil_idperfil_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbperfil_idperfil_seq OWNED BY tbperfil.idperfil;


--
-- TOC entry 225 (class 1259 OID 32701)
-- Name: tbperfilxfuncionalidade; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbperfilxfuncionalidade (
    idperfilxfuncionalidade integer NOT NULL,
    idperfil integer,
    idfuncionalidade integer
);


ALTER TABLE public.tbperfilxfuncionalidade OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 32699)
-- Name: tbperfilxfuncionalidade_idperfilxfuncionalidade_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbperfilxfuncionalidade_idperfilxfuncionalidade_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbperfilxfuncionalidade_idperfilxfuncionalidade_seq OWNER TO postgres;

--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 224
-- Name: tbperfilxfuncionalidade_idperfilxfuncionalidade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbperfilxfuncionalidade_idperfilxfuncionalidade_seq OWNED BY tbperfilxfuncionalidade.idperfilxfuncionalidade;


--
-- TOC entry 227 (class 1259 OID 32709)
-- Name: tbperfilxgrupo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbperfilxgrupo (
    idperfilxgrupo integer NOT NULL,
    idperfil integer,
    idgrupo integer
);


ALTER TABLE public.tbperfilxgrupo OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 32707)
-- Name: tbperfilxgrupo_idperfilxgrupo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbperfilxgrupo_idperfilxgrupo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbperfilxgrupo_idperfilxgrupo_seq OWNER TO postgres;

--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 226
-- Name: tbperfilxgrupo_idperfilxgrupo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbperfilxgrupo_idperfilxgrupo_seq OWNED BY tbperfilxgrupo.idperfilxgrupo;


--
-- TOC entry 237 (class 1259 OID 32758)
-- Name: tbperguntaquestionario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbperguntaquestionario (
    idpergunta integer NOT NULL,
    dspergunta character varying(255),
    posicaopergunta integer,
    idquestionario integer
);


ALTER TABLE public.tbperguntaquestionario OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 32756)
-- Name: tbperguntaquestionario_idpergunta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbperguntaquestionario_idpergunta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbperguntaquestionario_idpergunta_seq OWNER TO postgres;

--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 236
-- Name: tbperguntaquestionario_idpergunta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbperguntaquestionario_idpergunta_seq OWNED BY tbperguntaquestionario.idpergunta;


--
-- TOC entry 229 (class 1259 OID 32717)
-- Name: tbprazoesic; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbprazoesic (
    idprazoesic integer NOT NULL,
    dtprazoesic timestamp without time zone,
    stprazoesic character varying(255),
    tpprazoesic character varying(255),
    idmanifestacao integer
);


ALTER TABLE public.tbprazoesic OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 32715)
-- Name: tbprazoesic_idprazoesic_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbprazoesic_idprazoesic_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbprazoesic_idprazoesic_seq OWNER TO postgres;

--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 228
-- Name: tbprazoesic_idprazoesic_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbprazoesic_idprazoesic_seq OWNED BY tbprazoesic.idprazoesic;


--
-- TOC entry 231 (class 1259 OID 32728)
-- Name: tbpreferenciasistema; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbpreferenciasistema (
    idpreferenciasistema integer NOT NULL,
    nomeouvidoria character varying(255),
    emailouvidoria character varying(255),
    hostemail character varying(255),
    portaemail integer,
    usuarioemail character varying(255),
    senhaemail character varying(255),
    sslemail character varying(255),
    encerrartramiteencaminhada character varying(255),
    retornartramiteouvidoria character varying(255),
    ctlprazomanifsoluc character varying(255),
    respostasimediatas character varying(255),
    prazoentrada integer,
    prazoareasolucionadora integer,
    prazorespostacidadao integer
);


ALTER TABLE public.tbpreferenciasistema OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 32726)
-- Name: tbpreferenciasistema_idpreferenciasistema_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbpreferenciasistema_idpreferenciasistema_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbpreferenciasistema_idpreferenciasistema_seq OWNER TO postgres;

--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 230
-- Name: tbpreferenciasistema_idpreferenciasistema_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbpreferenciasistema_idpreferenciasistema_seq OWNED BY tbpreferenciasistema.idpreferenciasistema;


--
-- TOC entry 233 (class 1259 OID 32739)
-- Name: tbprioridade; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbprioridade (
    idprioridade integer NOT NULL,
    nmprioridade character varying(255)
);


ALTER TABLE public.tbprioridade OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 32737)
-- Name: tbprioridade_idprioridade_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbprioridade_idprioridade_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbprioridade_idprioridade_seq OWNER TO postgres;

--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 232
-- Name: tbprioridade_idprioridade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbprioridade_idprioridade_seq OWNED BY tbprioridade.idprioridade;


--
-- TOC entry 235 (class 1259 OID 32747)
-- Name: tbquestionario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbquestionario (
    idquestionario integer NOT NULL,
    dtfinal date,
    dtinicio date,
    nmquestionario character varying(255),
    stquestionario character varying(255)
);


ALTER TABLE public.tbquestionario OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 32745)
-- Name: tbquestionario_idquestionario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbquestionario_idquestionario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbquestionario_idquestionario_seq OWNER TO postgres;

--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 234
-- Name: tbquestionario_idquestionario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbquestionario_idquestionario_seq OWNED BY tbquestionario.idquestionario;


--
-- TOC entry 241 (class 1259 OID 32774)
-- Name: tbrespostamanifestacao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbrespostamanifestacao (
    idrespostamanifestacao integer NOT NULL,
    dstituloresposta character varying(255),
    dsresposta character varying(255),
    dtcadastrorespostamanifestacao timestamp without time zone
);


ALTER TABLE public.tbrespostamanifestacao OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 32772)
-- Name: tbrespostamanifestacao_idrespostamanifestacao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbrespostamanifestacao_idrespostamanifestacao_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbrespostamanifestacao_idrespostamanifestacao_seq OWNER TO postgres;

--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 240
-- Name: tbrespostamanifestacao_idrespostamanifestacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbrespostamanifestacao_idrespostamanifestacao_seq OWNED BY tbrespostamanifestacao.idrespostamanifestacao;


--
-- TOC entry 239 (class 1259 OID 32766)
-- Name: tbrespostaquestionario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbrespostaquestionario (
    idresposta integer NOT NULL,
    dsresposta integer,
    idmanifestacao integer,
    idpergunta integer
);


ALTER TABLE public.tbrespostaquestionario OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 32764)
-- Name: tbrespostaquestionario_idresposta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbrespostaquestionario_idresposta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbrespostaquestionario_idresposta_seq OWNER TO postgres;

--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 238
-- Name: tbrespostaquestionario_idresposta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbrespostaquestionario_idresposta_seq OWNED BY tbrespostaquestionario.idresposta;


--
-- TOC entry 243 (class 1259 OID 32785)
-- Name: tbsubclassificacao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbsubclassificacao (
    idsubclassificacao integer NOT NULL,
    dssubclassificacao character varying(255)
);


ALTER TABLE public.tbsubclassificacao OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 32783)
-- Name: tbsubclassificacao_idsubclassificacao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbsubclassificacao_idsubclassificacao_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbsubclassificacao_idsubclassificacao_seq OWNER TO postgres;

--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 242
-- Name: tbsubclassificacao_idsubclassificacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbsubclassificacao_idsubclassificacao_seq OWNED BY tbsubclassificacao.idsubclassificacao;


--
-- TOC entry 245 (class 1259 OID 32793)
-- Name: tbtipomanifestacao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbtipomanifestacao (
    idtipomanifestacao integer NOT NULL,
    nmtipomanifestacao character varying(255),
    dstipomanifestacao character varying(255),
    prazoentrada integer,
    prazoareasolucionadora integer,
    prazorespostacidadao integer
);


ALTER TABLE public.tbtipomanifestacao OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 32791)
-- Name: tbtipomanifestacao_idtipomanifestacao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbtipomanifestacao_idtipomanifestacao_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbtipomanifestacao_idtipomanifestacao_seq OWNER TO postgres;

--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 244
-- Name: tbtipomanifestacao_idtipomanifestacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbtipomanifestacao_idtipomanifestacao_seq OWNED BY tbtipomanifestacao.idtipomanifestacao;


--
-- TOC entry 247 (class 1259 OID 32804)
-- Name: tbtramite; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbtramite (
    idtramite integer NOT NULL,
    dsdescricao text,
    dttramite timestamp without time zone,
    idencaminhamento integer,
    idusuarioemissor integer,
    idunidadeenvio integer,
    idusuarioreceptor integer,
    stretornada character varying(255)
);


ALTER TABLE public.tbtramite OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 32802)
-- Name: tbtramite_idtramite_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbtramite_idtramite_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbtramite_idtramite_seq OWNER TO postgres;

--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 246
-- Name: tbtramite_idtramite_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbtramite_idtramite_seq OWNED BY tbtramite.idtramite;


--
-- TOC entry 249 (class 1259 OID 32815)
-- Name: tbtramitexanexo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbtramitexanexo (
    idtramitexanexo integer NOT NULL,
    idtramite integer,
    idanexo integer
);


ALTER TABLE public.tbtramitexanexo OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 32813)
-- Name: tbtramitexanexo_idtramitexanexo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbtramitexanexo_idtramitexanexo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbtramitexanexo_idtramitexanexo_seq OWNER TO postgres;

--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 248
-- Name: tbtramitexanexo_idtramitexanexo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbtramitexanexo_idtramitexanexo_seq OWNED BY tbtramitexanexo.idtramitexanexo;


--
-- TOC entry 251 (class 1259 OID 32823)
-- Name: tbuf; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbuf (
    iduf integer NOT NULL,
    sguf character varying(255),
    nmuf character varying(255)
);


ALTER TABLE public.tbuf OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 32821)
-- Name: tbuf_iduf_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbuf_iduf_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbuf_iduf_seq OWNER TO postgres;

--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 250
-- Name: tbuf_iduf_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbuf_iduf_seq OWNED BY tbuf.iduf;


--
-- TOC entry 253 (class 1259 OID 32834)
-- Name: tbunidade; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbunidade (
    idunidade integer NOT NULL,
    nmunidade character varying(255),
    sgunidade character varying(255),
    eeemail character varying(255),
    stretornoouvidoria character varying(255),
    stvinculada character varying(255)
);


ALTER TABLE public.tbunidade OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 32832)
-- Name: tbunidade_idunidade_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbunidade_idunidade_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbunidade_idunidade_seq OWNER TO postgres;

--
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 252
-- Name: tbunidade_idunidade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbunidade_idunidade_seq OWNED BY tbunidade.idunidade;


--
-- TOC entry 255 (class 1259 OID 32845)
-- Name: tbunidadexmanifestacao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbunidadexmanifestacao (
    idunidademanifestacao integer NOT NULL,
    idunidade integer,
    idmanifestacao integer
);


ALTER TABLE public.tbunidadexmanifestacao OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 32843)
-- Name: tbunidadexmanifestacao_idunidademanifestacao_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbunidadexmanifestacao_idunidademanifestacao_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbunidadexmanifestacao_idunidademanifestacao_seq OWNER TO postgres;

--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 254
-- Name: tbunidadexmanifestacao_idunidademanifestacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbunidadexmanifestacao_idunidademanifestacao_seq OWNED BY tbunidadexmanifestacao.idunidademanifestacao;


--
-- TOC entry 257 (class 1259 OID 32853)
-- Name: tbusuario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbusuario (
    idusuario integer NOT NULL,
    nmusuario character varying(255),
    ststatus integer,
    eeemail character varying(255),
    idunidade integer,
    tpusuario character varying(255),
    nmlogin character varying(255),
    numtelefone character varying(255),
    nmsenha character varying(255),
    tpfuncao character varying(255)
);


ALTER TABLE public.tbusuario OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 32851)
-- Name: tbusuario_idusuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbusuario_idusuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbusuario_idusuario_seq OWNER TO postgres;

--
-- TOC entry 3433 (class 0 OID 0)
-- Dependencies: 256
-- Name: tbusuario_idusuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbusuario_idusuario_seq OWNED BY tbusuario.idusuario;


--
-- TOC entry 259 (class 1259 OID 32864)
-- Name: tbusuarioxperfil; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbusuarioxperfil (
    idusuarioperfil integer NOT NULL,
    idusuario integer,
    idperfil integer,
    dtativacao timestamp without time zone,
    dtdesativacao timestamp without time zone
);


ALTER TABLE public.tbusuarioxperfil OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 32862)
-- Name: tbusuarioxperfil_idusuarioperfil_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbusuarioxperfil_idusuarioperfil_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbusuarioxperfil_idusuarioperfil_seq OWNER TO postgres;

--
-- TOC entry 3434 (class 0 OID 0)
-- Dependencies: 258
-- Name: tbusuarioxperfil_idusuarioperfil_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbusuarioxperfil_idusuarioperfil_seq OWNED BY tbusuarioxperfil.idusuarioperfil;


--
-- TOC entry 265 (class 1259 OID 33034)
-- Name: vwestatisticasmanifestacao; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW vwestatisticasmanifestacao AS
        (        (        (        (        (        (        (        (        (         SELECT 1 AS codmetrica,
                                                                                    'Abertas hoje'::text AS dsmetrica,
                                                                                    count(m.idmanifestacao) AS qtdade
                                                                                   FROM tbmanifestacao m
                                                                                  WHERE (((m.ststatusmanifestacao)::text = '1'::text) AND ((m.dtcadastro)::date = (now())::date))
                                                                        UNION ALL
                                                                                 SELECT 2 AS codmetrica,
                                                                                    'Fechadas hoje'::text AS dsmetrica,
                                                                                    count(m.idmanifestacao) AS qtdade
                                                                                   FROM tbmanifestacao m
                                                                                  WHERE (((m.ststatusmanifestacao)::text = ANY ((ARRAY['4'::character varying, '5'::character varying])::text[])) AND ((m.dtcadastro)::date = (now())::date)))
                                                                UNION ALL
                                                                         SELECT 3 AS codmetrica,
                                                                            'Não encaminhadas'::text AS dsmetrica,
                                                                            count(m.idmanifestacao) AS qtdade
                                                                           FROM tbmanifestacao m
                                                                          WHERE ((m.ststatusmanifestacao)::text = '1'::text))
                                                        UNION ALL
                                                                 SELECT 4 AS codmetrica,
                                                                    'Total abertas'::text AS dsmetrica,
                                                                    count(m.idmanifestacao) AS qtdade
                                                                   FROM tbmanifestacao m
                                                                  WHERE ((m.ststatusmanifestacao)::text <> ALL ((ARRAY['4'::character varying, '5'::character varying])::text[])))
                                                UNION ALL
                                                         SELECT 5 AS codmetrica,
                                                            'Total de Manifestações'::text AS dsmetrica,
                                                            count(m.idmanifestacao) AS qtdade
                                                           FROM tbmanifestacao m)
                                        UNION ALL
                                                 SELECT 6 AS codmetrica,
                                                    'Nova'::text AS dsmetrica,
                                                    count(m.idmanifestacao) AS qtdade
                                                   FROM tbmanifestacao m
                                                  WHERE ((m.ststatusmanifestacao)::text = '1'::text))
                                UNION ALL
                                         SELECT 7 AS codmetrica,
                                            'Em andamento'::text AS dsmetrica,
                                            count(m.idmanifestacao) AS qtdade
                                           FROM tbmanifestacao m
                                          WHERE ((m.ststatusmanifestacao)::text = '2'::text))
                        UNION ALL
                                 SELECT 9 AS codmetrica,
                                    'Solucionada'::text AS dsmetrica,
                                    count(m.idmanifestacao) AS qtdade
                                   FROM tbmanifestacao m
                                  WHERE ((m.ststatusmanifestacao)::text = '4'::text))
                UNION ALL
                         SELECT 8 AS codmetrica,
                            'Encerrada'::text AS dsmetrica,
                            count(m.idmanifestacao) AS qtdade
                           FROM tbmanifestacao m
                          WHERE ((m.ststatusmanifestacao)::text = '5'::text))
        UNION ALL
                 SELECT 10 AS codmetrica,
                    'Encaminhada'::text AS dsmetrica,
                    count(m.idmanifestacao) AS qtdade
                   FROM (tbmanifestacao m
              JOIN tbencaminhamento enc ON ((enc.idmanifestacao = m.idmanifestacao)))
             WHERE (((m.ststatusmanifestacao)::text = ANY ((ARRAY['2'::character varying, '3'::character varying])::text[])) AND ((enc.stencaminhamento)::text = '1'::text)))
UNION ALL
         SELECT 11 AS codmetrica,
            'Retornada'::text AS dsmetrica,
            count(m.idmanifestacao) AS qtdade
           FROM (tbmanifestacao m
      JOIN tbencaminhamento enc ON ((enc.idmanifestacao = m.idmanifestacao)))
     WHERE (((m.ststatusmanifestacao)::text = ANY ((ARRAY['2'::character varying, '3'::character varying])::text[])) AND ((enc.stencaminhamento)::text = '2'::text));


ALTER TABLE public.vwestatisticasmanifestacao OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 33039)
-- Name: vwultimotramite; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW vwultimotramite AS
 SELECT ulttram.idmanifestacao,
    ulttram.idencaminhamento,
    ulttram.idtramite,
    t.idusuarioreceptor
   FROM (tbtramite t
   JOIN ( SELECT m.idmanifestacao,
            e.idencaminhamento,
            max(t_1.idtramite) AS idtramite
           FROM ((tbmanifestacao m
      JOIN tbencaminhamento e ON ((e.idmanifestacao = m.idmanifestacao)))
   JOIN tbtramite t_1 ON ((t_1.idencaminhamento = e.idencaminhamento)))
  GROUP BY m.idmanifestacao, e.idencaminhamento) ulttram ON ((ulttram.idtramite = t.idtramite)));


ALTER TABLE public.vwultimotramite OWNER TO postgres;

--
-- TOC entry 3006 (class 2604 OID 32444)
-- Name: idajuda; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbajuda ALTER COLUMN idajuda SET DEFAULT nextval('tbajuda_idajuda_seq'::regclass);


--
-- TOC entry 3007 (class 2604 OID 32455)
-- Name: idanexo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbanexo ALTER COLUMN idanexo SET DEFAULT nextval('tbanexo_idanexo_seq'::regclass);


--
-- TOC entry 3008 (class 2604 OID 32466)
-- Name: idareaentrada; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbareaentrada ALTER COLUMN idareaentrada SET DEFAULT nextval('tbareaentrada_idareaentrada_seq'::regclass);


--
-- TOC entry 3009 (class 2604 OID 32474)
-- Name: idavisos; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbaviso ALTER COLUMN idavisos SET DEFAULT nextval('tbaviso_idavisos_seq'::regclass);


--
-- TOC entry 3010 (class 2604 OID 32493)
-- Name: idclassificacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbclassificacao ALTER COLUMN idclassificacao SET DEFAULT nextval('tbclassificacao_idclassificacao_seq'::regclass);


--
-- TOC entry 3011 (class 2604 OID 32506)
-- Name: idcomunicacaoexterna; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbcomunicacaoexterna ALTER COLUMN idcomunicacaoexterna SET DEFAULT nextval('tbcomunicacaoexterna_idcomunicacaoexterna_seq'::regclass);


--
-- TOC entry 3012 (class 2604 OID 32517)
-- Name: idcomunicacaoexternaxanexo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbcomunicacaoexternaxanexo ALTER COLUMN idcomunicacaoexternaxanexo SET DEFAULT nextval('tbcomunicacaoexternaxanexo_idcomunicacaoexternaxanexo_seq'::regclass);


--
-- TOC entry 3013 (class 2604 OID 32525)
-- Name: idemailautomatizado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbemailautomatizado ALTER COLUMN idemailautomatizado SET DEFAULT nextval('tbemailautomatizado_idemailautomatizado_seq'::regclass);


--
-- TOC entry 3014 (class 2604 OID 32536)
-- Name: idencaminhamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbencaminhamento ALTER COLUMN idencaminhamento SET DEFAULT nextval('tbencaminhamento_idencaminhamento_seq'::regclass);


--
-- TOC entry 3015 (class 2604 OID 32547)
-- Name: idencaminhamentopadronizado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbencaminhamentopadronizado ALTER COLUMN idencaminhamentopadronizado SET DEFAULT nextval('tbencaminhamentopadronizado_idencaminhamentopadronizado_seq'::regclass);


--
-- TOC entry 3016 (class 2604 OID 32558)
-- Name: idencaminhamentoxanexo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbencaminhamentoxanexo ALTER COLUMN idencaminhamentoxanexo SET DEFAULT nextval('tbencaminhamentoxanexo_idencaminhamentoxanexo_seq'::regclass);


--
-- TOC entry 3017 (class 2604 OID 32566)
-- Name: idfaixaetaria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbfaixaetaria ALTER COLUMN idfaixaetaria SET DEFAULT nextval('tbfaixaetaria_idfaixaetaria_seq'::regclass);


--
-- TOC entry 3018 (class 2604 OID 32574)
-- Name: idfiltropersonalizado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbfiltropersonalizado ALTER COLUMN idfiltropersonalizado SET DEFAULT nextval('tbfiltropersonalizado_idfiltropersonalizado_seq'::regclass);


--
-- TOC entry 3019 (class 2604 OID 32585)
-- Name: idfiltrosspam; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbfiltrospam ALTER COLUMN idfiltrosspam SET DEFAULT nextval('tbfiltrospam_idfiltrosspam_seq'::regclass);


--
-- TOC entry 3020 (class 2604 OID 32596)
-- Name: idfuncionalidade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbfuncionalidade ALTER COLUMN idfuncionalidade SET DEFAULT nextval('tbfuncionalidade_idfuncionalidade_seq'::regclass);


--
-- TOC entry 3021 (class 2604 OID 32604)
-- Name: idgrauinstrucao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbgrauinstrucao ALTER COLUMN idgrauinstrucao SET DEFAULT nextval('tbgrauinstrucao_idgrauinstrucao_seq'::regclass);


--
-- TOC entry 3022 (class 2604 OID 32612)
-- Name: idgrupo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbgrupo ALTER COLUMN idgrupo SET DEFAULT nextval('tbgrupo_idgrupo_seq'::regclass);


--
-- TOC entry 3023 (class 2604 OID 32620)
-- Name: idlogoperacoes; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tblogoperacao ALTER COLUMN idlogoperacoes SET DEFAULT nextval('tblogoperacao_idlogoperacoes_seq'::regclass);


--
-- TOC entry 3024 (class 2604 OID 32631)
-- Name: idmanifestacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbmanifestacao ALTER COLUMN idmanifestacao SET DEFAULT nextval('tbmanifestacao_idmanifestacao_seq'::regclass);


--
-- TOC entry 3025 (class 2604 OID 32642)
-- Name: idmanifestacaoxanexo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbmanifestacaoxanexo ALTER COLUMN idmanifestacaoxanexo SET DEFAULT nextval('tbmanifestacaoxanexo_idmanifestacaoxanexo_seq'::regclass);


--
-- TOC entry 3026 (class 2604 OID 32650)
-- Name: idmeioentrada; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbmeioentrada ALTER COLUMN idmeioentrada SET DEFAULT nextval('tbmeioentrada_idmeioentrada_seq'::regclass);


--
-- TOC entry 3027 (class 2604 OID 32658)
-- Name: idmeioresposta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbmeioresposta ALTER COLUMN idmeioresposta SET DEFAULT nextval('tbmeioresposta_idmeioresposta_seq'::regclass);


--
-- TOC entry 3028 (class 2604 OID 32666)
-- Name: idmunicipio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbmunicipio ALTER COLUMN idmunicipio SET DEFAULT nextval('tbmunicipio_idmunicipio_seq'::regclass);


--
-- TOC entry 3029 (class 2604 OID 32674)
-- Name: idpais; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbpais ALTER COLUMN idpais SET DEFAULT nextval('tbpais_idpais_seq'::regclass);


--
-- TOC entry 3030 (class 2604 OID 32682)
-- Name: idparametro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbparametro ALTER COLUMN idparametro SET DEFAULT nextval('tbparametro_idparametro_seq'::regclass);


--
-- TOC entry 3031 (class 2604 OID 32693)
-- Name: idperfil; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbperfil ALTER COLUMN idperfil SET DEFAULT nextval('tbperfil_idperfil_seq'::regclass);


--
-- TOC entry 3032 (class 2604 OID 32704)
-- Name: idperfilxfuncionalidade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbperfilxfuncionalidade ALTER COLUMN idperfilxfuncionalidade SET DEFAULT nextval('tbperfilxfuncionalidade_idperfilxfuncionalidade_seq'::regclass);


--
-- TOC entry 3033 (class 2604 OID 32712)
-- Name: idperfilxgrupo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbperfilxgrupo ALTER COLUMN idperfilxgrupo SET DEFAULT nextval('tbperfilxgrupo_idperfilxgrupo_seq'::regclass);


--
-- TOC entry 3038 (class 2604 OID 32761)
-- Name: idpergunta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbperguntaquestionario ALTER COLUMN idpergunta SET DEFAULT nextval('tbperguntaquestionario_idpergunta_seq'::regclass);


--
-- TOC entry 3034 (class 2604 OID 32720)
-- Name: idprazoesic; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbprazoesic ALTER COLUMN idprazoesic SET DEFAULT nextval('tbprazoesic_idprazoesic_seq'::regclass);


--
-- TOC entry 3035 (class 2604 OID 32731)
-- Name: idpreferenciasistema; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbpreferenciasistema ALTER COLUMN idpreferenciasistema SET DEFAULT nextval('tbpreferenciasistema_idpreferenciasistema_seq'::regclass);

INSERT INTO TbPreferenciaSistema(idPreferenciaSistema, nomeOuvidoria, emailOuvidoria, hostEmail, portaEmail, usuarioEmail, senhaEmail, sslEmail, encerrarTramiteEncaminhada, retornarTramiteOuvidoria, ctlPrazoManifSoluc, RespostasImediatas, prazoEntrada, prazoAreaSolucionadora, prazoRespostaCidadao)
VALUES (1, 'Ouvidoria MinC', 'naoresponda.ouvidoria@cultura.gov.br', '10.0.0.54', 25, 'ouvidoria@cultura.gov.br', '', '2', '1', '1', '1', '1', 1, 28, 1)

--
-- TOC entry 3036 (class 2604 OID 32742)
-- Name: idprioridade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbprioridade ALTER COLUMN idprioridade SET DEFAULT nextval('tbprioridade_idprioridade_seq'::regclass);


--
-- TOC entry 3037 (class 2604 OID 32750)
-- Name: idquestionario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbquestionario ALTER COLUMN idquestionario SET DEFAULT nextval('tbquestionario_idquestionario_seq'::regclass);


--
-- TOC entry 3040 (class 2604 OID 32777)
-- Name: idrespostamanifestacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbrespostamanifestacao ALTER COLUMN idrespostamanifestacao SET DEFAULT nextval('tbrespostamanifestacao_idrespostamanifestacao_seq'::regclass);


--
-- TOC entry 3039 (class 2604 OID 32769)
-- Name: idresposta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbrespostaquestionario ALTER COLUMN idresposta SET DEFAULT nextval('tbrespostaquestionario_idresposta_seq'::regclass);


--
-- TOC entry 3041 (class 2604 OID 32788)
-- Name: idsubclassificacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbsubclassificacao ALTER COLUMN idsubclassificacao SET DEFAULT nextval('tbsubclassificacao_idsubclassificacao_seq'::regclass);


--
-- TOC entry 3042 (class 2604 OID 32796)
-- Name: idtipomanifestacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbtipomanifestacao ALTER COLUMN idtipomanifestacao SET DEFAULT nextval('tbtipomanifestacao_idtipomanifestacao_seq'::regclass);


--
-- TOC entry 3043 (class 2604 OID 32807)
-- Name: idtramite; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbtramite ALTER COLUMN idtramite SET DEFAULT nextval('tbtramite_idtramite_seq'::regclass);


--
-- TOC entry 3044 (class 2604 OID 32818)
-- Name: idtramitexanexo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbtramitexanexo ALTER COLUMN idtramitexanexo SET DEFAULT nextval('tbtramitexanexo_idtramitexanexo_seq'::regclass);


--
-- TOC entry 3045 (class 2604 OID 32826)
-- Name: iduf; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbuf ALTER COLUMN iduf SET DEFAULT nextval('tbuf_iduf_seq'::regclass);


--
-- TOC entry 3046 (class 2604 OID 32837)
-- Name: idunidade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbunidade ALTER COLUMN idunidade SET DEFAULT nextval('tbunidade_idunidade_seq'::regclass);


--
-- TOC entry 3047 (class 2604 OID 32848)
-- Name: idunidademanifestacao; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbunidadexmanifestacao ALTER COLUMN idunidademanifestacao SET DEFAULT nextval('tbunidadexmanifestacao_idunidademanifestacao_seq'::regclass);


--
-- TOC entry 3048 (class 2604 OID 32856)
-- Name: idusuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbusuario ALTER COLUMN idusuario SET DEFAULT nextval('tbusuario_idusuario_seq'::regclass);


--
-- TOC entry 3049 (class 2604 OID 32867)
-- Name: idusuarioperfil; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbusuarioxperfil ALTER COLUMN idusuarioperfil SET DEFAULT nextval('tbusuarioxperfil_idusuarioperfil_seq'::regclass);


--
-- TOC entry 3289 (class 0 OID 32441)
-- Dependencies: 171
-- Data for Name: tbajuda; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 170
-- Name: tbajuda_idajuda_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbajuda_idajuda_seq', 1, false);


--
-- TOC entry 3291 (class 0 OID 32452)
-- Dependencies: 173
-- Data for Name: tbanexo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 172
-- Name: tbanexo_idanexo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbanexo_idanexo_seq', 1, false);


--
-- TOC entry 3293 (class 0 OID 32463)
-- Dependencies: 175
-- Data for Name: tbareaentrada; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbareaentrada (idareaentrada, nmareaentrada) VALUES (1, 'Página eletrônica');
INSERT INTO tbareaentrada (idareaentrada, nmareaentrada) VALUES (169, 'E-SIC');


--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 174
-- Name: tbareaentrada_idareaentrada_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbareaentrada_idareaentrada_seq', 1, false);


--
-- TOC entry 3295 (class 0 OID 32471)
-- Dependencies: 177
-- Data for Name: tbaviso; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 176
-- Name: tbaviso_idavisos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbaviso_idavisos_seq', 1, false);


--
-- TOC entry 3296 (class 0 OID 32480)
-- Dependencies: 178
-- Data for Name: tbcep; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3298 (class 0 OID 32490)
-- Dependencies: 180
-- Data for Name: tbclassificacao; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 179
-- Name: tbclassificacao_idclassificacao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbclassificacao_idclassificacao_seq', 1, false);


--
-- TOC entry 3379 (class 0 OID 32875)
-- Dependencies: 261
-- Data for Name: tbclassificacao_tbsubclassificacao; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3380 (class 0 OID 32880)
-- Dependencies: 262
-- Data for Name: tbclassificacao_tbunidade; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3299 (class 0 OID 32496)
-- Dependencies: 181
-- Data for Name: tbcomentarioquestionario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3301 (class 0 OID 32503)
-- Dependencies: 183
-- Data for Name: tbcomunicacaoexterna; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 182
-- Name: tbcomunicacaoexterna_idcomunicacaoexterna_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbcomunicacaoexterna_idcomunicacaoexterna_seq', 1, false);


--
-- TOC entry 3303 (class 0 OID 32514)
-- Dependencies: 185
-- Data for Name: tbcomunicacaoexternaxanexo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 184
-- Name: tbcomunicacaoexternaxanexo_idcomunicacaoexternaxanexo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbcomunicacaoexternaxanexo_idcomunicacaoexternaxanexo_seq', 1, false);


--
-- TOC entry 3305 (class 0 OID 32522)
-- Dependencies: 187
-- Data for Name: tbemailautomatizado; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 186
-- Name: tbemailautomatizado_idemailautomatizado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbemailautomatizado_idemailautomatizado_seq', 1, false);


--
-- TOC entry 3307 (class 0 OID 32533)
-- Dependencies: 189
-- Data for Name: tbencaminhamento; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 188
-- Name: tbencaminhamento_idencaminhamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbencaminhamento_idencaminhamento_seq', 1, false);


--
-- TOC entry 3309 (class 0 OID 32544)
-- Dependencies: 191
-- Data for Name: tbencaminhamentopadronizado; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 190
-- Name: tbencaminhamentopadronizado_idencaminhamentopadronizado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbencaminhamentopadronizado_idencaminhamentopadronizado_seq', 1, false);


--
-- TOC entry 3311 (class 0 OID 32555)
-- Dependencies: 193
-- Data for Name: tbencaminhamentoxanexo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 192
-- Name: tbencaminhamentoxanexo_idencaminhamentoxanexo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbencaminhamentoxanexo_idencaminhamentoxanexo_seq', 1, false);


--
-- TOC entry 3313 (class 0 OID 32563)
-- Dependencies: 195
-- Data for Name: tbfaixaetaria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbfaixaetaria (idfaixaetaria, nmfaixaetaria) VALUES (5, 'Até 15 anos');
INSERT INTO tbfaixaetaria (idfaixaetaria, nmfaixaetaria) VALUES (6, 'De 16 a 25 anos');
INSERT INTO tbfaixaetaria (idfaixaetaria, nmfaixaetaria) VALUES (7, 'De 26 a 40 anos');
INSERT INTO tbfaixaetaria (idfaixaetaria, nmfaixaetaria) VALUES (8, 'De 41 a 61 anos');
INSERT INTO tbfaixaetaria (idfaixaetaria, nmfaixaetaria) VALUES (2024, 'Mais que 61 anos');


--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 194
-- Name: tbfaixaetaria_idfaixaetaria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbfaixaetaria_idfaixaetaria_seq', 1, false);


--
-- TOC entry 3315 (class 0 OID 32571)
-- Dependencies: 197
-- Data for Name: tbfiltropersonalizado; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 196
-- Name: tbfiltropersonalizado_idfiltropersonalizado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbfiltropersonalizado_idfiltropersonalizado_seq', 1, false);


--
-- TOC entry 3317 (class 0 OID 32582)
-- Dependencies: 199
-- Data for Name: tbfiltrospam; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 198
-- Name: tbfiltrospam_idfiltrosspam_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbfiltrospam_idfiltrosspam_seq', 1, false);


--
-- TOC entry 3319 (class 0 OID 32593)
-- Dependencies: 201
-- Data for Name: tbfuncionalidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (1, 'Atualizar Minhas Informações');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (2, 'Confirgurar Preferencias de Sistema');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (3, 'Consultar Projetos do SALIC');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (4, 'Consultar Propostas do SALIC');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (5, 'Gerenciar Manifestação');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (6, 'Manter Ajuda');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (7, 'Manter Area de Entrada');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (8, 'Manter Aviso');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (9, 'Manter Classificações');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (10, 'Manter Emails de Notificação');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (11, 'Manter Encaminhamento Padronizado');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (12, 'Manter Faixa Etária');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (13, 'Manter Filtros Personalizados');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (14, 'Manter Filtros Spam');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (15, 'Manter Grupo');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (16, 'Manter Lista Manifestação');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (17, 'Manter Meio de Entrada');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (18, 'Manter Meio de Resposta');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (19, 'Manter Perfil');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (20, 'Manter Perfil x Funcionalidades');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (21, 'Manter Perfil x Grupo');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (22, 'Manter Prioridade');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (23, 'Manter Respostas Manifestações');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (24, 'Manter SubClassificações');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (25, 'Manter Tipo Manifestação');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (26, 'Manter Unidade');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (27, 'Manter Usuário x Perfil');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (28, 'Manter Usuários');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (29, 'Painel de Notificação/Controle Prazos');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (30, 'Realizar Encaminhamento Unidade');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (31, 'Realizar Extração de Dados');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (32, 'Realizar Pesquisa nas Manifestações');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (33, 'Realizar Pesquisa nos Tramites');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (34, 'Registrar Comunicação Externa');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (35, 'Registrar Manifestação');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (36, 'Registrar Trâmite');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (37, 'Visualizar Estatísticas de Manifestação');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (38, 'Visualizar Log de Operações');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (39, 'Manter Grupo Ajuda');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (40, 'Visualizar Dados Sigilosos');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (41, 'Manter Grau de Instrução');
INSERT INTO tbfuncionalidade (idfuncionalidade, dsfuncionalidade) VALUES (42, 'Gerar Gráficos');


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 200
-- Name: tbfuncionalidade_idfuncionalidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbfuncionalidade_idfuncionalidade_seq', 1, false);


--
-- TOC entry 3321 (class 0 OID 32601)
-- Dependencies: 203
-- Data for Name: tbgrauinstrucao; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbgrauinstrucao (idgrauinstrucao, nmgrauinstrucao) VALUES (2, 'Analfabeto');
INSERT INTO tbgrauinstrucao (idgrauinstrucao, nmgrauinstrucao) VALUES (3, 'Fundamental Incompleto');
INSERT INTO tbgrauinstrucao (idgrauinstrucao, nmgrauinstrucao) VALUES (4, 'Fundamental Completo');
INSERT INTO tbgrauinstrucao (idgrauinstrucao, nmgrauinstrucao) VALUES (5, 'Médio Incompleto');
INSERT INTO tbgrauinstrucao (idgrauinstrucao, nmgrauinstrucao) VALUES (6, 'Médio Completo');
INSERT INTO tbgrauinstrucao (idgrauinstrucao, nmgrauinstrucao) VALUES (7, 'Superior Incompleto');
INSERT INTO tbgrauinstrucao (idgrauinstrucao, nmgrauinstrucao) VALUES (8, 'Superior Completo');
INSERT INTO tbgrauinstrucao (idgrauinstrucao, nmgrauinstrucao) VALUES (9, 'Especialização Incompleto');
INSERT INTO tbgrauinstrucao (idgrauinstrucao, nmgrauinstrucao) VALUES (10, 'Especialização Completo');
INSERT INTO tbgrauinstrucao (idgrauinstrucao, nmgrauinstrucao) VALUES (11, 'Mestrado Incompleto');
INSERT INTO tbgrauinstrucao (idgrauinstrucao, nmgrauinstrucao) VALUES (12, 'Mestrado Completo');
INSERT INTO tbgrauinstrucao (idgrauinstrucao, nmgrauinstrucao) VALUES (13, 'Doutorado Incompleto');
INSERT INTO tbgrauinstrucao (idgrauinstrucao, nmgrauinstrucao) VALUES (14, 'Doutorado Completo');


--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 202
-- Name: tbgrauinstrucao_idgrauinstrucao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbgrauinstrucao_idgrauinstrucao_seq', 1, false);


--
-- TOC entry 3323 (class 0 OID 32609)
-- Dependencies: 205
-- Data for Name: tbgrupo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 204
-- Name: tbgrupo_idgrupo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbgrupo_idgrupo_seq', 1, false);


--
-- TOC entry 3325 (class 0 OID 32617)
-- Dependencies: 207
-- Data for Name: tblogoperacao; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 206
-- Name: tblogoperacao_idlogoperacoes_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tblogoperacao_idlogoperacoes_seq', 1, false);


--
-- TOC entry 3327 (class 0 OID 32628)
-- Dependencies: 209
-- Data for Name: tbmanifestacao; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 208
-- Name: tbmanifestacao_idmanifestacao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbmanifestacao_idmanifestacao_seq', 1, false);


--
-- TOC entry 3378 (class 0 OID 32870)
-- Dependencies: 260
-- Data for Name: tbmanifestacao_tbclassificacao; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3381 (class 0 OID 32885)
-- Dependencies: 263
-- Data for Name: tbmanifestacao_tbsubclassificacao; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3382 (class 0 OID 32890)
-- Dependencies: 264
-- Data for Name: tbmanifestacao_unidadeareasolucionadora; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3329 (class 0 OID 32639)
-- Dependencies: 211
-- Data for Name: tbmanifestacaoxanexo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 210
-- Name: tbmanifestacaoxanexo_idmanifestacaoxanexo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbmanifestacaoxanexo_idmanifestacaoxanexo_seq', 1, false);


--
-- TOC entry 3331 (class 0 OID 32647)
-- Dependencies: 213
-- Data for Name: tbmeioentrada; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbmeioentrada (idmeioentrada, nmmeioentrada) VALUES (1, 'Formulário eletrônico');
INSERT INTO tbmeioentrada (idmeioentrada, nmmeioentrada) VALUES (1044, 'Correspondência em meio físico');
INSERT INTO tbmeioentrada (idmeioentrada, nmmeioentrada) VALUES (1047, 'FAX');
INSERT INTO tbmeioentrada (idmeioentrada, nmmeioentrada) VALUES (1057, 'Call Center (0800)');
INSERT INTO tbmeioentrada (idmeioentrada, nmmeioentrada) VALUES (1059, 'E-mail');


--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 212
-- Name: tbmeioentrada_idmeioentrada_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbmeioentrada_idmeioentrada_seq', 1, false);


--
-- TOC entry 3333 (class 0 OID 32655)
-- Dependencies: 215
-- Data for Name: tbmeioresposta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbmeioresposta (idmeioresposta, nmmeioresposta) VALUES (1, 'E-mail (Correio Eletrônicos)');
INSERT INTO tbmeioresposta (idmeioresposta, nmmeioresposta) VALUES (3, 'Correspondência em meio físico');
INSERT INTO tbmeioresposta (idmeioresposta, nmmeioresposta) VALUES (4, 'FAX');
INSERT INTO tbmeioresposta (idmeioresposta, nmmeioresposta) VALUES (5, 'Telefone Comercial');


--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 214
-- Name: tbmeioresposta_idmeioresposta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbmeioresposta_idmeioresposta_seq', 1, false);


--
-- TOC entry 3335 (class 0 OID 32663)
-- Dependencies: 217
-- Data for Name: tbmunicipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1, 21, 'Alta Floresta D Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2, 21, 'Ariquemes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3, 21, 'Cabixi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4, 21, 'Cacoal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5, 21, 'Cerejeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (6, 21, 'Colorado do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (7, 21, 'Corumbiara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (8, 21, 'Costa Marques');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (9, 21, 'Espigão D Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (10, 21, 'Guajará-Mirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (11, 21, 'Jaru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (12, 21, 'Ji-Paraná');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (13, 21, 'Machadinho D Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (14, 21, 'Nova Brasilândia D Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (15, 21, 'Ouro Preto do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (16, 21, 'Pimenta Bueno');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (17, 21, 'Porto Velho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (18, 21, 'Presidente Médici');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (19, 21, 'Rio Crespo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (20, 21, 'Rolim de Moura');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (21, 21, 'Santa Luzia D Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (22, 21, 'Vilhena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (23, 21, 'São Miguel do Guaporé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (24, 21, 'Nova Mamoré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (25, 21, 'Alvorada D Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (26, 21, 'Alto Alegre dos Parecis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (27, 21, 'Alto Paraíso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (28, 21, 'Buritis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (29, 21, 'Novo Horizonte do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (30, 21, 'Cacaulândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (31, 21, 'Campo Novo de Rondônia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (32, 21, 'Candeias do Jamari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (33, 21, 'Castanheiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (34, 21, 'Chupinguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (35, 21, 'Cujubim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (36, 21, 'Governador Jorge Teixeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (37, 21, 'Itapuã do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (38, 21, 'Ministro Andreazza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (39, 21, 'Mirante da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (40, 21, 'Monte Negro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (41, 21, 'Nova União');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (42, 21, 'Parecis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (43, 21, 'Pimenteiras do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (44, 21, 'Primavera de Rondônia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (45, 21, 'São Felipe D Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (46, 21, 'São Francisco do Guaporé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (47, 21, 'Seringueiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (48, 21, 'Teixeirópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (49, 21, 'Theobroma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (50, 21, 'Urupá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (51, 21, 'Vale do Anari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (52, 21, 'Vale do Paraíso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (53, 1, 'Acrelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (54, 1, 'Assis Brasil');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (55, 1, 'Brasiléia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (56, 1, 'Bujari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (57, 1, 'Capixaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (58, 1, 'Cruzeiro do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (59, 1, 'Epitaciolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (60, 1, 'Feijó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (61, 1, 'Jordão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (62, 1, 'Mâncio Lima');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (63, 1, 'Manoel Urbano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (64, 1, 'Marechal Thaumaturgo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (65, 1, 'Plácido de Castro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (66, 1, 'Porto Walter');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (67, 1, 'Rio Branco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (68, 1, 'Rodrigues Alves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (69, 1, 'Santa Rosa do Purus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (70, 1, 'Senador Guiomard');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (71, 1, 'Sena Madureira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (72, 1, 'Tarauacá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (73, 1, 'Xapuri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (74, 1, 'Porto Acre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (75, 3, 'Alvarães');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (76, 3, 'Amaturá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (77, 3, 'Anamã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (78, 3, 'Anori');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (79, 3, 'Apuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (80, 3, 'Atalaia do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (81, 3, 'Autazes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (82, 3, 'Barcelos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (83, 3, 'Barreirinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (84, 3, 'Benjamin Constant');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (85, 3, 'Beruri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (86, 3, 'Boa Vista do Ramos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (87, 3, 'Boca do Acre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (88, 3, 'Borba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (89, 3, 'Caapiranga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (90, 3, 'Canutama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (91, 3, 'Carauari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (92, 3, 'Careiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (93, 3, 'Careiro da Várzea');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (94, 3, 'Coari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (95, 3, 'Codajás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (96, 3, 'Eirunepé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (97, 3, 'Envira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (98, 3, 'Fonte Boa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (99, 3, 'Guajará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (100, 3, 'Humaitá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (101, 3, 'Ipixuna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (102, 3, 'Iranduba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (103, 3, 'Itacoatiara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (104, 3, 'Itamarati');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (105, 3, 'Itapiranga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (106, 3, 'Japurá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (107, 3, 'Juruá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (108, 3, 'Jutaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (109, 3, 'Lábrea');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (110, 3, 'Manacapuru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (111, 3, 'Manaquiri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (112, 3, 'Manaus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (113, 3, 'Manicoré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (114, 3, 'Maraã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (115, 3, 'Maués');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (116, 3, 'Nhamundá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (117, 3, 'Nova Olinda do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (118, 3, 'Novo Airão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (119, 3, 'Novo Aripuanã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (120, 3, 'Parintins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (121, 3, 'Pauini');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (122, 3, 'Presidente Figueiredo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (123, 3, 'Rio Preto da Eva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (124, 3, 'Santa Isabel do Rio Negro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (125, 3, 'Santo Antônio do Içá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (126, 3, 'São Gabriel da Cachoeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (127, 3, 'São Paulo de Olivença');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (128, 3, 'São Sebastião do Uatumã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (129, 3, 'Silves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (130, 3, 'Tabatinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (131, 3, 'Tapauá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (132, 3, 'Tefé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (133, 3, 'Tonantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (134, 3, 'Uarini');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (135, 3, 'Urucará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (136, 3, 'Urucurituba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (137, 22, 'Amajari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (138, 22, 'Alto Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (139, 22, 'Boa Vista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (140, 22, 'Bonfim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (141, 22, 'Cantá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (142, 22, 'Caracaraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (143, 22, 'Caroebe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (144, 22, 'Iracema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (145, 22, 'Mucajaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (146, 22, 'Normandia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (147, 22, 'Pacaraima');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (148, 22, 'Rorainópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (149, 22, 'São João da Baliza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (150, 22, 'São Luiz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (151, 22, 'Uiramutã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (152, 14, 'Abaetetuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (153, 14, 'Abel Figueiredo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (154, 14, 'Acará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (155, 14, 'Afuá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (156, 14, 'Água Azul do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (157, 14, 'Alenquer');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (158, 14, 'Almeirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (159, 14, 'Altamira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (160, 14, 'Anajás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (161, 14, 'Ananindeua');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (162, 14, 'Anapu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (163, 14, 'Augusto Corrêa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (164, 14, 'Aurora do Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (165, 14, 'Aveiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (166, 14, 'Bagre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (167, 14, 'Baião');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (168, 14, 'Bannach');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (169, 14, 'Barcarena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (170, 14, 'Belém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (171, 14, 'Belterra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (172, 14, 'Benevides');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (173, 14, 'Bom Jesus do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (174, 14, 'Bonito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (175, 14, 'Bragança');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (176, 14, 'Brasil Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (177, 14, 'Brejo Grande do Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (178, 14, 'Breu Branco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (179, 14, 'Breves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (180, 14, 'Bujaru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (181, 14, 'Cachoeira do Piriá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (182, 14, 'Cachoeira do Arari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (183, 14, 'Cametá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (184, 14, 'Canaã dos Carajás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (185, 14, 'Capanema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (186, 14, 'Capitão Poço');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (187, 14, 'Castanhal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (188, 14, 'Chaves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (189, 14, 'Colares');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (190, 14, 'Conceição do Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (191, 14, 'Concórdia do Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (192, 14, 'Cumaru do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (193, 14, 'Curionópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (194, 14, 'Curralinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (195, 14, 'Curuá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (196, 14, 'Curuçá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (197, 14, 'Dom Eliseu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (198, 14, 'Eldorado dos Carajás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (199, 14, 'Faro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (200, 14, 'Floresta do Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (201, 14, 'Garrafão do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (202, 14, 'Goianésia do Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (203, 14, 'Gurupá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (204, 14, 'Igarapé-Açu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (205, 14, 'Igarapé-Miri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (206, 14, 'Inhangapi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (207, 14, 'Ipixuna do Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (208, 14, 'Irituia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (209, 14, 'Itaituba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (210, 14, 'Itupiranga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (211, 14, 'Jacareacanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (212, 14, 'Jacundá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (213, 14, 'Juruti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (214, 14, 'Limoeiro do Ajuru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (215, 14, 'Mãe do Rio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (216, 14, 'Magalhães Barata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (217, 14, 'Marabá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (218, 14, 'Maracanã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (219, 14, 'Marapanim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (220, 14, 'Marituba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (221, 14, 'Medicilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (222, 14, 'Melgaço');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (223, 14, 'Mocajuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (224, 14, 'Moju');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (225, 14, 'Monte Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (226, 14, 'Muaná');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (227, 14, 'Nova Esperança do Piriá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (228, 14, 'Nova Ipixuna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (229, 14, 'Nova Timboteua');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (230, 14, 'Novo Progresso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (231, 14, 'Novo Repartimento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (232, 14, 'Óbidos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (233, 14, 'Oeiras do Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (234, 14, 'Oriximiná');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (235, 14, 'Ourém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (236, 14, 'Ourilândia do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (237, 14, 'Pacajá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (238, 14, 'Palestina do Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (239, 14, 'Paragominas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (240, 14, 'Parauapebas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (241, 14, 'Pau D Arco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (242, 14, 'Peixe-Boi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (243, 14, 'Piçarra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (244, 14, 'Placas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (245, 14, 'Ponta de Pedras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (246, 14, 'Portel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (247, 14, 'Porto de Moz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (248, 14, 'Prainha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (249, 14, 'Primavera');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (250, 14, 'Quatipuru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (251, 14, 'Redenção');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (252, 14, 'Rio Maria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (253, 14, 'Rondon do Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (254, 14, 'Rurópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (255, 14, 'Salinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (256, 14, 'Salvaterra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (257, 14, 'Santa Bárbara do Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (258, 14, 'Santa Cruz do Arari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (259, 14, 'Santa Isabel do Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (260, 14, 'Santa Luzia do Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (261, 14, 'Santa Maria das Barreiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (262, 14, 'Santa Maria do Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (263, 14, 'Santana do Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (264, 14, 'Santarém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (265, 14, 'Santarém Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (266, 14, 'Santo Antônio do Tauá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (267, 14, 'São Caetano de Odivelas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (268, 14, 'São Domingos do Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (269, 14, 'São Domingos do Capim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (270, 14, 'São Félix do Xingu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (271, 14, 'São Francisco do Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (272, 14, 'São Geraldo do Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (273, 14, 'São João da Ponta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (274, 14, 'São João de Pirabas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (275, 14, 'São João do Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (276, 14, 'São Miguel do Guamá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (277, 14, 'São Sebastião da Boa Vista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (278, 14, 'Sapucaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (279, 14, 'Senador José Porfírio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (280, 14, 'Soure');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (281, 14, 'Tailândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (282, 14, 'Terra Alta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (283, 14, 'Terra Santa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (284, 14, 'Tomé-Açu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (285, 14, 'Tracuateua');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (286, 14, 'Trairão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (287, 14, 'Tucumã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (288, 14, 'Tucuruí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (289, 14, 'Ulianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (290, 14, 'Uruará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (291, 14, 'Vigia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (292, 14, 'Viseu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (293, 14, 'Vitória do Xingu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (294, 14, 'Xinguara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (295, 4, 'Serra do Navio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (296, 4, 'Amapá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (297, 4, 'Pedra Branca do Amapari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (298, 4, 'Calçoene');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (299, 4, 'Cutias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (300, 4, 'Ferreira Gomes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (301, 4, 'Itaubal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (302, 4, 'Laranjal do Jari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (303, 4, 'Macapá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (304, 4, 'Mazagão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (305, 4, 'Oiapoque');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (306, 4, 'Porto Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (307, 4, 'Pracuúba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (308, 4, 'Santana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (309, 4, 'Tartarugalzinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (310, 4, 'Vitória do Jari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (311, 4, 'Abreulândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (312, 4, 'Aguiarnópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (313, 4, 'Aliança do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (314, 27, 'Almas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (315, 27, 'Alvorada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (316, 27, 'Ananás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (317, 27, 'Angico');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (318, 27, 'Aparecida do Rio Negro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (319, 27, 'Aragominas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (320, 27, 'Araguacema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (321, 27, 'Araguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (322, 27, 'Araguaína');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (323, 27, 'Araguanã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (324, 27, 'Araguatins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (325, 27, 'Arapoema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (326, 27, 'Arraias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (327, 27, 'Augustinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (328, 27, 'Aurora do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (329, 27, 'Axixá do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (330, 27, 'Babaçulândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (331, 27, 'Bandeirantes do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (332, 27, 'Barra do Ouro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (333, 27, 'Barrolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (334, 27, 'Bernardo Sayão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (335, 27, 'Bom Jesus do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (336, 27, 'Brasilândia do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (337, 27, 'Brejinho de Nazaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (338, 27, 'Buriti do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (339, 27, 'Cachoeirinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (340, 27, 'Campos Lindos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (341, 27, 'Cariri do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (342, 27, 'Carmolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (343, 27, 'Carrasco Bonito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (344, 27, 'Caseara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (345, 27, 'Centenário');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (346, 27, 'Chapada de Areia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (347, 27, 'Chapada da Natividade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (348, 27, 'Colinas do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (349, 27, 'Combinado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (350, 27, 'Conceição do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (351, 27, 'Couto Magalhães');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (352, 27, 'Cristalândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (353, 27, 'Crixás do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (354, 27, 'Darcinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (355, 27, 'Dianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (356, 27, 'Divinópolis do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (357, 27, 'Dois Irmãos do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (358, 27, 'Dueré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (359, 27, 'Esperantina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (360, 27, 'Fátima');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (361, 27, 'Figueirópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (362, 27, 'Filadélfia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (363, 27, 'Formoso do Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (364, 27, 'Fortaleza do Tabocão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (365, 27, 'Goianorte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (366, 27, 'Goiatins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (367, 27, 'Guaraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (368, 27, 'Gurupi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (369, 27, 'Ipueiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (370, 27, 'Itacajá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (371, 27, 'Itaguatins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (372, 27, 'Itapiratins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (373, 27, 'Itaporã do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (374, 27, 'Jaú do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (375, 27, 'Juarina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (376, 27, 'Lagoa da Confusão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (377, 27, 'Lagoa do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (378, 27, 'Lajeado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (379, 27, 'Lavandeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (380, 27, 'Lizarda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (381, 27, 'Luzinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (382, 27, 'Marianópolis do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (383, 27, 'Mateiros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (384, 27, 'Maurilândia do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (385, 27, 'Miracema do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (386, 27, 'Miranorte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (387, 27, 'Monte do Carmo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (388, 27, 'Monte Santo do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (389, 27, 'Palmeiras do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (390, 27, 'Muricilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (391, 27, 'Natividade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (392, 27, 'Nazaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (393, 27, 'Nova Olinda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (394, 27, 'Nova Rosalândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (395, 27, 'Novo Acordo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (396, 27, 'Novo Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (397, 27, 'Novo Jardim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (398, 27, 'Oliveira de Fátima');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (399, 27, 'Palmeirante');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (400, 27, 'Palmeirópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (401, 27, 'Paraíso do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (402, 27, 'Paranã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (403, 27, 'Pau D Arco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (404, 27, 'Pedro Afonso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (405, 27, 'Peixe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (406, 27, 'Pequizeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (407, 27, 'Colméia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (408, 27, 'Pindorama do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (409, 27, 'Piraquê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (410, 27, 'Pium');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (411, 27, 'Ponte Alta do Bom Jesus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (412, 27, 'Ponte Alta do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (413, 27, 'Porto Alegre do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (414, 27, 'Porto Nacional');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (415, 27, 'Praia Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (416, 27, 'Presidente Kennedy');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (417, 27, 'Pugmil');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (418, 27, 'Recursolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (419, 27, 'Riachinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (420, 27, 'Rio da Conceição');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (421, 27, 'Rio dos Bois');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (422, 27, 'Rio Sono');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (423, 27, 'Sampaio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (424, 27, 'Sandolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (425, 27, 'Santa Fé do Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (426, 27, 'Santa Maria do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (427, 27, 'Santa Rita do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (428, 27, 'Santa Rosa do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (429, 27, 'Santa Tereza do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (430, 27, 'Santa Terezinha do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (431, 27, 'São Bento do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (432, 27, 'São Félix do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (433, 27, 'São Miguel do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (434, 27, 'São Salvador do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (435, 27, 'São Sebastião do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (436, 27, 'São Valério');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (437, 27, 'Silvanópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (438, 27, 'Sítio Novo do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (439, 27, 'Sucupira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (440, 27, 'Taguatinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (441, 27, 'Taipas do Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (442, 27, 'Talismã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (443, 27, 'Palmas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (444, 27, 'Tocantínia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (445, 27, 'Tocantinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (446, 27, 'Tupirama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (447, 27, 'Tupiratins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (448, 27, 'Wanderlândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (449, 27, 'Xambioá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (450, 10, 'Açailândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (451, 10, 'Afonso Cunha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (452, 10, 'Água Doce do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (453, 10, 'Alcântara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (454, 10, 'Aldeias Altas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (455, 10, 'Altamira do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (456, 10, 'Alto Alegre do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (457, 10, 'Alto Alegre do Pindaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (458, 10, 'Alto Parnaíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (459, 10, 'Amapá do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (460, 10, 'Amarante do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (461, 10, 'Anajatuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (462, 10, 'Anapurus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (463, 10, 'Apicum-Açu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (464, 10, 'Araguanã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (465, 10, 'Araioses');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (466, 10, 'Arame');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (467, 10, 'Arari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (468, 10, 'Axixá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (469, 10, 'Bacabal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (470, 10, 'Bacabeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (471, 10, 'Bacuri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (472, 10, 'Bacurituba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (473, 10, 'Balsas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (474, 10, 'Barão de Grajaú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (475, 10, 'Barra do Corda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (476, 10, 'Barreirinhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (477, 10, 'Belágua');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (478, 10, 'Bela Vista do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (479, 10, 'Benedito Leite');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (480, 10, 'Bequimão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (481, 10, 'Bernardo do Mearim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (482, 10, 'Boa Vista do Gurupi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (483, 10, 'Bom Jardim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (484, 10, 'Bom Jesus das Selvas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (485, 10, 'Bom Lugar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (486, 10, 'Brejo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (487, 10, 'Brejo de Areia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (488, 10, 'Buriti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (489, 10, 'Buriti Bravo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (490, 10, 'Buriticupu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (491, 10, 'Buritirana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (492, 10, 'Cachoeira Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (493, 10, 'Cajapió');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (494, 10, 'Cajari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (495, 10, 'Campestre do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (496, 10, 'Cândido Mendes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (497, 10, 'Cantanhede');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (498, 10, 'Capinzal do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (499, 10, 'Carolina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (500, 10, 'Carutapera');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (501, 10, 'Caxias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (502, 10, 'Cedral');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (503, 10, 'Central do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (504, 10, 'Centro do Guilherme');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (505, 10, 'Centro Novo do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (506, 10, 'Chapadinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (507, 10, 'Cidelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (508, 10, 'Codó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (509, 10, 'Coelho Neto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (510, 10, 'Colinas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (511, 10, 'Conceição do Lago-Açu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (512, 10, 'Coroatá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (513, 10, 'Cururupu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (514, 10, 'Davinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (515, 10, 'Dom Pedro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (516, 10, 'Duque Bacelar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (517, 10, 'Esperantinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (518, 10, 'Estreito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (519, 10, 'Feira Nova do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (520, 10, 'Fernando Falcão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (521, 10, 'Formosa da Serra Negra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (522, 10, 'Fortaleza dos Nogueiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (523, 10, 'Fortuna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (524, 10, 'Godofredo Viana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (525, 10, 'Gonçalves Dias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (526, 10, 'Governador Archer');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (527, 10, 'Governador Edison Lobão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (528, 10, 'Governador Eugênio Barros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (529, 10, 'Governador Luiz Rocha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (530, 10, 'Governador Newton Bello');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (531, 10, 'Governador Nunes Freire');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (532, 10, 'Graça Aranha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (533, 10, 'Grajaú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (534, 10, 'Guimarães');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (535, 10, 'Humberto de Campos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (536, 10, 'Icatu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (537, 10, 'Igarapé do Meio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (538, 10, 'Igarapé Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (539, 10, 'Imperatriz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (540, 10, 'Itaipava do Grajaú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (541, 10, 'Itapecuru Mirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (542, 10, 'Itinga do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (543, 10, 'Jatobá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (544, 10, 'Jenipapo dos Vieiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (545, 10, 'João Lisboa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (546, 10, 'Joselândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (547, 10, 'Junco do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (548, 10, 'Lago da Pedra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (549, 10, 'Lago do Junco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (550, 10, 'Lago Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (551, 10, 'Lagoa do Mato');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (552, 10, 'Lago dos Rodrigues');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (553, 10, 'Lagoa Grande do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (554, 10, 'Lajeado Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (555, 10, 'Lima Campos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (556, 10, 'Loreto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (557, 10, 'Luís Domingues');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (558, 10, 'Magalhães de Almeida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (559, 10, 'Maracaçumé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (560, 10, 'Marajá do Sena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (561, 10, 'Maranhãozinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (562, 10, 'Mata Roma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (563, 10, 'Matinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (564, 10, 'Matões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (565, 10, 'Matões do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (566, 10, 'Milagres do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (567, 10, 'Mirador');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (568, 10, 'Miranda do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (569, 10, 'Mirinzal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (570, 10, 'Monção');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (571, 10, 'Montes Altos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (572, 10, 'Morros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (573, 10, 'Nina Rodrigues');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (574, 10, 'Nova Colinas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (575, 10, 'Nova Iorque');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (576, 10, 'Nova Olinda do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (577, 10, 'Olho d Água das Cunhãs');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (578, 10, 'Olinda Nova do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (579, 10, 'Paço do Lumiar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (580, 10, 'Palmeirândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (581, 10, 'Paraibano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (582, 10, 'Parnarama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (583, 10, 'Passagem Franca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (584, 10, 'Pastos Bons');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (585, 10, 'Paulino Neves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (586, 10, 'Paulo Ramos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (587, 10, 'Pedreiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (588, 10, 'Pedro do Rosário');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (589, 10, 'Penalva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (590, 10, 'Peri Mirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (591, 10, 'Peritoró');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (592, 10, 'Pindaré-Mirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (593, 10, 'Pinheiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (594, 10, 'Pio XII');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (595, 10, 'Pirapemas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (596, 10, 'Poção de Pedras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (597, 10, 'Porto Franco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (598, 10, 'Porto Rico do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (599, 10, 'Presidente Dutra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (600, 10, 'Presidente Juscelino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (601, 10, 'Presidente Médici');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (602, 10, 'Presidente Sarney');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (603, 10, 'Presidente Vargas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (604, 10, 'Primeira Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (605, 10, 'Raposa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (606, 10, 'Riachão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (607, 10, 'Ribamar Fiquene');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (608, 10, 'Rosário');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (609, 10, 'Sambaíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (610, 10, 'Santa Filomena do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (611, 10, 'Santa Helena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (612, 10, 'Santa Inês');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (613, 10, 'Santa Luzia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (614, 10, 'Santa Luzia do Paruá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (615, 10, 'Santa Quitéria do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (616, 10, 'Santa Rita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (617, 10, 'Santana do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (618, 10, 'Santo Amaro do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (619, 10, 'Santo Antônio dos Lopes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (620, 10, 'São Benedito do Rio Preto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (621, 10, 'São Bento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (622, 10, 'São Bernardo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (623, 10, 'São Domingos do Azeitão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (624, 10, 'São Domingos do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (625, 10, 'São Félix de Balsas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (626, 10, 'São Francisco do Brejão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (627, 10, 'São Francisco do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (628, 10, 'São João Batista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (629, 10, 'São João do Carú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (630, 10, 'São João do Paraíso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (631, 10, 'São João do Soter');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (632, 10, 'São João dos Patos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (633, 10, 'São José de Ribamar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (634, 10, 'São José dos Basílios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (635, 10, 'São Luís');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (636, 10, 'São Luís Gonzaga do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (637, 10, 'São Mateus do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (638, 10, 'São Pedro da Água Branca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (639, 10, 'São Pedro dos Crentes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (640, 10, 'São Raimundo das Mangabeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (641, 10, 'São Raimundo do Doca Bezerra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (642, 10, 'São Roberto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (643, 10, 'São Vicente Ferrer');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (644, 10, 'Satubinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (645, 10, 'Senador Alexandre Costa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (646, 10, 'Senador La Rocque');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (647, 10, 'Serrano do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (648, 10, 'Sítio Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (649, 10, 'Sucupira do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (650, 10, 'Sucupira do Riachão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (651, 10, 'Tasso Fragoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (652, 10, 'Timbiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (653, 10, 'Timon');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (654, 10, 'Trizidela do Vale');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (655, 10, 'Tufilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (656, 10, 'Tuntum');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (657, 10, 'Turiaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (658, 10, 'Turilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (659, 10, 'Tutóia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (660, 10, 'Urbano Santos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (661, 10, 'Vargem Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (662, 10, 'Viana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (663, 10, 'Vila Nova dos Martírios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (664, 10, 'Vitória do Mearim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (665, 10, 'Vitorino Freire');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (666, 10, 'Zé Doca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (667, 18, 'Acauã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (668, 18, 'Agricolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (669, 18, 'Água Branca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (670, 18, 'Alagoinha do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (671, 18, 'Alegrete do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (672, 18, 'Alto Longá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (673, 18, 'Altos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (674, 18, 'Alvorada do Gurguéia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (675, 18, 'Amarante');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (676, 18, 'Angical do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (677, 18, 'Anísio de Abreu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (678, 18, 'Antônio Almeida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (679, 18, 'Aroazes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (680, 18, 'Aroeiras do Itaim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (681, 18, 'Arraial');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (682, 18, 'Assunção do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (683, 18, 'Avelino Lopes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (684, 18, 'Baixa Grande do Ribeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (685, 18, 'Barra D Alcântara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (686, 18, 'Barras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (687, 18, 'Barreiras do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (688, 18, 'Barro Duro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (689, 18, 'Batalha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (690, 18, 'Bela Vista do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (691, 18, 'Belém do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (692, 18, 'Beneditinos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (693, 18, 'Bertolínia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (694, 18, 'Betânia do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (695, 18, 'Boa Hora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (696, 18, 'Bocaina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (697, 18, 'Bom Jesus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (698, 18, 'Bom Princípio do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (699, 18, 'Bonfim do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (700, 18, 'Boqueirão do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (701, 18, 'Brasileira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (702, 18, 'Brejo do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (703, 18, 'Buriti dos Lopes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (704, 18, 'Buriti dos Montes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (705, 18, 'Cabeceiras do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (706, 18, 'Cajazeiras do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (707, 18, 'Cajueiro da Praia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (708, 18, 'Caldeirão Grande do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (709, 18, 'Campinas do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (710, 18, 'Campo Alegre do Fidalgo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (711, 18, 'Campo Grande do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (712, 18, 'Campo Largo do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (713, 18, 'Campo Maior');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (714, 18, 'Canavieira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (715, 18, 'Canto do Buriti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (716, 18, 'Capitão de Campos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (717, 18, 'Capitão Gervásio Oliveira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (718, 18, 'Caracol');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (719, 18, 'Caraúbas do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (720, 18, 'Caridade do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (721, 18, 'Castelo do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (722, 18, 'Caxingó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (723, 18, 'Cocal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (724, 18, 'Cocal de Telha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (725, 18, 'Cocal dos Alves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (726, 18, 'Coivaras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (727, 18, 'Colônia do Gurguéia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (728, 18, 'Colônia do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (729, 18, 'Conceição do Canindé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (730, 18, 'Coronel José Dias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (731, 18, 'Corrente');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (732, 18, 'Cristalândia do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (733, 18, 'Cristino Castro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (734, 18, 'Curimatá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (735, 18, 'Currais');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (736, 18, 'Curralinhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (737, 18, 'Curral Novo do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (738, 18, 'Demerval Lobão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (739, 18, 'Dirceu Arcoverde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (740, 18, 'Dom Expedito Lopes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (741, 18, 'Domingos Mourão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (742, 18, 'Dom Inocêncio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (743, 18, 'Elesbão Veloso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (744, 18, 'Eliseu Martins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (745, 18, 'Esperantina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (746, 18, 'Fartura do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (747, 18, 'Flores do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (748, 18, 'Floresta do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (749, 18, 'Floriano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (750, 18, 'Francinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (751, 18, 'Francisco Ayres');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (752, 18, 'Francisco Macedo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (753, 18, 'Francisco Santos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (754, 18, 'Fronteiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (755, 18, 'Geminiano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (756, 18, 'Gilbués');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (757, 18, 'Guadalupe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (758, 18, 'Guaribas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (759, 18, 'Hugo Napoleão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (760, 18, 'Ilha Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (761, 18, 'Inhuma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (762, 18, 'Ipiranga do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (763, 18, 'Isaías Coelho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (764, 18, 'Itainópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (765, 18, 'Itaueira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (766, 18, 'Jacobina do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (767, 18, 'Jaicós');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (768, 18, 'Jardim do Mulato');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (769, 18, 'Jatobá do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (770, 18, 'Jerumenha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (771, 18, 'João Costa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (772, 18, 'Joaquim Pires');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (773, 18, 'Joca Marques');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (774, 18, 'José de Freitas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (775, 18, 'Juazeiro do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (776, 18, 'Júlio Borges');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (777, 18, 'Jurema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (778, 18, 'Lagoinha do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (779, 18, 'Lagoa Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (780, 18, 'Lagoa do Barro do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (781, 18, 'Lagoa de São Francisco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (782, 18, 'Lagoa do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (783, 18, 'Lagoa do Sítio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (784, 18, 'Landri Sales');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (785, 18, 'Luís Correia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (786, 18, 'Luzilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (787, 18, 'Madeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (788, 18, 'Manoel Emídio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (789, 18, 'Marcolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (790, 18, 'Marcos Parente');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (791, 18, 'Massapê do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (792, 18, 'Matias Olímpio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (793, 18, 'Miguel Alves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (794, 18, 'Miguel Leão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (795, 18, 'Milton Brandão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (796, 18, 'Monsenhor Gil');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (797, 18, 'Monsenhor Hipólito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (798, 18, 'Monte Alegre do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (799, 18, 'Morro Cabeça no Tempo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (800, 18, 'Morro do Chapéu do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (801, 18, 'Murici dos Portelas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (802, 18, 'Nazaré do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (803, 18, 'Nazária');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (804, 18, 'Nossa Senhora de Nazaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (805, 18, 'Nossa Senhora dos Remédios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (806, 18, 'Novo Oriente do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (807, 18, 'Novo Santo Antônio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (808, 18, 'Oeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (809, 18, 'Olho D Água do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (810, 18, 'Padre Marcos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (811, 18, 'Paes Landim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (812, 18, 'Pajeú do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (813, 18, 'Palmeira do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (814, 18, 'Palmeirais');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (815, 18, 'Paquetá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (816, 18, 'Parnaguá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (817, 18, 'Parnaíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (818, 18, 'Passagem Franca do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (819, 18, 'Patos do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (820, 18, 'Pau D Arco do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (821, 18, 'Paulistana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (822, 18, 'Pavussu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (823, 18, 'Pedro II');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (824, 18, 'Pedro Laurentino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (825, 18, 'Nova Santa Rita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (826, 18, 'Picos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (827, 18, 'Pimenteiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (828, 18, 'Pio IX');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (829, 18, 'Piracuruca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (830, 18, 'Piripiri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (831, 18, 'Porto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (832, 18, 'Porto Alegre do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (833, 18, 'Prata do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (834, 18, 'Queimada Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (835, 18, 'Redenção do Gurguéia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (836, 18, 'Regeneração');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (837, 18, 'Riacho Frio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (838, 18, 'Ribeira do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (839, 18, 'Ribeiro Gonçalves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (840, 18, 'Rio Grande do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (841, 18, 'Santa Cruz do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (842, 18, 'Santa Cruz dos Milagres');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (843, 18, 'Santa Filomena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (844, 18, 'Santa Luz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (845, 18, 'Santana do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (846, 18, 'Santa Rosa do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (847, 18, 'Santo Antônio de Lisboa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (848, 18, 'Santo Antônio dos Milagres');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (849, 18, 'Santo Inácio do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (850, 18, 'São Braz do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (851, 18, 'São Félix do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (852, 18, 'São Francisco de Assis do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (853, 18, 'São Francisco do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (854, 18, 'São Gonçalo do Gurguéia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (855, 18, 'São Gonçalo do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (856, 18, 'São João da Canabrava');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (857, 18, 'São João da Fronteira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (858, 18, 'São João da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (859, 18, 'São João da Varjota');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (860, 18, 'São João do Arraial');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (861, 18, 'São João do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (862, 18, 'São José do Divino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (863, 18, 'São José do Peixe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (864, 18, 'São José do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (865, 18, 'São Julião');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (866, 18, 'São Lourenço do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (867, 18, 'São Luis do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (868, 18, 'São Miguel da Baixa Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (869, 18, 'São Miguel do Fidalgo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (870, 18, 'São Miguel do Tapuio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (871, 18, 'São Pedro do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (872, 18, 'São Raimundo Nonato');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (873, 18, 'Sebastião Barros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (874, 18, 'Sebastião Leal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (875, 18, 'Sigefredo Pacheco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (876, 18, 'Simões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (877, 18, 'Simplício Mendes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (878, 18, 'Socorro do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (879, 18, 'Sussuapara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (880, 18, 'Tamboril do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (881, 18, 'Tanque do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (882, 18, 'Teresina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (883, 18, 'União');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (884, 18, 'Uruçuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (885, 18, 'Valença do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (886, 18, 'Várzea Branca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (887, 18, 'Várzea Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (888, 18, 'Vera Mendes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (889, 18, 'Vila Nova do Piauí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (890, 18, 'Wall Ferraz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (891, 6, 'Abaiara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (892, 6, 'Acarape');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (893, 6, 'Acaraú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (894, 6, 'Acopiara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (895, 6, 'Aiuaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (896, 6, 'Alcântaras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (897, 6, 'Altaneira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (898, 6, 'Alto Santo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (899, 6, 'Amontada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (900, 6, 'Antonina do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (901, 6, 'Apuiarés');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (902, 6, 'Aquiraz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (903, 6, 'Aracati');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (904, 6, 'Aracoiaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (905, 6, 'Ararendá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (906, 6, 'Araripe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (907, 6, 'Aratuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (908, 6, 'Arneiroz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (909, 6, 'Assaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (910, 6, 'Aurora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (911, 6, 'Baixio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (912, 6, 'Banabuiú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (913, 6, 'Barbalha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (914, 6, 'Barreira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (915, 6, 'Barro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (916, 6, 'Barroquinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (917, 6, 'Baturité');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (918, 6, 'Beberibe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (919, 6, 'Bela Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (920, 6, 'Boa Viagem');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (921, 6, 'Brejo Santo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (922, 6, 'Camocim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (923, 6, 'Campos Sales');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (924, 6, 'Canindé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (925, 6, 'Capistrano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (926, 6, 'Caridade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (927, 6, 'Cariré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (928, 6, 'Caririaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (929, 6, 'Cariús');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (930, 6, 'Carnaubal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (931, 6, 'Cascavel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (932, 6, 'Catarina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (933, 6, 'Catunda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (934, 6, 'Caucaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (935, 6, 'Cedro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (936, 6, 'Chaval');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (937, 6, 'Choró');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (938, 6, 'Chorozinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (939, 6, 'Coreaú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (940, 6, 'Crateús');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (941, 6, 'Crato');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (942, 6, 'Croatá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (943, 6, 'Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (944, 6, 'Deputado Irapuan Pinheiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (945, 6, 'Ererê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (946, 6, 'Eusébio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (947, 6, 'Farias Brito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (948, 6, 'Forquilha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (949, 6, 'Fortaleza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (950, 6, 'Fortim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (951, 6, 'Frecheirinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (952, 6, 'General Sampaio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (953, 6, 'Graça');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (954, 6, 'Granja');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (955, 6, 'Granjeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (956, 6, 'Groaíras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (957, 6, 'Guaiúba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (958, 6, 'Guaraciaba do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (959, 6, 'Guaramiranga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (960, 6, 'Hidrolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (961, 6, 'Horizonte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (962, 6, 'Ibaretama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (963, 6, 'Ibiapina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (964, 6, 'Ibicuitinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (965, 6, 'Icapuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (966, 6, 'Icó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (967, 6, 'Iguatu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (968, 6, 'Independência');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (969, 6, 'Ipaporanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (970, 6, 'Ipaumirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (971, 6, 'Ipu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (972, 6, 'Ipueiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (973, 6, 'Iracema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (974, 6, 'Irauçuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (975, 6, 'Itaiçaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (976, 6, 'Itaitinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (977, 6, 'Itapagé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (978, 6, 'Itapipoca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (979, 6, 'Itapiúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (980, 6, 'Itarema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (981, 6, 'Itatira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (982, 6, 'Jaguaretama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (983, 6, 'Jaguaribara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (984, 6, 'Jaguaribe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (985, 6, 'Jaguaruana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (986, 6, 'Jardim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (987, 6, 'Jati');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (988, 6, 'Jijoca de Jericoacoara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (989, 6, 'Juazeiro do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (990, 6, 'Jucás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (991, 6, 'Lavras da Mangabeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (992, 6, 'Limoeiro do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (993, 6, 'Madalena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (994, 6, 'Maracanaú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (995, 6, 'Maranguape');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (996, 6, 'Marco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (997, 6, 'Martinópole');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (998, 6, 'Massapê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (999, 6, 'Mauriti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1000, 6, 'Meruoca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1001, 6, 'Milagres');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1002, 6, 'Milhã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1003, 6, 'Miraíma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1004, 6, 'Missão Velha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1005, 6, 'Mombaça');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1006, 6, 'Monsenhor Tabosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1007, 6, 'Morada Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1008, 6, 'Moraújo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1009, 6, 'Morrinhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1010, 6, 'Mucambo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1011, 6, 'Mulungu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1012, 6, 'Nova Olinda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1013, 6, 'Nova Russas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1014, 6, 'Novo Oriente');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1015, 6, 'Ocara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1016, 6, 'Orós');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1017, 6, 'Pacajus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1018, 6, 'Pacatuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1019, 6, 'Pacoti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1020, 6, 'Pacujá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1021, 6, 'Palhano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1022, 6, 'Palmácia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1023, 6, 'Paracuru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1024, 6, 'Paraipaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1025, 6, 'Parambu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1026, 6, 'Paramoti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1027, 6, 'Pedra Branca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1028, 6, 'Penaforte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1029, 6, 'Pentecoste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1030, 6, 'Pereiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1031, 6, 'Pindoretama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1032, 6, 'Piquet Carneiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1033, 6, 'Pires Ferreira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1034, 6, 'Poranga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1035, 6, 'Porteiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1036, 6, 'Potengi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1037, 6, 'Potiretama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1038, 6, 'Quiterianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1039, 6, 'Quixadá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1040, 6, 'Quixelô');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1041, 6, 'Quixeramobim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1042, 6, 'Quixeré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1043, 6, 'Redenção');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1044, 6, 'Reriutaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1045, 6, 'Russas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1046, 6, 'Saboeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1047, 6, 'Salitre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1048, 6, 'Santana do Acaraú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1049, 6, 'Santana do Cariri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1050, 6, 'Santa Quitéria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1051, 6, 'São Benedito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1052, 6, 'São Gonçalo do Amarante');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1053, 6, 'São João do Jaguaribe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1054, 6, 'São Luís do Curu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1055, 6, 'Senador Pompeu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1056, 6, 'Senador Sá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1057, 6, 'Sobral');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1058, 6, 'Solonópole');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1059, 6, 'Tabuleiro do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1060, 6, 'Tamboril');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1061, 6, 'Tarrafas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1062, 6, 'Tauá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1063, 6, 'Tejuçuoca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1064, 6, 'Tianguá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1065, 6, 'Trairi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1066, 6, 'Tururu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1067, 6, 'Ubajara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1068, 6, 'Umari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1069, 6, 'Umirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1070, 6, 'Uruburetama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1071, 6, 'Uruoca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1072, 6, 'Varjota');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1073, 6, 'Várzea Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1074, 6, 'Viçosa do Ceará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1075, 20, 'Acari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1076, 20, 'Açu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1077, 20, 'Afonso Bezerra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1078, 20, 'Água Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1079, 20, 'Alexandria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1080, 20, 'Almino Afonso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1081, 20, 'Alto do Rodrigues');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1082, 20, 'Angicos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1083, 20, 'Antônio Martins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1084, 20, 'Apodi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1085, 20, 'Areia Branca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1086, 20, 'Arês');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1087, 20, 'Augusto Severo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1088, 20, 'Baía Formosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1089, 20, 'Baraúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1090, 20, 'Barcelona');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1091, 20, 'Bento Fernandes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1092, 20, 'Bodó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1093, 20, 'Bom Jesus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1094, 20, 'Brejinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1095, 20, 'Caiçara do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1096, 20, 'Caiçara do Rio do Vento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1097, 20, 'Caicó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1098, 20, 'Campo Redondo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1099, 20, 'Canguaretama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1100, 20, 'Caraúbas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1101, 20, 'Carnaúba dos Dantas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1102, 20, 'Carnaubais');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1103, 20, 'Ceará-Mirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1104, 20, 'Cerro Corá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1105, 20, 'Coronel Ezequiel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1106, 20, 'Coronel João Pessoa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1107, 20, 'Cruzeta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1108, 20, 'Currais Novos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1109, 20, 'Doutor Severiano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1110, 20, 'Parnamirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1111, 20, 'Encanto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1112, 20, 'Equador');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1113, 20, 'Espírito Santo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1114, 20, 'Extremoz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1115, 20, 'Felipe Guerra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1116, 20, 'Fernando Pedroza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1117, 20, 'Florânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1118, 20, 'Francisco Dantas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1119, 20, 'Frutuoso Gomes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1120, 20, 'Galinhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1121, 20, 'Goianinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1122, 20, 'Governador Dix-Sept Rosado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1123, 20, 'Grossos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1124, 20, 'Guamaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1125, 20, 'Ielmo Marinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1126, 20, 'Ipanguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1127, 20, 'Ipueira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1128, 20, 'Itajá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1129, 20, 'Itaú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1130, 20, 'Jaçanã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1131, 20, 'Jandaíra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1132, 20, 'Janduís');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1133, 20, 'Januário Cicco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1134, 20, 'Japi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1135, 20, 'Jardim de Angicos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1136, 20, 'Jardim de Piranhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1137, 20, 'Jardim do Seridó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1138, 20, 'João Câmara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1139, 20, 'João Dias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1140, 20, 'José da Penha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1141, 20, 'Jucurutu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1142, 20, 'Jundiá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1143, 20, 'Lagoa d Anta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1144, 20, 'Lagoa de Pedras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1145, 20, 'Lagoa de Velhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1146, 20, 'Lagoa Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1147, 20, 'Lagoa Salgada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1148, 20, 'Lajes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1149, 20, 'Lajes Pintadas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1150, 20, 'Lucrécia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1151, 20, 'Luís Gomes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1152, 20, 'Macaíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1153, 20, 'Macau');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1154, 20, 'Major Sales');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1155, 20, 'Marcelino Vieira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1156, 20, 'Martins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1157, 20, 'Maxaranguape');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1158, 20, 'Messias Targino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1159, 20, 'Montanhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1160, 20, 'Monte Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1161, 20, 'Monte das Gameleiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1162, 20, 'Mossoró');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1163, 20, 'Natal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1164, 20, 'Nísia Floresta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1165, 20, 'Nova Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1166, 20, 'Olho-d Água do Borges');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1167, 20, 'Ouro Branco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1168, 20, 'Paraná');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1169, 20, 'Paraú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1170, 20, 'Parazinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1171, 20, 'Parelhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1172, 20, 'Rio do Fogo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1173, 20, 'Passa e Fica');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1174, 20, 'Passagem');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1175, 20, 'Patu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1176, 20, 'Santa Maria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1177, 20, 'Pau dos Ferros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1178, 20, 'Pedra Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1179, 20, 'Pedra Preta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1180, 20, 'Pedro Avelino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1181, 20, 'Pedro Velho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1182, 20, 'Pendências');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1183, 20, 'Pilões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1184, 20, 'Poço Branco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1185, 20, 'Portalegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1186, 20, 'Porto do Mangue');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1187, 20, 'Presidente Juscelino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1188, 20, 'Pureza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1189, 20, 'Rafael Fernandes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1190, 20, 'Rafael Godeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1191, 20, 'Riacho da Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1192, 20, 'Riacho de Santana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1193, 20, 'Riachuelo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1194, 20, 'Rodolfo Fernandes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1195, 20, 'Tibau');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1196, 20, 'Ruy Barbosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1197, 20, 'Santa Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1198, 20, 'Santana do Matos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1199, 20, 'Santana do Seridó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1200, 20, 'Santo Antônio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1201, 20, 'São Bento do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1202, 20, 'São Bento do Trairí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1203, 20, 'São Fernando');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1204, 20, 'São Francisco do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1205, 20, 'São Gonçalo do Amarante');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1206, 20, 'São João do Sabugi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1207, 20, 'São José de Mipibu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1208, 20, 'São José do Campestre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1209, 20, 'São José do Seridó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1210, 20, 'São Miguel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1211, 20, 'São Miguel do Gostoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1212, 20, 'São Paulo do Potengi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1213, 20, 'São Pedro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1214, 20, 'São Rafael');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1215, 20, 'São Tomé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1216, 20, 'São Vicente');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1217, 20, 'Senador Elói de Souza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1218, 20, 'Senador Georgino Avelino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1219, 20, 'Serra de São Bento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1220, 20, 'Serra do Mel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1221, 20, 'Serra Negra do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1222, 20, 'Serrinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1223, 20, 'Serrinha dos Pintos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1224, 20, 'Severiano Melo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1225, 20, 'Sítio Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1226, 20, 'Taboleiro Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1227, 20, 'Taipu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1228, 20, 'Tangará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1229, 20, 'Tenente Ananias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1230, 20, 'Tenente Laurentino Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1231, 20, 'Tibau do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1232, 20, 'Timbaúba dos Batistas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1233, 20, 'Touros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1234, 20, 'Triunfo Potiguar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1235, 20, 'Umarizal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1236, 20, 'Upanema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1237, 20, 'Várzea');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1238, 20, 'Venha-Ver');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1239, 20, 'Vera Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1240, 20, 'Viçosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1241, 20, 'Vila Flor');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1242, 15, 'Água Branca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1243, 15, 'Aguiar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1244, 15, 'Alagoa Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1245, 15, 'Alagoa Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1246, 15, 'Alagoinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1247, 15, 'Alcantil');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1248, 15, 'Algodão de Jandaíra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1249, 15, 'Alhandra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1250, 15, 'São João do Rio do Peixe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1251, 15, 'Amparo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1252, 15, 'Aparecida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1253, 15, 'Araçagi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1254, 15, 'Arara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1255, 15, 'Araruna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1256, 15, 'Areia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1257, 15, 'Areia de Baraúnas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1258, 15, 'Areial');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1259, 15, 'Aroeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1260, 15, 'Assunção');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1261, 15, 'Baía da Traição');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1262, 15, 'Bananeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1263, 15, 'Baraúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1264, 15, 'Barra de Santana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1265, 15, 'Barra de Santa Rosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1266, 15, 'Barra de São Miguel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1267, 15, 'Bayeux');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1268, 15, 'Belém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1269, 15, 'Belém do Brejo do Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1270, 15, 'Bernardino Batista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1271, 15, 'Boa Ventura');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1272, 15, 'Boa Vista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1273, 15, 'Bom Jesus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1274, 15, 'Bom Sucesso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1275, 15, 'Bonito de Santa Fé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1276, 15, 'Boqueirão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1277, 15, 'Igaracy');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1278, 15, 'Borborema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1279, 15, 'Brejo do Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1280, 15, 'Brejo dos Santos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1281, 15, 'Caaporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1282, 15, 'Cabaceiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1283, 15, 'Cabedelo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1284, 15, 'Cachoeira dos Índios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1285, 15, 'Cacimba de Areia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1286, 15, 'Cacimba de Dentro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1287, 15, 'Cacimbas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1288, 15, 'Caiçara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1289, 15, 'Cajazeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1290, 15, 'Cajazeirinhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1291, 15, 'Caldas Brandão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1292, 15, 'Camalaú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1293, 15, 'Campina Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1294, 15, 'Capim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1295, 15, 'Caraúbas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1296, 15, 'Carrapateira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1297, 15, 'Casserengue');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1298, 15, 'Catingueira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1299, 15, 'Catolé do Rocha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1300, 15, 'Caturité');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1301, 15, 'Conceição');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1302, 15, 'Condado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1303, 15, 'Conde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1304, 15, 'Congo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1305, 15, 'Coremas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1306, 15, 'Coxixola');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1307, 15, 'Cruz do Espírito Santo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1308, 15, 'Cubati');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1309, 15, 'Cuité');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1310, 15, 'Cuitegi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1311, 15, 'Cuité de Mamanguape');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1312, 15, 'Curral de Cima');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1313, 15, 'Curral Velho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1314, 15, 'Damião');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1315, 15, 'Desterro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1316, 15, 'Vista Serrana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1317, 15, 'Diamante');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1318, 15, 'Dona Inês');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1319, 15, 'Duas Estradas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1320, 15, 'Emas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1321, 15, 'Esperança');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1322, 15, 'Fagundes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1323, 15, 'Frei Martinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1324, 15, 'Gado Bravo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1325, 15, 'Guarabira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1326, 15, 'Gurinhém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1327, 15, 'Gurjão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1328, 15, 'Ibiara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1329, 15, 'Imaculada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1330, 15, 'Ingá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1331, 15, 'Itabaiana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1332, 15, 'Itaporanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1333, 15, 'Itapororoca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1334, 15, 'Itatuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1335, 15, 'Jacaraú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1336, 15, 'Jericó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1337, 15, 'João Pessoa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1338, 15, 'Juarez Távora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1339, 15, 'Juazeirinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1340, 15, 'Junco do Seridó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1341, 15, 'Juripiranga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1342, 15, 'Juru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1343, 15, 'Lagoa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1344, 15, 'Lagoa de Dentro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1345, 15, 'Lagoa Seca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1346, 15, 'Lastro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1347, 15, 'Livramento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1348, 15, 'Logradouro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1349, 15, 'Lucena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1350, 15, 'Mãe d Água');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1351, 15, 'Malta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1352, 15, 'Mamanguape');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1353, 15, 'Manaíra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1354, 15, 'Marcação');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1355, 15, 'Mari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1356, 15, 'Marizópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1357, 15, 'Massaranduba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1358, 15, 'Mataraca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1359, 15, 'Matinhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1360, 15, 'Mato Grosso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1361, 15, 'Maturéia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1362, 15, 'Mogeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1363, 15, 'Montadas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1364, 15, 'Monte Horebe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1365, 15, 'Monteiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1366, 15, 'Mulungu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1367, 15, 'Natuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1368, 15, 'Nazarezinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1369, 15, 'Nova Floresta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1370, 15, 'Nova Olinda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1371, 15, 'Nova Palmeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1372, 15, 'Olho d Água');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1373, 15, 'Olivedos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1374, 15, 'Ouro Velho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1375, 15, 'Parari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1376, 15, 'Passagem');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1377, 15, 'Patos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1378, 15, 'Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1379, 15, 'Pedra Branca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1380, 15, 'Pedra Lavrada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1381, 15, 'Pedras de Fogo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1382, 15, 'Piancó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1383, 15, 'Picuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1384, 15, 'Pilar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1385, 15, 'Pilões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1386, 15, 'Pilõezinhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1387, 15, 'Pirpirituba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1388, 15, 'Pitimbu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1389, 15, 'Pocinhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1390, 15, 'Poço Dantas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1391, 15, 'Poço de José de Moura');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1392, 15, 'Pombal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1393, 15, 'Prata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1394, 15, 'Princesa Isabel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1395, 15, 'Puxinanã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1396, 15, 'Queimadas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1397, 15, 'Quixabá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1398, 15, 'Remígio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1399, 15, 'Pedro Régis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1400, 15, 'Riachão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1401, 15, 'Riachão do Bacamarte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1402, 15, 'Riachão do Poço');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1403, 15, 'Riacho de Santo Antônio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1404, 15, 'Riacho dos Cavalos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1405, 15, 'Rio Tinto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1406, 15, 'Salgadinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1407, 15, 'Salgado de São Félix');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1408, 15, 'Santa Cecília');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1409, 15, 'Santa Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1410, 15, 'Santa Helena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1411, 15, 'Santa Inês');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1412, 15, 'Santa Luzia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1413, 15, 'Santana de Mangueira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1414, 15, 'Santana dos Garrotes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1415, 15, 'Santarém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1416, 15, 'Santa Rita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1417, 15, 'Santa Teresinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1418, 15, 'Santo André');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1419, 15, 'São Bento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1420, 15, 'São Bentinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1421, 15, 'São Domingos do Cariri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1422, 15, 'São Domingos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1423, 15, 'São Francisco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1424, 15, 'São João do Cariri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1425, 15, 'São João do Tigre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1426, 15, 'São José da Lagoa Tapada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1427, 15, 'São José de Caiana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1428, 15, 'São José de Espinharas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1429, 15, 'São José dos Ramos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1430, 15, 'São José de Piranhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1431, 15, 'São José de Princesa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1432, 15, 'São José do Bonfim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1433, 15, 'São José do Brejo do Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1434, 15, 'São José do Sabugi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1435, 15, 'São José dos Cordeiros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1436, 15, 'São Mamede');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1437, 15, 'São Miguel de Taipu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1438, 15, 'São Sebastião de Lagoa de Roça');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1439, 15, 'São Sebastião do Umbuzeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1440, 15, 'Sapé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1441, 15, 'Seridó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1442, 15, 'Serra Branca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1443, 15, 'Serra da Raiz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1444, 15, 'Serra Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1445, 15, 'Serra Redonda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1446, 15, 'Serraria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1447, 15, 'Sertãozinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1448, 15, 'Sobrado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1449, 15, 'Solânea');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1450, 15, 'Soledade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1451, 15, 'Sossêgo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1452, 15, 'Sousa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1453, 15, 'Sumé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1454, 15, 'Campo de Santana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1455, 15, 'Taperoá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1456, 15, 'Tavares');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1457, 15, 'Teixeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1458, 15, 'Tenório');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1459, 15, 'Triunfo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1460, 15, 'Uiraúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1461, 15, 'Umbuzeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1462, 15, 'Várzea');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1463, 15, 'Vieirópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1464, 15, 'Zabelê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1465, 17, 'Abreu e Lima');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1466, 17, 'Afogados da Ingazeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1467, 17, 'Afrânio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1468, 17, 'Agrestina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1469, 17, 'Água Preta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1470, 17, 'Águas Belas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1471, 17, 'Alagoinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1472, 17, 'Aliança');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1473, 17, 'Altinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1474, 17, 'Amaraji');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1475, 17, 'Angelim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1476, 17, 'Araçoiaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1477, 17, 'Araripina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1478, 17, 'Arcoverde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1479, 17, 'Barra de Guabiraba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1480, 17, 'Barreiros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1481, 17, 'Belém de Maria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1482, 17, 'Belém de São Francisco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1483, 17, 'Belo Jardim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1484, 17, 'Betânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1485, 17, 'Bezerros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1486, 17, 'Bodocó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1487, 17, 'Bom Conselho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1488, 17, 'Bom Jardim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1489, 17, 'Bonito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1490, 17, 'Brejão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1491, 17, 'Brejinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1492, 17, 'Brejo da Madre de Deus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1493, 17, 'Buenos Aires');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1494, 17, 'Buíque');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1495, 17, 'Cabo de Santo Agostinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1496, 17, 'Cabrobó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1497, 17, 'Cachoeirinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1498, 17, 'Caetés');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1499, 17, 'Calçado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1500, 17, 'Calumbi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1501, 17, 'Camaragibe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1502, 17, 'Camocim de São Félix');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1503, 17, 'Camutanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1504, 17, 'Canhotinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1505, 17, 'Capoeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1506, 17, 'Carnaíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1507, 17, 'Carnaubeira da Penha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1508, 17, 'Carpina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1509, 17, 'Caruaru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1510, 17, 'Casinhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1511, 17, 'Catende');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1512, 17, 'Cedro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1513, 17, 'Chã de Alegria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1514, 17, 'Chã Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1515, 17, 'Condado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1516, 17, 'Correntes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1517, 17, 'Cortês');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1518, 17, 'Cumaru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1519, 17, 'Cupira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1520, 17, 'Custódia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1521, 17, 'Dormentes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1522, 17, 'Escada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1523, 17, 'Exu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1524, 17, 'Feira Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1525, 17, 'Fernando de Noronha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1526, 17, 'Ferreiros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1527, 17, 'Flores');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1528, 17, 'Floresta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1529, 17, 'Frei Miguelinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1530, 17, 'Gameleira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1531, 17, 'Garanhuns');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1532, 17, 'Glória do Goitá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1533, 17, 'Goiana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1534, 17, 'Granito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1535, 17, 'Gravatá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1536, 17, 'Iati');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1537, 17, 'Ibimirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1538, 17, 'Ibirajuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1539, 17, 'Igarassu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1540, 17, 'Iguaraci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1541, 17, 'Inajá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1542, 17, 'Ingazeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1543, 17, 'Ipojuca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1544, 17, 'Ipubi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1545, 17, 'Itacuruba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1546, 17, 'Itaíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1547, 17, 'Ilha de Itamaracá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1548, 17, 'Itambé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1549, 17, 'Itapetim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1550, 17, 'Itapissuma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1551, 17, 'Itaquitinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1552, 17, 'Jaboatão dos Guararapes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1553, 17, 'Jaqueira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1554, 17, 'Jataúba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1555, 17, 'Jatobá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1556, 17, 'João Alfredo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1557, 17, 'Joaquim Nabuco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1558, 17, 'Jucati');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1559, 17, 'Jupi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1560, 17, 'Jurema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1561, 17, 'Lagoa do Carro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1562, 17, 'Lagoa do Itaenga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1563, 17, 'Lagoa do Ouro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1564, 17, 'Lagoa dos Gatos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1565, 17, 'Lagoa Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1566, 17, 'Lajedo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1567, 17, 'Limoeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1568, 17, 'Macaparana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1569, 17, 'Machados');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1570, 17, 'Manari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1571, 17, 'Maraial');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1572, 17, 'Mirandiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1573, 17, 'Moreno');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1574, 17, 'Nazaré da Mata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1575, 17, 'Olinda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1576, 17, 'Orobó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1577, 17, 'Orocó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1578, 17, 'Ouricuri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1579, 17, 'Palmares');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1580, 17, 'Palmeirina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1581, 17, 'Panelas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1582, 17, 'Paranatama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1583, 17, 'Parnamirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1584, 17, 'Passira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1585, 17, 'Paudalho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1586, 17, 'Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1587, 17, 'Pedra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1588, 17, 'Pesqueira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1589, 17, 'Petrolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1590, 17, 'Petrolina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1591, 17, 'Poção');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1592, 17, 'Pombos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1593, 17, 'Primavera');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1594, 17, 'Quipapá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1595, 17, 'Quixaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1596, 17, 'Recife');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1597, 17, 'Riacho das Almas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1598, 17, 'Ribeirão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1599, 17, 'Rio Formoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1600, 17, 'Sairé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1601, 17, 'Salgadinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1602, 17, 'Salgueiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1603, 17, 'Saloá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1604, 17, 'Sanharó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1605, 17, 'Santa Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1606, 17, 'Santa Cruz da Baixa Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1607, 17, 'Santa Cruz do Capibaribe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1608, 17, 'Santa Filomena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1609, 17, 'Santa Maria da Boa Vista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1610, 17, 'Santa Maria do Cambucá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1611, 17, 'Santa Terezinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1612, 17, 'São Benedito do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1613, 17, 'São Bento do Una');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1614, 17, 'São Caitano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1615, 17, 'São João');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1616, 17, 'São Joaquim do Monte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1617, 17, 'São José da Coroa Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1618, 17, 'São José do Belmonte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1619, 17, 'São José do Egito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1620, 17, 'São Lourenço da Mata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1621, 17, 'São Vicente Ferrer');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1622, 17, 'Serra Talhada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1623, 17, 'Serrita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1624, 17, 'Sertânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1625, 17, 'Sirinhaém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1626, 17, 'Moreilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1627, 17, 'Solidão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1628, 17, 'Surubim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1629, 17, 'Tabira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1630, 17, 'Tacaimbó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1631, 17, 'Tacaratu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1632, 17, 'Tamandaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1633, 17, 'Taquaritinga do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1634, 17, 'Terezinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1635, 17, 'Terra Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1636, 17, 'Timbaúba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1637, 17, 'Toritama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1638, 17, 'Tracunhaém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1639, 17, 'Trindade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1640, 17, 'Triunfo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1641, 17, 'Tupanatinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1642, 17, 'Tuparetama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1643, 17, 'Venturosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1644, 17, 'Verdejante');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1645, 17, 'Vertente do Lério');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1646, 17, 'Vertentes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1647, 17, 'Vicência');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1648, 17, 'Vitória de Santo Antão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1649, 17, 'Xexéu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1650, 2, 'Água Branca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1651, 2, 'Anadia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1652, 2, 'Arapiraca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1653, 2, 'Atalaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1654, 2, 'Barra de Santo Antônio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1655, 2, 'Barra de São Miguel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1656, 2, 'Batalha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1657, 2, 'Belém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1658, 2, 'Belo Monte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1659, 2, 'Boca da Mata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1660, 2, 'Branquinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1661, 2, 'Cacimbinhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1662, 2, 'Cajueiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1663, 2, 'Campestre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1664, 2, 'Campo Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1665, 2, 'Campo Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1666, 2, 'Canapi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1667, 2, 'Capela');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1668, 2, 'Carneiros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1669, 2, 'Chã Preta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1670, 2, 'Coité do Nóia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1671, 2, 'Colônia Leopoldina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1672, 2, 'Coqueiro Seco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1673, 2, 'Coruripe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1674, 2, 'Craíbas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1675, 2, 'Delmiro Gouveia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1676, 2, 'Dois Riachos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1677, 2, 'Estrela de Alagoas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1678, 2, 'Feira Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1679, 2, 'Feliz Deserto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1680, 2, 'Flexeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1681, 2, 'Girau do Ponciano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1682, 2, 'Ibateguara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1683, 2, 'Igaci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1684, 2, 'Igreja Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1685, 2, 'Inhapi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1686, 2, 'Jacaré dos Homens');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1687, 2, 'Jacuípe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1688, 2, 'Japaratinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1689, 2, 'Jaramataia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1690, 2, 'Jequiá da Praia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1691, 2, 'Joaquim Gomes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1692, 2, 'Jundiá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1693, 2, 'Junqueiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1694, 2, 'Lagoa da Canoa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1695, 2, 'Limoeiro de Anadia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1696, 2, 'Maceió');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1697, 2, 'Major Isidoro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1698, 2, 'Maragogi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1699, 2, 'Maravilha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1700, 2, 'Marechal Deodoro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1701, 2, 'Maribondo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1702, 2, 'Mar Vermelho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1703, 2, 'Mata Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1704, 2, 'Matriz de Camaragibe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1705, 2, 'Messias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1706, 2, 'Minador do Negrão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1707, 2, 'Monteirópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1708, 2, 'Murici');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1709, 2, 'Novo Lino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1710, 2, 'Olho d Água das Flores');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1711, 2, 'Olho d Água do Casado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1712, 2, 'Olho d Água Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1713, 2, 'Olivença');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1714, 2, 'Ouro Branco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1715, 2, 'Palestina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1716, 2, 'Palmeira dos Índios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1717, 2, 'Pão de Açúcar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1718, 2, 'Pariconha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1719, 2, 'Paripueira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1720, 2, 'Passo de Camaragibe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1721, 2, 'Paulo Jacinto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1722, 2, 'Penedo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1723, 2, 'Piaçabuçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1724, 2, 'Pilar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1725, 2, 'Pindoba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1726, 2, 'Piranhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1727, 2, 'Poço das Trincheiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1728, 2, 'Porto Calvo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1729, 2, 'Porto de Pedras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1730, 2, 'Porto Real do Colégio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1731, 2, 'Quebrangulo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1732, 2, 'Rio Largo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1733, 2, 'Roteiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1734, 2, 'Santa Luzia do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1735, 2, 'Santana do Ipanema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1736, 2, 'Santana do Mundaú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1737, 2, 'São Brás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1738, 2, 'São José da Laje');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1739, 2, 'São José da Tapera');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1740, 2, 'São Luís do Quitunde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1741, 2, 'São Miguel dos Campos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1742, 2, 'São Miguel dos Milagres');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1743, 2, 'São Sebastião');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1744, 2, 'Satuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1745, 2, 'Senador Rui Palmeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1746, 2, 'Tanque d Arca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1747, 2, 'Taquarana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1748, 2, 'Teotônio Vilela');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1749, 2, 'Traipu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1750, 2, 'União dos Palmares');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1751, 2, 'Viçosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1752, 25, 'Amparo de São Francisco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1753, 25, 'Aquidabã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1754, 25, 'Aracaju');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1755, 25, 'Arauá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1756, 25, 'Areia Branca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1757, 25, 'Barra dos Coqueiros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1758, 25, 'Boquim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1759, 25, 'Brejo Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1760, 25, 'Campo do Brito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1761, 25, 'Canhoba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1762, 25, 'Canindé de São Francisco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1763, 25, 'Capela');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1764, 25, 'Carira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1765, 25, 'Carmópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1766, 25, 'Cedro de São João');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1767, 25, 'Cristinápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1768, 25, 'Cumbe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1769, 25, 'Divina Pastora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1770, 25, 'Estância');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1771, 25, 'Feira Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1772, 25, 'Frei Paulo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1773, 25, 'Gararu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1774, 25, 'General Maynard');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1775, 25, 'Gracho Cardoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1776, 25, 'Ilha das Flores');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1777, 25, 'Indiaroba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1778, 25, 'Itabaiana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1779, 25, 'Itabaianinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1780, 25, 'Itabi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1781, 25, 'Itaporanga d Ajuda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1782, 25, 'Japaratuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1783, 25, 'Japoatã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1784, 25, 'Lagarto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1785, 25, 'Laranjeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1786, 25, 'Macambira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1787, 25, 'Malhada dos Bois');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1788, 25, 'Malhador');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1789, 25, 'Maruim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1790, 25, 'Moita Bonita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1791, 25, 'Monte Alegre de Sergipe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1792, 25, 'Muribeca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1793, 25, 'Neópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1794, 25, 'Nossa Senhora Aparecida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1795, 25, 'Nossa Senhora da Glória');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1796, 25, 'Nossa Senhora das Dores');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1797, 25, 'Nossa Senhora de Lourdes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1798, 25, 'Nossa Senhora do Socorro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1799, 25, 'Pacatuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1800, 25, 'Pedra Mole');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1801, 25, 'Pedrinhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1802, 25, 'Pinhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1803, 25, 'Pirambu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1804, 25, 'Poço Redondo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1805, 25, 'Poço Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1806, 25, 'Porto da Folha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1807, 25, 'Propriá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1808, 25, 'Riachão do Dantas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1809, 25, 'Riachuelo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1810, 25, 'Ribeirópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1811, 25, 'Rosário do Catete');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1812, 25, 'Salgado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1813, 25, 'Santa Luzia do Itanhy');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1814, 25, 'Santana do São Francisco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1815, 25, 'Santa Rosa de Lima');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1816, 25, 'Santo Amaro das Brotas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1817, 25, 'São Cristóvão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1818, 25, 'São Domingos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1819, 25, 'São Francisco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1820, 25, 'São Miguel do Aleixo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1821, 25, 'Simão Dias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1822, 25, 'Siriri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1823, 25, 'Telha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1824, 25, 'Tobias Barreto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1825, 25, 'Tomar do Geru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1826, 25, 'Umbaúba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1827, 5, 'Abaíra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1828, 5, 'Abaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1829, 5, 'Acajutiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1830, 5, 'Adustina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1831, 5, 'Água Fria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1832, 5, 'Érico Cardoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1833, 5, 'Aiquara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1834, 5, 'Alagoinhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1835, 5, 'Alcobaça');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1836, 5, 'Almadina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1837, 5, 'Amargosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1838, 5, 'Amélia Rodrigues');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1839, 5, 'América Dourada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1840, 5, 'Anagé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1841, 5, 'Andaraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1842, 5, 'Andorinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1843, 5, 'Angical');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1844, 5, 'Anguera');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1845, 5, 'Antas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1846, 5, 'Antônio Cardoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1847, 5, 'Antônio Gonçalves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1848, 5, 'Aporá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1849, 5, 'Apuarema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1850, 5, 'Aracatu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1851, 5, 'Araças');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1852, 5, 'Araci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1853, 5, 'Aramari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1854, 5, 'Arataca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1855, 5, 'Aratuípe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1856, 5, 'Aurelino Leal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1857, 5, 'Baianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1858, 5, 'Baixa Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1859, 5, 'Banzaê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1860, 5, 'Barra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1861, 5, 'Barra da Estiva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1862, 5, 'Barra do Choça');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1863, 5, 'Barra do Mendes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1864, 5, 'Barra do Rocha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1865, 5, 'Barreiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1866, 5, 'Barro Alto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1867, 5, 'Barrocas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1868, 5, 'Barro Preto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1869, 5, 'Belmonte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1870, 5, 'Belo Campo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1871, 5, 'Biritinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1872, 5, 'Boa Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1873, 5, 'Boa Vista do Tupim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1874, 5, 'Bom Jesus da Lapa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1875, 5, 'Bom Jesus da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1876, 5, 'Boninal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1877, 5, 'Bonito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1878, 5, 'Boquira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1879, 5, 'Botuporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1880, 5, 'Brejões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1881, 5, 'Brejolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1882, 5, 'Brotas de Macaúbas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1883, 5, 'Brumado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1884, 5, 'Buerarema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1885, 5, 'Buritirama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1886, 5, 'Caatiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1887, 5, 'Cabaceiras do Paraguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1888, 5, 'Cachoeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1889, 5, 'Caculé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1890, 5, 'Caém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1891, 5, 'Caetanos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1892, 5, 'Caetité');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1893, 5, 'Cafarnaum');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1894, 5, 'Cairu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1895, 5, 'Caldeirão Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1896, 5, 'Camacan');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1897, 5, 'Camaçari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1898, 5, 'Camamu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1899, 5, 'Campo Alegre de Lourdes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1900, 5, 'Campo Formoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1901, 5, 'Canápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1902, 5, 'Canarana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1903, 5, 'Canavieiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1904, 5, 'Candeal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1905, 5, 'Candeias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1906, 5, 'Candiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1907, 5, 'Cândido Sales');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1908, 5, 'Cansanção');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1909, 5, 'Canudos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1910, 5, 'Capela do Alto Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1911, 5, 'Capim Grosso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1912, 5, 'Caraíbas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1913, 5, 'Caravelas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1914, 5, 'Cardeal da Silva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1915, 5, 'Carinhanha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1916, 5, 'Casa Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1917, 5, 'Castro Alves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1918, 5, 'Catolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1919, 5, 'Catu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1920, 5, 'Caturama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1921, 5, 'Central');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1922, 5, 'Chorrochó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1923, 5, 'Cícero Dantas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1924, 5, 'Cipó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1925, 5, 'Coaraci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1926, 5, 'Cocos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1927, 5, 'Conceição da Feira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1928, 5, 'Conceição do Almeida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1929, 5, 'Conceição do Coité');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1930, 5, 'Conceição do Jacuípe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1931, 5, 'Conde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1932, 5, 'Condeúba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1933, 5, 'Contendas do Sincorá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1934, 5, 'Coração de Maria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1935, 5, 'Cordeiros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1936, 5, 'Coribe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1937, 5, 'Coronel João Sá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1938, 5, 'Correntina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1939, 5, 'Cotegipe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1940, 5, 'Cravolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1941, 5, 'Crisópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1942, 5, 'Cristópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1943, 5, 'Cruz das Almas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1944, 5, 'Curaçá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1945, 5, 'Dário Meira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1946, 5, 'Dias d Ávila');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1947, 5, 'Dom Basílio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1948, 5, 'Dom Macedo Costa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1949, 5, 'Elísio Medrado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1950, 5, 'Encruzilhada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1951, 5, 'Entre Rios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1952, 5, 'Esplanada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1953, 5, 'Euclides da Cunha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1954, 5, 'Eunápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1955, 5, 'Fátima');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1956, 5, 'Feira da Mata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1957, 5, 'Feira de Santana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1958, 5, 'Filadélfia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1959, 5, 'Firmino Alves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1960, 5, 'Floresta Azul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1961, 5, 'Formosa do Rio Preto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1962, 5, 'Gandu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1963, 5, 'Gavião');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1964, 5, 'Gentio do Ouro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1965, 5, 'Glória');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1966, 5, 'Gongogi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1967, 5, 'Governador Mangabeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1968, 5, 'Guajeru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1969, 5, 'Guanambi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1970, 5, 'Guaratinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1971, 5, 'Heliópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1972, 5, 'Iaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1973, 5, 'Ibiassucê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1974, 5, 'Ibicaraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1975, 5, 'Ibicoara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1976, 5, 'Ibicuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1977, 5, 'Ibipeba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1978, 5, 'Ibipitanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1979, 5, 'Ibiquera');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1980, 5, 'Ibirapitanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1981, 5, 'Ibirapuã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1982, 5, 'Ibirataia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1983, 5, 'Ibitiara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1984, 5, 'Ibititá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1985, 5, 'Ibotirama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1986, 5, 'Ichu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1987, 5, 'Igaporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1988, 5, 'Igrapiúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1989, 5, 'Iguaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1990, 5, 'Ilhéus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1991, 5, 'Inhambupe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1992, 5, 'Ipecaetá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1993, 5, 'Ipiaú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1994, 5, 'Ipirá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1995, 5, 'Ipupiara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1996, 5, 'Irajuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1997, 5, 'Iramaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1998, 5, 'Iraquara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (1999, 5, 'Irará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2000, 5, 'Irecê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2001, 5, 'Itabela');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2002, 5, 'Itaberaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2003, 5, 'Itabuna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2004, 5, 'Itacaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2005, 5, 'Itaeté');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2006, 5, 'Itagi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2007, 5, 'Itagibá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2008, 5, 'Itagimirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2009, 5, 'Itaguaçu da Bahia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2010, 5, 'Itaju do Colônia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2011, 5, 'Itajuípe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2012, 5, 'Itamaraju');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2013, 5, 'Itamari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2014, 5, 'Itambé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2015, 5, 'Itanagra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2016, 5, 'Itanhém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2017, 5, 'Itaparica');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2018, 5, 'Itapé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2019, 5, 'Itapebi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2020, 5, 'Itapetinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2021, 5, 'Itapicuru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2022, 5, 'Itapitanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2023, 5, 'Itaquara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2024, 5, 'Itarantim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2025, 5, 'Itatim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2026, 5, 'Itiruçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2027, 5, 'Itiúba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2028, 5, 'Itororó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2029, 5, 'Ituaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2030, 5, 'Ituberá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2031, 5, 'Iuiú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2032, 5, 'Jaborandi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2033, 5, 'Jacaraci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2034, 5, 'Jacobina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2035, 5, 'Jaguaquara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2036, 5, 'Jaguarari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2037, 5, 'Jaguaripe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2038, 5, 'Jandaíra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2039, 5, 'Jequié');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2040, 5, 'Jeremoabo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2041, 5, 'Jiquiriçá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2042, 5, 'Jitaúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2043, 5, 'João Dourado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2044, 5, 'Juazeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2045, 5, 'Jucuruçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2046, 5, 'Jussara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2047, 5, 'Jussari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2048, 5, 'Jussiape');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2049, 5, 'Lafaiete Coutinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2050, 5, 'Lagoa Real');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2051, 5, 'Laje');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2052, 5, 'Lajedão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2053, 5, 'Lajedinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2054, 5, 'Lajedo do Tabocal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2055, 5, 'Lamarão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2056, 5, 'Lapão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2057, 5, 'Lauro de Freitas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2058, 5, 'Lençóis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2059, 5, 'Licínio de Almeida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2060, 5, 'Livramento de Nossa Senhora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2061, 5, 'Luís Eduardo Magalhães');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2062, 5, 'Macajuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2063, 5, 'Macarani');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2064, 5, 'Macaúbas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2065, 5, 'Macururé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2066, 5, 'Madre de Deus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2067, 5, 'Maetinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2068, 5, 'Maiquinique');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2069, 5, 'Mairi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2070, 5, 'Malhada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2071, 5, 'Malhada de Pedras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2072, 5, 'Manoel Vitorino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2073, 5, 'Mansidão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2074, 5, 'Maracás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2075, 5, 'Maragogipe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2076, 5, 'Maraú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2077, 5, 'Marcionílio Souza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2078, 5, 'Mascote');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2079, 5, 'Mata de São João');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2080, 5, 'Matina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2081, 5, 'Medeiros Neto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2082, 5, 'Miguel Calmon');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2083, 5, 'Milagres');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2084, 5, 'Mirangaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2085, 5, 'Mirante');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2086, 5, 'Monte Santo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2087, 5, 'Morpará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2088, 5, 'Morro do Chapéu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2089, 5, 'Mortugaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2090, 5, 'Mucugê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2091, 5, 'Mucuri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2092, 5, 'Mulungu do Morro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2093, 5, 'Mundo Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2094, 5, 'Muniz Ferreira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2095, 5, 'Muquém de São Francisco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2096, 5, 'Muritiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2097, 5, 'Mutuípe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2098, 5, 'Nazaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2099, 5, 'Nilo Peçanha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2100, 5, 'Nordestina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2101, 5, 'Nova Canaã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2102, 5, 'Nova Fátima');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2103, 5, 'Nova Ibiá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2104, 5, 'Nova Itarana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2105, 5, 'Nova Redenção');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2106, 5, 'Nova Soure');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2107, 5, 'Nova Viçosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2108, 5, 'Novo Horizonte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2109, 5, 'Novo Triunfo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2110, 5, 'Olindina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2111, 5, 'Oliveira dos Brejinhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2112, 5, 'Ouriçangas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2113, 5, 'Ourolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2114, 5, 'Palmas de Monte Alto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2115, 5, 'Palmeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2116, 5, 'Paramirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2117, 5, 'Paratinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2118, 5, 'Paripiranga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2119, 5, 'Pau Brasil');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2120, 5, 'Paulo Afonso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2121, 5, 'Pé de Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2122, 5, 'Pedrão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2123, 5, 'Pedro Alexandre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2124, 5, 'Piatã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2125, 5, 'Pilão Arcado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2126, 5, 'Pindaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2127, 5, 'Pindobaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2128, 5, 'Pintadas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2129, 5, 'Piraí do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2130, 5, 'Piripá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2131, 5, 'Piritiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2132, 5, 'Planaltino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2133, 5, 'Planalto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2134, 5, 'Poções');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2135, 5, 'Pojuca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2136, 5, 'Ponto Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2137, 5, 'Porto Seguro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2138, 5, 'Potiraguá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2139, 5, 'Prado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2140, 5, 'Presidente Dutra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2141, 5, 'Presidente Jânio Quadros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2142, 5, 'Presidente Tancredo Neves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2143, 5, 'Queimadas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2144, 5, 'Quijingue');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2145, 5, 'Quixabeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2146, 5, 'Rafael Jambeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2147, 5, 'Remanso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2148, 5, 'Retirolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2149, 5, 'Riachão das Neves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2150, 5, 'Riachão do Jacuípe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2151, 5, 'Riacho de Santana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2152, 5, 'Ribeira do Amparo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2153, 5, 'Ribeira do Pombal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2154, 5, 'Ribeirão do Largo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2155, 5, 'Rio de Contas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2156, 5, 'Rio do Antônio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2157, 5, 'Rio do Pires');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2158, 5, 'Rio Real');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2159, 5, 'Rodelas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2160, 5, 'Ruy Barbosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2161, 5, 'Salinas da Margarida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2162, 5, 'Salvador');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2163, 5, 'Santa Bárbara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2164, 5, 'Santa Brígida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2165, 5, 'Santa Cruz Cabrália');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2166, 5, 'Santa Cruz da Vitória');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2167, 5, 'Santa Inês');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2168, 5, 'Santaluz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2169, 5, 'Santa Luzia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2170, 5, 'Santa Maria da Vitória');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2171, 5, 'Santana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2172, 5, 'Santanópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2173, 5, 'Santa Rita de Cássia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2174, 5, 'Santa Teresinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2175, 5, 'Santo Amaro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2176, 5, 'Santo Antônio de Jesus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2177, 5, 'Santo Estêvão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2178, 5, 'São Desidério');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2179, 5, 'São Domingos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2180, 5, 'São Félix');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2181, 5, 'São Félix do Coribe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2182, 5, 'São Felipe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2183, 5, 'São Francisco do Conde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2184, 5, 'São Gabriel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2185, 5, 'São Gonçalo dos Campos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2186, 5, 'São José da Vitória');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2187, 5, 'São José do Jacuípe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2188, 5, 'São Miguel das Matas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2189, 5, 'São Sebastião do Passé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2190, 5, 'Sapeaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2191, 5, 'Sátiro Dias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2192, 5, 'Saubara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2193, 5, 'Saúde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2194, 5, 'Seabra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2195, 5, 'Sebastião Laranjeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2196, 5, 'Senhor do Bonfim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2197, 5, 'Serra do Ramalho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2198, 5, 'Sento Sé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2199, 5, 'Serra Dourada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2200, 5, 'Serra Preta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2201, 5, 'Serrinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2202, 5, 'Serrolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2203, 5, 'Simões Filho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2204, 5, 'Sítio do Mato');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2205, 5, 'Sítio do Quinto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2206, 5, 'Sobradinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2207, 5, 'Souto Soares');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2208, 5, 'Tabocas do Brejo Velho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2209, 5, 'Tanhaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2210, 5, 'Tanque Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2211, 5, 'Tanquinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2212, 5, 'Taperoá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2213, 5, 'Tapiramutá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2214, 5, 'Teixeira de Freitas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2215, 5, 'Teodoro Sampaio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2216, 5, 'Teofilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2217, 5, 'Teolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2218, 5, 'Terra Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2219, 5, 'Tremedal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2220, 5, 'Tucano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2221, 5, 'Uauá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2222, 5, 'Ubaíra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2223, 5, 'Ubaitaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2224, 5, 'Ubatã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2225, 5, 'Uibaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2226, 5, 'Umburanas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2227, 5, 'Una');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2228, 5, 'Urandi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2229, 5, 'Uruçuca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2230, 5, 'Utinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2231, 5, 'Valença');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2232, 5, 'Valente');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2233, 5, 'Várzea da Roça');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2234, 5, 'Várzea do Poço');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2235, 5, 'Várzea Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2236, 5, 'Varzedo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2237, 5, 'Vera Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2238, 5, 'Vereda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2239, 5, 'Vitória da Conquista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2240, 5, 'Wagner');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2241, 5, 'Wanderley');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2242, 5, 'Wenceslau Guimarães');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2243, 5, 'Xique-Xique');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2244, 11, 'Abadia dos Dourados');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2245, 11, 'Abaeté');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2246, 11, 'Abre Campo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2247, 11, 'Acaiaca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2248, 11, 'Açucena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2249, 11, 'Água Boa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2250, 11, 'Água Comprida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2251, 11, 'Aguanil');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2252, 11, 'Águas Formosas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2253, 11, 'Águas Vermelhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2254, 11, 'Aimorés');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2255, 11, 'Aiuruoca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2256, 11, 'Alagoa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2257, 11, 'Albertina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2258, 11, 'Além Paraíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2259, 11, 'Alfenas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2260, 11, 'Alfredo Vasconcelos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2261, 11, 'Almenara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2262, 11, 'Alpercata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2263, 11, 'Alpinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2264, 11, 'Alterosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2265, 11, 'Alto Caparaó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2266, 11, 'Alto Rio Doce');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2267, 11, 'Alvarenga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2268, 11, 'Alvinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2269, 11, 'Alvorada de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2270, 11, 'Amparo do Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2271, 11, 'Andradas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2272, 11, 'Cachoeira de Pajeú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2273, 11, 'Andrelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2274, 11, 'Angelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2275, 11, 'Antônio Carlos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2276, 11, 'Antônio Dias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2277, 11, 'Antônio Prado de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2278, 11, 'Araçaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2279, 11, 'Aracitaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2280, 11, 'Araçuaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2281, 11, 'Araguari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2282, 11, 'Arantina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2283, 11, 'Araponga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2284, 11, 'Araporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2285, 11, 'Arapuá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2286, 11, 'Araújos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2287, 11, 'Araxá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2288, 11, 'Arceburgo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2289, 11, 'Arcos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2290, 11, 'Areado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2291, 11, 'Argirita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2292, 11, 'Aricanduva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2293, 11, 'Arinos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2294, 11, 'Astolfo Dutra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2295, 11, 'Ataléia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2296, 11, 'Augusto de Lima');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2297, 11, 'Baependi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2298, 11, 'Baldim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2299, 11, 'Bambuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2300, 11, 'Bandeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2301, 11, 'Bandeira do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2302, 11, 'Barão de Cocais');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2303, 11, 'Barão de Monte Alto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2304, 11, 'Barbacena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2305, 11, 'Barra Longa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2306, 11, 'Barroso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2307, 11, 'Bela Vista de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2308, 11, 'Belmiro Braga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2309, 11, 'Belo Horizonte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2310, 11, 'Belo Oriente');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2311, 11, 'Belo Vale');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2312, 11, 'Berilo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2313, 11, 'Bertópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2314, 11, 'Berizal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2315, 11, 'Betim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2316, 11, 'Bias Fortes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2317, 11, 'Bicas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2318, 11, 'Biquinhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2319, 11, 'Boa Esperança');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2320, 11, 'Bocaina de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2321, 11, 'Bocaiúva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2322, 11, 'Bom Despacho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2323, 11, 'Bom Jardim de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2324, 11, 'Bom Jesus da Penha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2325, 11, 'Bom Jesus do Amparo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2326, 11, 'Bom Jesus do Galho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2327, 11, 'Bom Repouso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2328, 11, 'Bom Sucesso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2329, 11, 'Bonfim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2330, 11, 'Bonfinópolis de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2331, 11, 'Bonito de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2332, 11, 'Borda da Mata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2333, 11, 'Botelhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2334, 11, 'Botumirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2335, 11, 'Brasilândia de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2336, 11, 'Brasília de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2337, 11, 'Brás Pires');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2338, 11, 'Braúnas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2339, 11, 'Brasópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2340, 11, 'Brumadinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2341, 11, 'Bueno Brandão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2342, 11, 'Buenópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2343, 11, 'Bugre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2344, 11, 'Buritis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2345, 11, 'Buritizeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2346, 11, 'Cabeceira Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2347, 11, 'Cabo Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2348, 11, 'Cachoeira da Prata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2349, 11, 'Cachoeira de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2350, 11, 'Cachoeira Dourada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2351, 11, 'Caetanópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2352, 11, 'Caeté');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2353, 11, 'Caiana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2354, 11, 'Cajuri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2355, 11, 'Caldas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2356, 11, 'Camacho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2357, 11, 'Camanducaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2358, 11, 'Cambuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2359, 11, 'Cambuquira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2360, 11, 'Campanário');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2361, 11, 'Campanha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2362, 11, 'Campestre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2363, 11, 'Campina Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2364, 11, 'Campo Azul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2365, 11, 'Campo Belo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2366, 11, 'Campo do Meio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2367, 11, 'Campo Florido');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2368, 11, 'Campos Altos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2369, 11, 'Campos Gerais');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2370, 11, 'Canaã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2371, 11, 'Canápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2372, 11, 'Cana Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2373, 11, 'Candeias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2374, 11, 'Cantagalo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2375, 11, 'Caparaó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2376, 11, 'Capela Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2377, 11, 'Capelinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2378, 11, 'Capetinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2379, 11, 'Capim Branco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2380, 11, 'Capinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2381, 11, 'Capitão Andrade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2382, 11, 'Capitão Enéas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2383, 11, 'Capitólio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2384, 11, 'Caputira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2385, 11, 'Caraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2386, 11, 'Caranaíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2387, 11, 'Carandaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2388, 11, 'Carangola');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2389, 11, 'Caratinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2390, 11, 'Carbonita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2391, 11, 'Careaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2392, 11, 'Carlos Chagas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2393, 11, 'Carmésia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2394, 11, 'Carmo da Cachoeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2395, 11, 'Carmo da Mata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2396, 11, 'Carmo de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2397, 11, 'Carmo do Cajuru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2398, 11, 'Carmo do Paranaíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2399, 11, 'Carmo do Rio Claro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2400, 11, 'Carmópolis de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2401, 11, 'Carneirinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2402, 11, 'Carrancas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2403, 11, 'Carvalhópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2404, 11, 'Carvalhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2405, 11, 'Casa Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2406, 11, 'Cascalho Rico');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2407, 11, 'Cássia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2408, 11, 'Conceição da Barra de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2409, 11, 'Cataguases');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2410, 11, 'Catas Altas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2411, 11, 'Catas Altas da Noruega');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2412, 11, 'Catuji');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2413, 11, 'Catuti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2414, 11, 'Caxambu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2415, 11, 'Cedro do Abaeté');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2416, 11, 'Central de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2417, 11, 'Centralina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2418, 11, 'Chácara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2419, 11, 'Chalé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2420, 11, 'Chapada do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2421, 11, 'Chapada Gaúcha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2422, 11, 'Chiador');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2423, 11, 'Cipotânea');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2424, 11, 'Claraval');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2425, 11, 'Claro dos Poções');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2426, 11, 'Cláudio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2427, 11, 'Coimbra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2428, 11, 'Coluna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2429, 11, 'Comendador Gomes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2430, 11, 'Comercinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2431, 11, 'Conceição da Aparecida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2432, 11, 'Conceição das Pedras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2433, 11, 'Conceição das Alagoas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2434, 11, 'Conceição de Ipanema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2435, 11, 'Conceição do Mato Dentro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2436, 11, 'Conceição do Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2437, 11, 'Conceição do Rio Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2438, 11, 'Conceição dos Ouros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2439, 11, 'Cônego Marinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2440, 11, 'Confins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2441, 11, 'Congonhal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2442, 11, 'Congonhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2443, 11, 'Congonhas do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2444, 11, 'Conquista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2445, 11, 'Conselheiro Lafaiete');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2446, 11, 'Conselheiro Pena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2447, 11, 'Consolação');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2448, 11, 'Contagem');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2449, 11, 'Coqueiral');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2450, 11, 'Coração de Jesus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2451, 11, 'Cordisburgo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2452, 11, 'Cordislândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2453, 11, 'Corinto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2454, 11, 'Coroaci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2455, 11, 'Coromandel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2456, 11, 'Coronel Fabriciano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2457, 11, 'Coronel Murta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2458, 11, 'Coronel Pacheco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2459, 11, 'Coronel Xavier Chaves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2460, 11, 'Córrego Danta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2461, 11, 'Córrego do Bom Jesus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2462, 11, 'Córrego Fundo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2463, 11, 'Córrego Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2464, 11, 'Couto de Magalhães de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2465, 11, 'Crisólita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2466, 11, 'Cristais');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2467, 11, 'Cristália');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2468, 11, 'Cristiano Otoni');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2469, 11, 'Cristina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2470, 11, 'Crucilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2471, 11, 'Cruzeiro da Fortaleza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2472, 11, 'Cruzília');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2473, 11, 'Cuparaque');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2474, 11, 'Curral de Dentro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2475, 11, 'Curvelo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2476, 11, 'Datas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2477, 11, 'Delfim Moreira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2478, 11, 'Delfinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2479, 11, 'Delta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2480, 11, 'Descoberto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2481, 11, 'Desterro de Entre Rios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2482, 11, 'Desterro do Melo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2483, 11, 'Diamantina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2484, 11, 'Diogo de Vasconcelos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2485, 11, 'Dionísio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2486, 11, 'Divinésia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2487, 11, 'Divino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2488, 11, 'Divino das Laranjeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2489, 11, 'Divinolândia de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2490, 11, 'Divinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2491, 11, 'Divisa Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2492, 11, 'Divisa Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2493, 11, 'Divisópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2494, 11, 'Dom Bosco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2495, 11, 'Dom Cavati');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2496, 11, 'Dom Joaquim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2497, 11, 'Dom Silvério');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2498, 11, 'Dom Viçoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2499, 11, 'Dona Eusébia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2500, 11, 'Dores de Campos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2501, 11, 'Dores de Guanhães');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2502, 11, 'Dores do Indaiá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2503, 11, 'Dores do Turvo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2504, 11, 'Doresópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2505, 11, 'Douradoquara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2506, 11, 'Durandé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2507, 11, 'Elói Mendes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2508, 11, 'Engenheiro Caldas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2509, 11, 'Engenheiro Navarro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2510, 11, 'Entre Folhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2511, 11, 'Entre Rios de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2512, 11, 'Ervália');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2513, 11, 'Esmeraldas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2514, 11, 'Espera Feliz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2515, 11, 'Espinosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2516, 11, 'Espírito Santo do Dourado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2517, 11, 'Estiva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2518, 11, 'Estrela Dalva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2519, 11, 'Estrela do Indaiá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2520, 11, 'Estrela do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2521, 11, 'Eugenópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2522, 11, 'Ewbank da Câmara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2523, 11, 'Extrema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2524, 11, 'Fama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2525, 11, 'Faria Lemos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2526, 11, 'Felício dos Santos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2527, 11, 'São Gonçalo do Rio Preto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2528, 11, 'Felisburgo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2529, 11, 'Felixlândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2530, 11, 'Fernandes Tourinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2531, 11, 'Ferros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2532, 11, 'Fervedouro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2533, 11, 'Florestal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2534, 11, 'Formiga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2535, 11, 'Formoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2536, 11, 'Fortaleza de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2537, 11, 'Fortuna de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2538, 11, 'Francisco Badaró');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2539, 11, 'Francisco Dumont');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2540, 11, 'Francisco Sá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2541, 11, 'Franciscópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2542, 11, 'Frei Gaspar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2543, 11, 'Frei Inocêncio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2544, 11, 'Frei Lagonegro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2545, 11, 'Fronteira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2546, 11, 'Fronteira dos Vales');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2547, 11, 'Fruta de Leite');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2548, 11, 'Frutal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2549, 11, 'Funilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2550, 11, 'Galiléia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2551, 11, 'Gameleiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2552, 11, 'Glaucilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2553, 11, 'Goiabeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2554, 11, 'Goianá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2555, 11, 'Gonçalves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2556, 11, 'Gonzaga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2557, 11, 'Gouveia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2558, 11, 'Governador Valadares');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2559, 11, 'Grão Mogol');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2560, 11, 'Grupiara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2561, 11, 'Guanhães');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2562, 11, 'Guapé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2563, 11, 'Guaraciaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2564, 11, 'Guaraciama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2565, 11, 'Guaranésia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2566, 11, 'Guarani');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2567, 11, 'Guarará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2568, 11, 'Guarda-Mor');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2569, 11, 'Guaxupé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2570, 11, 'Guidoval');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2571, 11, 'Guimarânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2572, 11, 'Guiricema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2573, 11, 'Gurinhatã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2574, 11, 'Heliodora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2575, 11, 'Iapu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2576, 11, 'Ibertioga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2577, 11, 'Ibiá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2578, 11, 'Ibiaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2579, 11, 'Ibiracatu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2580, 11, 'Ibiraci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2581, 11, 'Ibirité');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2582, 11, 'Ibitiúra de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2583, 11, 'Ibituruna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2584, 11, 'Icaraí de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2585, 11, 'Igarapé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2586, 11, 'Igaratinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2587, 11, 'Iguatama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2588, 11, 'Ijaci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2589, 11, 'Ilicínea');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2590, 11, 'Imbé de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2591, 11, 'Inconfidentes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2592, 11, 'Indaiabira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2593, 11, 'Indianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2594, 11, 'Ingaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2595, 11, 'Inhapim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2596, 11, 'Inhaúma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2597, 11, 'Inimutaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2598, 11, 'Ipaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2599, 11, 'Ipanema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2600, 11, 'Ipatinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2601, 11, 'Ipiaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2602, 11, 'Ipuiúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2603, 11, 'Iraí de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2604, 11, 'Itabira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2605, 11, 'Itabirinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2606, 11, 'Itabirito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2607, 11, 'Itacambira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2608, 11, 'Itacarambi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2609, 11, 'Itaguara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2610, 11, 'Itaipé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2611, 11, 'Itajubá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2612, 11, 'Itamarandiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2613, 11, 'Itamarati de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2614, 11, 'Itambacuri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2615, 11, 'Itambé do Mato Dentro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2616, 11, 'Itamogi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2617, 11, 'Itamonte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2618, 11, 'Itanhandu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2619, 11, 'Itanhomi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2620, 11, 'Itaobim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2621, 11, 'Itapagipe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2622, 11, 'Itapecerica');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2623, 11, 'Itapeva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2624, 11, 'Itatiaiuçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2625, 11, 'Itaú de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2626, 11, 'Itaúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2627, 11, 'Itaverava');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2628, 11, 'Itinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2629, 11, 'Itueta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2630, 11, 'Ituiutaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2631, 11, 'Itumirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2632, 11, 'Iturama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2633, 11, 'Itutinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2634, 11, 'Jaboticatubas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2635, 11, 'Jacinto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2636, 11, 'Jacuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2637, 11, 'Jacutinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2638, 11, 'Jaguaraçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2639, 11, 'Jaíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2640, 11, 'Jampruca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2641, 11, 'Janaúba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2642, 11, 'Januária');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2643, 11, 'Japaraíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2644, 11, 'Japonvar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2645, 11, 'Jeceaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2646, 11, 'Jenipapo de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2647, 11, 'Jequeri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2648, 11, 'Jequitaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2649, 11, 'Jequitibá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2650, 11, 'Jequitinhonha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2651, 11, 'Jesuânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2652, 11, 'Joaíma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2653, 11, 'Joanésia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2654, 11, 'João Monlevade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2655, 11, 'João Pinheiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2656, 11, 'Joaquim Felício');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2657, 11, 'Jordânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2658, 11, 'José Gonçalves de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2659, 11, 'José Raydan');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2660, 11, 'Josenópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2661, 11, 'Nova União');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2662, 11, 'Juatuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2663, 11, 'Juiz de Fora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2664, 11, 'Juramento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2665, 11, 'Juruaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2666, 11, 'Juvenília');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2667, 11, 'Ladainha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2668, 11, 'Lagamar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2669, 11, 'Lagoa da Prata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2670, 11, 'Lagoa dos Patos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2671, 11, 'Lagoa Dourada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2672, 11, 'Lagoa Formosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2673, 11, 'Lagoa Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2674, 11, 'Lagoa Santa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2675, 11, 'Lajinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2676, 11, 'Lambari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2677, 11, 'Lamim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2678, 11, 'Laranjal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2679, 11, 'Lassance');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2680, 11, 'Lavras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2681, 11, 'Leandro Ferreira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2682, 11, 'Leme do Prado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2683, 11, 'Leopoldina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2684, 11, 'Liberdade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2685, 11, 'Lima Duarte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2686, 11, 'Limeira do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2687, 11, 'Lontra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2688, 11, 'Luisburgo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2689, 11, 'Luislândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2690, 11, 'Luminárias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2691, 11, 'Luz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2692, 11, 'Machacalis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2693, 11, 'Machado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2694, 11, 'Madre de Deus de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2695, 11, 'Malacacheta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2696, 11, 'Mamonas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2697, 11, 'Manga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2698, 11, 'Manhuaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2699, 11, 'Manhumirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2700, 11, 'Mantena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2701, 11, 'Maravilhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2702, 11, 'Mar de Espanha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2703, 11, 'Maria da Fé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2704, 11, 'Mariana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2705, 11, 'Marilac');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2706, 11, 'Mário Campos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2707, 11, 'Maripá de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2708, 11, 'Marliéria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2709, 11, 'Marmelópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2710, 11, 'Martinho Campos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2711, 11, 'Martins Soares');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2712, 11, 'Mata Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2713, 11, 'Materlândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2714, 11, 'Mateus Leme');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2715, 11, 'Matias Barbosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2716, 11, 'Matias Cardoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2717, 11, 'Matipó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2718, 11, 'Mato Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2719, 11, 'Matozinhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2720, 11, 'Matutina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2721, 11, 'Medeiros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2722, 11, 'Medina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2723, 11, 'Mendes Pimentel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2724, 11, 'Mercês');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2725, 11, 'Mesquita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2726, 11, 'Minas Novas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2727, 11, 'Minduri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2728, 11, 'Mirabela');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2729, 11, 'Miradouro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2730, 11, 'Miraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2731, 11, 'Miravânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2732, 11, 'Moeda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2733, 11, 'Moema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2734, 11, 'Monjolos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2735, 11, 'Monsenhor Paulo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2736, 11, 'Montalvânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2737, 11, 'Monte Alegre de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2738, 11, 'Monte Azul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2739, 11, 'Monte Belo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2740, 11, 'Monte Carmelo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2741, 11, 'Monte Formoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2742, 11, 'Monte Santo de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2743, 11, 'Montes Claros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2744, 11, 'Monte Sião');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2745, 11, 'Montezuma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2746, 11, 'Morada Nova de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2747, 11, 'Morro da Garça');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2748, 11, 'Morro do Pilar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2749, 11, 'Munhoz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2750, 11, 'Muriaé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2751, 11, 'Mutum');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2752, 11, 'Muzambinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2753, 11, 'Nacip Raydan');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2754, 11, 'Nanuque');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2755, 11, 'Naque');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2756, 11, 'Natalândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2757, 11, 'Natércia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2758, 11, 'Nazareno');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2759, 11, 'Nepomuceno');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2760, 11, 'Ninheira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2761, 11, 'Nova Belém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2762, 11, 'Nova Era');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2763, 11, 'Nova Lima');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2764, 11, 'Nova Módica');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2765, 11, 'Nova Ponte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2766, 11, 'Nova Porteirinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2767, 11, 'Nova Resende');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2768, 11, 'Nova Serrana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2769, 11, 'Novo Cruzeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2770, 11, 'Novo Oriente de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2771, 11, 'Novorizonte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2772, 11, 'Olaria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2773, 11, 'Olhos-d Água');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2774, 11, 'Olímpio Noronha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2775, 11, 'Oliveira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2776, 11, 'Oliveira Fortes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2777, 11, 'Onça de Pitangui');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2778, 11, 'Oratórios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2779, 11, 'Orizânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2780, 11, 'Ouro Branco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2781, 11, 'Ouro Fino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2782, 11, 'Ouro Preto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2783, 11, 'Ouro Verde de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2784, 11, 'Padre Carvalho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2785, 11, 'Padre Paraíso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2786, 11, 'Paineiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2787, 11, 'Pains');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2788, 11, 'Pai Pedro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2789, 11, 'Paiva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2790, 11, 'Palma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2791, 11, 'Palmópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2792, 11, 'Papagaios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2793, 11, 'Paracatu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2794, 11, 'Pará de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2795, 11, 'Paraguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2796, 11, 'Paraisópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2797, 11, 'Paraopeba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2798, 11, 'Passabém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2799, 11, 'Passa Quatro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2800, 11, 'Passa Tempo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2801, 11, 'Passa-Vinte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2802, 11, 'Passos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2803, 11, 'Patis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2804, 11, 'Patos de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2805, 11, 'Patrocínio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2806, 11, 'Patrocínio do Muriaé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2807, 11, 'Paula Cândido');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2808, 11, 'Paulistas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2809, 11, 'Pavão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2810, 11, 'Peçanha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2811, 11, 'Pedra Azul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2812, 11, 'Pedra Bonita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2813, 11, 'Pedra do Anta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2814, 11, 'Pedra do Indaiá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2815, 11, 'Pedra Dourada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2816, 11, 'Pedralva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2817, 11, 'Pedras de Maria da Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2818, 11, 'Pedrinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2819, 11, 'Pedro Leopoldo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2820, 11, 'Pedro Teixeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2821, 11, 'Pequeri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2822, 11, 'Pequi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2823, 11, 'Perdigão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2824, 11, 'Perdizes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2825, 11, 'Perdões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2826, 11, 'Periquito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2827, 11, 'Pescador');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2828, 11, 'Piau');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2829, 11, 'Piedade de Caratinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2830, 11, 'Piedade de Ponte Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2831, 11, 'Piedade do Rio Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2832, 11, 'Piedade dos Gerais');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2833, 11, 'Pimenta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2834, 11, 'Pingo-d Água');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2835, 11, 'Pintópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2836, 11, 'Piracema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2837, 11, 'Pirajuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2838, 11, 'Piranga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2839, 11, 'Piranguçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2840, 11, 'Piranguinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2841, 11, 'Pirapetinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2842, 11, 'Pirapora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2843, 11, 'Piraúba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2844, 11, 'Pitangui');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2845, 11, 'Piumhi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2846, 11, 'Planura');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2847, 11, 'Poço Fundo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2848, 11, 'Poços de Caldas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2849, 11, 'Pocrane');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2850, 11, 'Pompéu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2851, 11, 'Ponte Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2852, 11, 'Ponto Chique');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2853, 11, 'Ponto dos Volantes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2854, 11, 'Porteirinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2855, 11, 'Porto Firme');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2856, 11, 'Poté');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2857, 11, 'Pouso Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2858, 11, 'Pouso Alto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2859, 11, 'Prados');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2860, 11, 'Prata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2861, 11, 'Pratápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2862, 11, 'Pratinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2863, 11, 'Presidente Bernardes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2864, 11, 'Presidente Juscelino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2865, 11, 'Presidente Kubitschek');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2866, 11, 'Presidente Olegário');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2867, 11, 'Alto Jequitibá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2868, 11, 'Prudente de Morais');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2869, 11, 'Quartel Geral');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2870, 11, 'Queluzito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2871, 11, 'Raposos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2872, 11, 'Raul Soares');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2873, 11, 'Recreio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2874, 11, 'Reduto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2875, 11, 'Resende Costa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2876, 11, 'Resplendor');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2877, 11, 'Ressaquinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2878, 11, 'Riachinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2879, 11, 'Riacho dos Machados');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2880, 11, 'Ribeirão das Neves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2881, 11, 'Ribeirão Vermelho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2882, 11, 'Rio Acima');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2883, 11, 'Rio Casca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2884, 11, 'Rio Doce');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2885, 11, 'Rio do Prado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2886, 11, 'Rio Espera');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2887, 11, 'Rio Manso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2888, 11, 'Rio Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2889, 11, 'Rio Paranaíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2890, 11, 'Rio Pardo de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2891, 11, 'Rio Piracicaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2892, 11, 'Rio Pomba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2893, 11, 'Rio Preto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2894, 11, 'Rio Vermelho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2895, 11, 'Ritápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2896, 11, 'Rochedo de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2897, 11, 'Rodeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2898, 11, 'Romaria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2899, 11, 'Rosário da Limeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2900, 11, 'Rubelita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2901, 11, 'Rubim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2902, 11, 'Sabará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2903, 11, 'Sabinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2904, 11, 'Sacramento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2905, 11, 'Salinas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2906, 11, 'Salto da Divisa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2907, 11, 'Santa Bárbara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2908, 11, 'Santa Bárbara do Leste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2909, 11, 'Santa Bárbara do Monte Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2910, 11, 'Santa Bárbara do Tugúrio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2911, 11, 'Santa Cruz de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2912, 11, 'Santa Cruz de Salinas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2913, 11, 'Santa Cruz do Escalvado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2914, 11, 'Santa Efigênia de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2915, 11, 'Santa Fé de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2916, 11, 'Santa Helena de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2917, 11, 'Santa Juliana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2918, 11, 'Santa Luzia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2919, 11, 'Santa Margarida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2920, 11, 'Santa Maria de Itabira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2921, 11, 'Santa Maria do Salto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2922, 11, 'Santa Maria do Suaçuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2923, 11, 'Santana da Vargem');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2924, 11, 'Santana de Cataguases');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2925, 11, 'Santana de Pirapama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2926, 11, 'Santana do Deserto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2927, 11, 'Santana do Garambéu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2928, 11, 'Santana do Jacaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2929, 11, 'Santana do Manhuaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2930, 11, 'Santana do Paraíso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2931, 11, 'Santana do Riacho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2932, 11, 'Santana dos Montes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2933, 11, 'Santa Rita de Caldas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2934, 11, 'Santa Rita de Jacutinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2935, 11, 'Santa Rita de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2936, 11, 'Santa Rita de Ibitipoca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2937, 11, 'Santa Rita do Itueto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2938, 11, 'Santa Rita do Sapucaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2939, 11, 'Santa Rosa da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2940, 11, 'Santa Vitória');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2941, 11, 'Santo Antônio do Amparo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2942, 11, 'Santo Antônio do Aventureiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2943, 11, 'Santo Antônio do Grama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2944, 11, 'Santo Antônio do Itambé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2945, 11, 'Santo Antônio do Jacinto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2946, 11, 'Santo Antônio do Monte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2947, 11, 'Santo Antônio do Retiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2948, 11, 'Santo Antônio do Rio Abaixo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2949, 11, 'Santo Hipólito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2950, 11, 'Santos Dumont');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2951, 11, 'São Bento Abade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2952, 11, 'São Brás do Suaçuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2953, 11, 'São Domingos das Dores');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2954, 11, 'São Domingos do Prata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2955, 11, 'São Félix de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2956, 11, 'São Francisco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2957, 11, 'São Francisco de Paula');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2958, 11, 'São Francisco de Sales');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2959, 11, 'São Francisco do Glória');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2960, 11, 'São Geraldo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2961, 11, 'São Geraldo da Piedade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2962, 11, 'São Geraldo do Baixio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2963, 11, 'São Gonçalo do Abaeté');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2964, 11, 'São Gonçalo do Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2965, 11, 'São Gonçalo do Rio Abaixo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2966, 11, 'São Gonçalo do Sapucaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2967, 11, 'São Gotardo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2968, 11, 'São João Batista do Glória');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2969, 11, 'São João da Lagoa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2970, 11, 'São João da Mata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2971, 11, 'São João da Ponte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2972, 11, 'São João das Missões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2973, 11, 'São João del Rei');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2974, 11, 'São João do Manhuaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2975, 11, 'São João do Manteninha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2976, 11, 'São João do Oriente');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2977, 11, 'São João do Pacuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2978, 11, 'São João do Paraíso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2979, 11, 'São João Evangelista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2980, 11, 'São João Nepomuceno');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2981, 11, 'São Joaquim de Bicas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2982, 11, 'São José da Barra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2983, 11, 'São José da Lapa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2984, 11, 'São José da Safira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2985, 11, 'São José da Varginha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2986, 11, 'São José do Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2987, 11, 'São José do Divino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2988, 11, 'São José do Goiabal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2989, 11, 'São José do Jacuri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2990, 11, 'São José do Mantimento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2991, 11, 'São Lourenço');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2992, 11, 'São Miguel do Anta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2993, 11, 'São Pedro da União');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2994, 11, 'São Pedro dos Ferros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2995, 11, 'São Pedro do Suaçuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2996, 11, 'São Romão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2997, 11, 'São Roque de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2998, 11, 'São Sebastião da Bela Vista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (2999, 11, 'São Sebastião da Vargem Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3000, 11, 'São Sebastião do Anta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3001, 11, 'São Sebastião do Maranhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3002, 11, 'São Sebastião do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3003, 11, 'São Sebastião do Paraíso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3004, 11, 'São Sebastião do Rio Preto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3005, 11, 'São Sebastião do Rio Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3006, 11, 'São Tiago');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3007, 11, 'São Tomás de Aquino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3008, 11, 'São Thomé das Letras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3009, 11, 'São Vicente de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3010, 11, 'Sapucaí-Mirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3011, 11, 'Sardoá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3012, 11, 'Sarzedo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3013, 11, 'Setubinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3014, 11, 'Sem-Peixe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3015, 11, 'Senador Amaral');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3016, 11, 'Senador Cortes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3017, 11, 'Senador Firmino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3018, 11, 'Senador José Bento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3019, 11, 'Senador Modestino Gonçalves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3020, 11, 'Senhora de Oliveira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3021, 11, 'Senhora do Porto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3022, 11, 'Senhora dos Remédios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3023, 11, 'Sericita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3024, 11, 'Seritinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3025, 11, 'Serra Azul de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3026, 11, 'Serra da Saudade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3027, 11, 'Serra dos Aimorés');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3028, 11, 'Serra do Salitre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3029, 11, 'Serrania');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3030, 11, 'Serranópolis de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3031, 11, 'Serranos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3032, 11, 'Serro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3033, 11, 'Sete Lagoas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3034, 11, 'Silveirânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3035, 11, 'Silvianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3036, 11, 'Simão Pereira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3037, 11, 'Simonésia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3038, 11, 'Sobrália');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3039, 11, 'Soledade de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3040, 11, 'Tabuleiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3041, 11, 'Taiobeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3042, 11, 'Taparuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3043, 11, 'Tapira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3044, 11, 'Tapiraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3045, 11, 'Taquaraçu de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3046, 11, 'Tarumirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3047, 11, 'Teixeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3048, 11, 'Teófilo Otoni');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3049, 11, 'Timóteo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3050, 11, 'Tiradentes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3051, 11, 'Tiros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3052, 11, 'Tocantins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3053, 11, 'Tocos do Moji');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3054, 11, 'Toledo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3055, 11, 'Tombos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3056, 11, 'Três Corações');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3057, 11, 'Três Marias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3058, 11, 'Três Pontas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3059, 11, 'Tumiritinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3060, 11, 'Tupaciguara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3061, 11, 'Turmalina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3062, 11, 'Turvolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3063, 11, 'Ubá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3064, 11, 'Ubaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3065, 11, 'Ubaporanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3066, 11, 'Uberaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3067, 11, 'Uberlândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3068, 11, 'Umburatiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3069, 11, 'Unaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3070, 11, 'União de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3071, 11, 'Uruana de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3072, 11, 'Urucânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3073, 11, 'Urucuia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3074, 11, 'Vargem Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3075, 11, 'Vargem Bonita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3076, 11, 'Vargem Grande do Rio Pardo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3077, 11, 'Varginha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3078, 11, 'Varjão de Minas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3079, 11, 'Várzea da Palma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3080, 11, 'Varzelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3081, 11, 'Vazante');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3082, 11, 'Verdelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3083, 11, 'Veredinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3084, 11, 'Veríssimo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3085, 11, 'Vermelho Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3086, 11, 'Vespasiano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3087, 11, 'Viçosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3088, 11, 'Vieiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3089, 11, 'Mathias Lobato');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3090, 11, 'Virgem da Lapa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3091, 11, 'Virgínia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3092, 11, 'Virginópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3093, 11, 'Virgolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3094, 11, 'Visconde do Rio Branco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3095, 11, 'Volta Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3096, 11, 'Wenceslau Braz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3097, 8, 'Afonso Cláudio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3098, 8, 'Águia Branca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3099, 8, 'Água Doce do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3100, 8, 'Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3101, 8, 'Alfredo Chaves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3102, 8, 'Alto Rio Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3103, 8, 'Anchieta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3104, 8, 'Apiacá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3105, 8, 'Aracruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3106, 8, 'Atilio Vivacqua');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3107, 8, 'Baixo Guandu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3108, 8, 'Barra de São Francisco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3109, 8, 'Boa Esperança');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3110, 8, 'Bom Jesus do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3111, 8, 'Brejetuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3112, 8, 'Cachoeiro de Itapemirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3113, 8, 'Cariacica');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3114, 8, 'Castelo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3115, 8, 'Colatina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3116, 8, 'Conceição da Barra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3117, 8, 'Conceição do Castelo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3118, 8, 'Divino de São Lourenço');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3119, 8, 'Domingos Martins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3120, 8, 'Dores do Rio Preto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3121, 8, 'Ecoporanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3122, 8, 'Fundão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3123, 8, 'Governador Lindenberg');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3124, 8, 'Guaçuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3125, 8, 'Guarapari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3126, 8, 'Ibatiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3127, 8, 'Ibiraçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3128, 8, 'Ibitirama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3129, 8, 'Iconha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3130, 8, 'Irupi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3131, 8, 'Itaguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3132, 8, 'Itapemirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3133, 8, 'Itarana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3134, 8, 'Iúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3135, 8, 'Jaguaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3136, 8, 'Jerônimo Monteiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3137, 8, 'João Neiva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3138, 8, 'Laranja da Terra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3139, 8, 'Linhares');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3140, 8, 'Mantenópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3141, 8, 'Marataízes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3142, 8, 'Marechal Floriano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3143, 8, 'Marilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3144, 8, 'Mimoso do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3145, 8, 'Montanha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3146, 8, 'Mucurici');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3147, 8, 'Muniz Freire');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3148, 8, 'Muqui');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3149, 8, 'Nova Venécia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3150, 8, 'Pancas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3151, 8, 'Pedro Canário');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3152, 8, 'Pinheiros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3153, 8, 'Piúma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3154, 8, 'Ponto Belo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3155, 8, 'Presidente Kennedy');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3156, 8, 'Rio Bananal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3157, 8, 'Rio Novo do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3158, 8, 'Santa Leopoldina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3159, 8, 'Santa Maria de Jetibá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3160, 8, 'Santa Teresa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3161, 8, 'São Domingos do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3162, 8, 'São Gabriel da Palha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3163, 8, 'São José do Calçado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3164, 8, 'São Mateus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3165, 8, 'São Roque do Canaã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3166, 8, 'Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3167, 8, 'Sooretama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3168, 8, 'Vargem Alta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3169, 8, 'Venda Nova do Imigrante');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3170, 8, 'Viana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3171, 8, 'Vila Pavão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3172, 8, 'Vila Valério');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3173, 8, 'Vila Velha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3174, 8, 'Vitória');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3175, 19, 'Angra dos Reis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3176, 19, 'Aperibé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3177, 19, 'Araruama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3178, 19, 'Areal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3179, 19, 'Armação dos Búzios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3180, 19, 'Arraial do Cabo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3181, 19, 'Barra do Piraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3182, 19, 'Barra Mansa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3183, 19, 'Belford Roxo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3184, 19, 'Bom Jardim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3185, 19, 'Bom Jesus do Itabapoana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3186, 19, 'Cabo Frio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3187, 19, 'Cachoeiras de Macacu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3188, 19, 'Cambuci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3189, 19, 'Carapebus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3190, 19, 'Comendador Levy Gasparian');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3191, 19, 'Campos dos Goytacazes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3192, 19, 'Cantagalo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3193, 19, 'Cardoso Moreira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3194, 19, 'Carmo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3195, 19, 'Casimiro de Abreu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3196, 19, 'Conceição de Macabu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3197, 19, 'Cordeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3198, 19, 'Duas Barras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3199, 19, 'Duque de Caxias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3200, 19, 'Engenheiro Paulo de Frontin');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3201, 19, 'Guapimirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3202, 19, 'Iguaba Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3203, 19, 'Itaboraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3204, 19, 'Itaguaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3205, 19, 'Italva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3206, 19, 'Itaocara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3207, 19, 'Itaperuna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3208, 19, 'Itatiaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3209, 19, 'Japeri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3210, 19, 'Laje do Muriaé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3211, 19, 'Macaé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3212, 19, 'Macuco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3213, 19, 'Magé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3214, 19, 'Mangaratiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3215, 19, 'Maricá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3216, 19, 'Mendes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3217, 19, 'Mesquita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3218, 19, 'Miguel Pereira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3219, 19, 'Miracema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3220, 19, 'Natividade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3221, 19, 'Nilópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3222, 19, 'Niterói');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3223, 19, 'Nova Friburgo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3224, 19, 'Nova Iguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3225, 19, 'Paracambi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3226, 19, 'Paraíba do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3227, 19, 'Paraty');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3228, 19, 'Paty do Alferes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3229, 19, 'Petrópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3230, 19, 'Pinheiral');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3231, 19, 'Piraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3232, 19, 'Porciúncula');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3233, 19, 'Porto Real');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3234, 19, 'Quatis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3235, 19, 'Queimados');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3236, 19, 'Quissamã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3237, 19, 'Resende');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3238, 19, 'Rio Bonito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3239, 19, 'Rio Claro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3240, 19, 'Rio das Flores');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3241, 19, 'Rio das Ostras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3242, 19, 'Rio de Janeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3243, 19, 'Santa Maria Madalena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3244, 19, 'Santo Antônio de Pádua');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3245, 19, 'São Francisco de Itabapoana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3246, 19, 'São Fidélis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3247, 19, 'São Gonçalo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3248, 19, 'São João da Barra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3249, 19, 'São João de Meriti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3250, 19, 'São José de Ubá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3251, 19, 'São José do Vale do Rio Preto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3252, 19, 'São Pedro da Aldeia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3253, 19, 'São Sebastião do Alto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3254, 19, 'Sapucaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3255, 19, 'Saquarema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3256, 19, 'Seropédica');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3257, 19, 'Silva Jardim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3258, 19, 'Sumidouro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3259, 19, 'Tanguá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3260, 19, 'Teresópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3261, 19, 'Trajano de Moraes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3262, 19, 'Três Rios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3263, 19, 'Valença');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3264, 19, 'Varre-Sai');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3265, 19, 'Vassouras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3266, 19, 'Volta Redonda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3267, 26, 'Adamantina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3268, 26, 'Adolfo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3269, 26, 'Aguaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3270, 26, 'Águas da Prata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3271, 26, 'Águas de Lindóia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3272, 26, 'Águas de Santa Bárbara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3273, 26, 'Águas de São Pedro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3274, 26, 'Agudos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3275, 26, 'Alambari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3276, 26, 'Alfredo Marcondes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3277, 26, 'Altair');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3278, 26, 'Altinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3279, 26, 'Alto Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3280, 26, 'Alumínio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3281, 26, 'Álvares Florence');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3282, 26, 'Álvares Machado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3283, 26, 'Álvaro de Carvalho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3284, 26, 'Alvinlândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3285, 26, 'Americana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3286, 26, 'Américo Brasiliense');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3287, 26, 'Américo de Campos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3288, 26, 'Amparo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3289, 26, 'Analândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3290, 26, 'Andradina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3291, 26, 'Angatuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3292, 26, 'Anhembi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3293, 26, 'Anhumas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3294, 26, 'Aparecida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3295, 26, 'Aparecida d Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3296, 26, 'Apiaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3297, 26, 'Araçariguama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3298, 26, 'Araçatuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3299, 26, 'Araçoiaba da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3300, 26, 'Aramina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3301, 26, 'Arandu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3302, 26, 'Arapeí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3303, 26, 'Araraquara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3304, 26, 'Araras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3305, 26, 'Arco-Íris');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3306, 26, 'Arealva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3307, 26, 'Areias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3308, 26, 'Areiópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3309, 26, 'Ariranha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3310, 26, 'Artur Nogueira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3311, 26, 'Arujá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3312, 26, 'Aspásia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3313, 26, 'Assis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3314, 26, 'Atibaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3315, 26, 'Auriflama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3316, 26, 'Avaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3317, 26, 'Avanhandava');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3318, 26, 'Avaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3319, 26, 'Bady Bassitt');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3320, 26, 'Balbinos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3321, 26, 'Bálsamo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3322, 26, 'Bananal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3323, 26, 'Barão de Antonina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3324, 26, 'Barbosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3325, 26, 'Bariri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3326, 26, 'Barra Bonita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3327, 26, 'Barra do Chapéu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3328, 26, 'Barra do Turvo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3329, 26, 'Barretos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3330, 26, 'Barrinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3331, 26, 'Barueri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3332, 26, 'Bastos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3333, 26, 'Batatais');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3334, 26, 'Bauru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3335, 26, 'Bebedouro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3336, 26, 'Bento de Abreu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3337, 26, 'Bernardino de Campos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3338, 26, 'Bertioga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3339, 26, 'Bilac');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3340, 26, 'Birigui');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3341, 26, 'Biritiba-Mirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3342, 26, 'Boa Esperança do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3343, 26, 'Bocaina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3344, 26, 'Bofete');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3345, 26, 'Boituva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3346, 26, 'Bom Jesus dos Perdões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3347, 26, 'Bom Sucesso de Itararé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3348, 26, 'Borá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3349, 26, 'Boracéia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3350, 26, 'Borborema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3351, 26, 'Borebi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3352, 26, 'Botucatu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3353, 26, 'Bragança Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3354, 26, 'Braúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3355, 26, 'Brejo Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3356, 26, 'Brodowski');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3357, 26, 'Brotas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3358, 26, 'Buri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3359, 26, 'Buritama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3360, 26, 'Buritizal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3361, 26, 'Cabrália Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3362, 26, 'Cabreúva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3363, 26, 'Caçapava');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3364, 26, 'Cachoeira Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3365, 26, 'Caconde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3366, 26, 'Cafelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3367, 26, 'Caiabu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3368, 26, 'Caieiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3369, 26, 'Caiuá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3370, 26, 'Cajamar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3371, 26, 'Cajati');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3372, 26, 'Cajobi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3373, 26, 'Cajuru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3374, 26, 'Campina do Monte Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3375, 26, 'Campinas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3376, 26, 'Campo Limpo Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3377, 26, 'Campos do Jordão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3378, 26, 'Campos Novos Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3379, 26, 'Cananéia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3380, 26, 'Canas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3381, 26, 'Cândido Mota');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3382, 26, 'Cândido Rodrigues');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3383, 26, 'Canitar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3384, 26, 'Capão Bonito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3385, 26, 'Capela do Alto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3386, 26, 'Capivari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3387, 26, 'Caraguatatuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3388, 26, 'Carapicuíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3389, 26, 'Cardoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3390, 26, 'Casa Branca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3391, 26, 'Cássia dos Coqueiros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3392, 26, 'Castilho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3393, 26, 'Catanduva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3394, 26, 'Catiguá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3395, 26, 'Cedral');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3396, 26, 'Cerqueira César');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3397, 26, 'Cerquilho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3398, 26, 'Cesário Lange');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3399, 26, 'Charqueada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3400, 26, 'Clementina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3401, 26, 'Colina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3402, 26, 'Colômbia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3403, 26, 'Conchal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3404, 26, 'Conchas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3405, 26, 'Cordeirópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3406, 26, 'Coroados');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3407, 26, 'Coronel Macedo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3408, 26, 'Corumbataí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3409, 26, 'Cosmópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3410, 26, 'Cosmorama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3411, 26, 'Cotia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3412, 26, 'Cravinhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3413, 26, 'Cristais Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3414, 26, 'Cruzália');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3415, 26, 'Cruzeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3416, 26, 'Cubatão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3417, 26, 'Cunha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3418, 26, 'Descalvado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3419, 26, 'Diadema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3420, 26, 'Dirce Reis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3421, 26, 'Divinolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3422, 26, 'Dobrada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3423, 26, 'Dois Córregos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3424, 26, 'Dolcinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3425, 26, 'Dourado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3426, 26, 'Dracena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3427, 26, 'Duartina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3428, 26, 'Dumont');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3429, 26, 'Echaporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3430, 26, 'Eldorado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3431, 26, 'Elias Fausto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3432, 26, 'Elisiário');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3433, 26, 'Embaúba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3434, 26, 'Embu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3435, 26, 'Embu-Guaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3436, 26, 'Emilianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3437, 26, 'Engenheiro Coelho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3438, 26, 'Espírito Santo do Pinhal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3439, 26, 'Espírito Santo do Turvo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3440, 26, 'Estrela d Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3441, 26, 'Estrela do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3442, 26, 'Euclides da Cunha Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3443, 26, 'Fartura');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3444, 26, 'Fernandópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3445, 26, 'Fernando Prestes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3446, 26, 'Fernão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3447, 26, 'Ferraz de Vasconcelos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3448, 26, 'Flora Rica');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3449, 26, 'Floreal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3450, 26, 'Flórida Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3451, 26, 'Florínia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3452, 26, 'Franca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3453, 26, 'Francisco Morato');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3454, 26, 'Franco da Rocha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3455, 26, 'Gabriel Monteiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3456, 26, 'Gália');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3457, 26, 'Garça');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3458, 26, 'Gastão Vidigal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3459, 26, 'Gavião Peixoto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3460, 26, 'General Salgado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3461, 26, 'Getulina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3462, 26, 'Glicério');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3463, 26, 'Guaiçara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3464, 26, 'Guaimbê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3465, 26, 'Guaíra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3466, 26, 'Guapiaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3467, 26, 'Guapiara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3468, 26, 'Guará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3469, 26, 'Guaraçaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3470, 26, 'Guaraci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3471, 26, 'Guarani d Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3472, 26, 'Guarantã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3473, 26, 'Guararapes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3474, 26, 'Guararema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3475, 26, 'Guaratinguetá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3476, 26, 'Guareí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3477, 26, 'Guariba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3478, 26, 'Guarujá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3479, 26, 'Guarulhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3480, 26, 'Guatapará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3481, 26, 'Guzolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3482, 26, 'Herculândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3483, 26, 'Holambra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3484, 26, 'Hortolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3485, 26, 'Iacanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3486, 26, 'Iacri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3487, 26, 'Iaras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3488, 26, 'Ibaté');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3489, 26, 'Ibirá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3490, 26, 'Ibirarema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3491, 26, 'Ibitinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3492, 26, 'Ibiúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3493, 26, 'Icém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3494, 26, 'Iepê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3495, 26, 'Igaraçu do Tietê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3496, 26, 'Igarapava');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3497, 26, 'Igaratá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3498, 26, 'Iguape');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3499, 26, 'Ilhabela');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3500, 26, 'Ilha Comprida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3501, 26, 'Ilha Solteira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3502, 26, 'Indaiatuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3503, 26, 'Indiana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3504, 26, 'Indiaporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3505, 26, 'Inúbia Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3506, 26, 'Ipaussu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3507, 26, 'Iperó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3508, 26, 'Ipeúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3509, 26, 'Ipiguá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3510, 26, 'Iporanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3511, 26, 'Ipuã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3512, 26, 'Iracemápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3513, 26, 'Irapuã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3514, 26, 'Irapuru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3515, 26, 'Itaberá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3516, 26, 'Itaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3517, 26, 'Itajobi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3518, 26, 'Itaju');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3519, 26, 'Itanhaém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3520, 26, 'Itaóca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3521, 26, 'Itapecerica da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3522, 26, 'Itapetininga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3523, 26, 'Itapeva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3524, 26, 'Itapevi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3525, 26, 'Itapira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3526, 26, 'Itapirapuã Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3527, 26, 'Itápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3528, 26, 'Itaporanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3529, 26, 'Itapuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3530, 26, 'Itapura');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3531, 26, 'Itaquaquecetuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3532, 26, 'Itararé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3533, 26, 'Itariri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3534, 26, 'Itatiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3535, 26, 'Itatinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3536, 26, 'Itirapina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3537, 26, 'Itirapuã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3538, 26, 'Itobi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3539, 26, 'Itu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3540, 26, 'Itupeva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3541, 26, 'Ituverava');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3542, 26, 'Jaborandi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3543, 26, 'Jaboticabal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3544, 26, 'Jacareí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3545, 26, 'Jaci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3546, 26, 'Jacupiranga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3547, 26, 'Jaguariúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3548, 26, 'Jales');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3549, 26, 'Jambeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3550, 26, 'Jandira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3551, 26, 'Jardinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3552, 26, 'Jarinu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3553, 26, 'Jaú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3554, 26, 'Jeriquara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3555, 26, 'Joanópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3556, 26, 'João Ramalho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3557, 26, 'José Bonifácio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3558, 26, 'Júlio Mesquita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3559, 26, 'Jumirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3560, 26, 'Jundiaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3561, 26, 'Junqueirópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3562, 26, 'Juquiá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3563, 26, 'Juquitiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3564, 26, 'Lagoinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3565, 26, 'Laranjal Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3566, 26, 'Lavínia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3567, 26, 'Lavrinhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3568, 26, 'Leme');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3569, 26, 'Lençóis Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3570, 26, 'Limeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3571, 26, 'Lindóia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3572, 26, 'Lins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3573, 26, 'Lorena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3574, 26, 'Lourdes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3575, 26, 'Louveira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3576, 26, 'Lucélia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3577, 26, 'Lucianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3578, 26, 'Luís Antônio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3579, 26, 'Luiziânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3580, 26, 'Lupércio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3581, 26, 'Lutécia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3582, 26, 'Macatuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3583, 26, 'Macaubal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3584, 26, 'Macedônia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3585, 26, 'Magda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3586, 26, 'Mairinque');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3587, 26, 'Mairiporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3588, 26, 'Manduri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3589, 26, 'Marabá Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3590, 26, 'Maracaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3591, 26, 'Marapoama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3592, 26, 'Mariápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3593, 26, 'Marília');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3594, 26, 'Marinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3595, 26, 'Martinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3596, 26, 'Matão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3597, 26, 'Mauá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3598, 26, 'Mendonça');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3599, 26, 'Meridiano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3600, 26, 'Mesópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3601, 26, 'Miguelópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3602, 26, 'Mineiros do Tietê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3603, 26, 'Miracatu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3604, 26, 'Mira Estrela');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3605, 26, 'Mirandópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3606, 26, 'Mirante do Paranapanema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3607, 26, 'Mirassol');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3608, 26, 'Mirassolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3609, 26, 'Mococa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3610, 26, 'Mogi das Cruzes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3611, 26, 'Mogi Guaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3612, 26, 'Mogi Mirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3613, 26, 'Mombuca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3614, 26, 'Monções');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3615, 26, 'Mongaguá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3616, 26, 'Monte Alegre do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3617, 26, 'Monte Alto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3618, 26, 'Monte Aprazível');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3619, 26, 'Monte Azul Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3620, 26, 'Monte Castelo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3621, 26, 'Monteiro Lobato');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3622, 26, 'Monte Mor');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3623, 26, 'Morro Agudo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3624, 26, 'Morungaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3625, 26, 'Motuca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3626, 26, 'Murutinga do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3627, 26, 'Nantes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3628, 26, 'Narandiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3629, 26, 'Natividade da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3630, 26, 'Nazaré Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3631, 26, 'Neves Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3632, 26, 'Nhandeara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3633, 26, 'Nipoã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3634, 26, 'Nova Aliança');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3635, 26, 'Nova Campina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3636, 26, 'Nova Canaã Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3637, 26, 'Nova Castilho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3638, 26, 'Nova Europa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3639, 26, 'Nova Granada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3640, 26, 'Nova Guataporanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3641, 26, 'Nova Independência');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3642, 26, 'Novais');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3643, 26, 'Nova Luzitânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3644, 26, 'Nova Odessa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3645, 26, 'Novo Horizonte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3646, 26, 'Nuporanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3647, 26, 'Ocauçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3648, 26, 'Óleo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3649, 26, 'Olímpia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3650, 26, 'Onda Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3651, 26, 'Oriente');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3652, 26, 'Orindiúva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3653, 26, 'Orlândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3654, 26, 'Osasco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3655, 26, 'Oscar Bressane');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3656, 26, 'Osvaldo Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3657, 26, 'Ourinhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3658, 26, 'Ouroeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3659, 26, 'Ouro Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3660, 26, 'Pacaembu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3661, 26, 'Palestina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3662, 26, 'Palmares Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3663, 26, 'Palmeira dOeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3664, 26, 'Palmital');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3665, 26, 'Panorama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3666, 26, 'Paraguaçu Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3667, 26, 'Paraibuna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3668, 26, 'Paraíso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3669, 26, 'Paranapanema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3670, 26, 'Paranapuã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3671, 26, 'Parapuã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3672, 26, 'Pardinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3673, 26, 'Pariquera-Açu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3674, 26, 'Parisi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3675, 26, 'Patrocínio Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3676, 26, 'Paulicéia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3677, 26, 'Paulínia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3678, 26, 'Paulistânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3679, 26, 'Paulo de Faria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3680, 26, 'Pederneiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3681, 26, 'Pedra Bela');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3682, 26, 'Pedranópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3683, 26, 'Pedregulho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3684, 26, 'Pedreira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3685, 26, 'Pedrinhas Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3686, 26, 'Pedro de Toledo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3687, 26, 'Penápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3688, 26, 'Pereira Barreto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3689, 26, 'Pereiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3690, 26, 'Peruíbe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3691, 26, 'Piacatu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3692, 26, 'Piedade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3693, 26, 'Pilar do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3694, 26, 'Pindamonhangaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3695, 26, 'Pindorama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3696, 26, 'Pinhalzinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3697, 26, 'Piquerobi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3698, 26, 'Piquete');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3699, 26, 'Piracaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3700, 26, 'Piracicaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3701, 26, 'Piraju');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3702, 26, 'Pirajuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3703, 26, 'Pirangi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3704, 26, 'Pirapora do Bom Jesus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3705, 26, 'Pirapozinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3706, 26, 'Pirassununga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3707, 26, 'Piratininga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3708, 26, 'Pitangueiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3709, 26, 'Planalto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3710, 26, 'Platina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3711, 26, 'Poá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3712, 26, 'Poloni');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3713, 26, 'Pompéia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3714, 26, 'Pongaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3715, 26, 'Pontal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3716, 26, 'Pontalinda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3717, 26, 'Pontes Gestal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3718, 26, 'Populina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3719, 26, 'Porangaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3720, 26, 'Porto Feliz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3721, 26, 'Porto Ferreira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3722, 26, 'Potim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3723, 26, 'Potirendaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3724, 26, 'Pracinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3725, 26, 'Pradópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3726, 26, 'Praia Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3727, 26, 'Pratânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3728, 26, 'Presidente Alves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3729, 26, 'Presidente Bernardes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3730, 26, 'Presidente Epitácio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3731, 26, 'Presidente Prudente');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3732, 26, 'Presidente Venceslau');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3733, 26, 'Promissão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3734, 26, 'Quadra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3735, 26, 'Quatá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3736, 26, 'Queiroz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3737, 26, 'Queluz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3738, 26, 'Quintana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3739, 26, 'Rafard');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3740, 26, 'Rancharia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3741, 26, 'Redenção da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3742, 26, 'Regente Feijó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3743, 26, 'Reginópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3744, 26, 'Registro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3745, 26, 'Restinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3746, 26, 'Ribeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3747, 26, 'Ribeirão Bonito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3748, 26, 'Ribeirão Branco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3749, 26, 'Ribeirão Corrente');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3750, 26, 'Ribeirão do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3751, 26, 'Ribeirão dos Índios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3752, 26, 'Ribeirão Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3753, 26, 'Ribeirão Pires');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3754, 26, 'Ribeirão Preto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3755, 26, 'Riversul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3756, 26, 'Rifaina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3757, 26, 'Rincão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3758, 26, 'Rinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3759, 26, 'Rio Claro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3760, 26, 'Rio das Pedras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3761, 26, 'Rio Grande da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3762, 26, 'Riolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3763, 26, 'Rosana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3764, 26, 'Roseira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3765, 26, 'Rubiácea');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3766, 26, 'Rubinéia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3767, 26, 'Sabino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3768, 26, 'Sagres');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3769, 26, 'Sales');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3770, 26, 'Sales Oliveira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3771, 26, 'Salesópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3772, 26, 'Salmourão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3773, 26, 'Saltinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3774, 26, 'Salto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3775, 26, 'Salto de Pirapora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3776, 26, 'Salto Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3777, 26, 'Sandovalina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3778, 26, 'Santa Adélia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3779, 26, 'Santa Albertina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3780, 26, 'Santa Bárbara DOeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3781, 26, 'Santa Branca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3782, 26, 'Santa Clara dOeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3783, 26, 'Santa Cruz da Conceição');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3784, 26, 'Santa Cruz da Esperança');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3785, 26, 'Santa Cruz das Palmeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3786, 26, 'Santa Cruz do Rio Pardo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3787, 26, 'Santa Ernestina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3788, 26, 'Santa Fé do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3789, 26, 'Santa Gertrudes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3790, 26, 'Santa Isabel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3791, 26, 'Santa Lúcia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3792, 26, 'Santa Maria da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3793, 26, 'Santa Mercedes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3794, 26, 'Santana da Ponte Pensa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3795, 26, 'Santana de Parnaíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3796, 26, 'Santa Rita dOeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3797, 26, 'Santa Rita do Passa Quatro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3798, 26, 'Santa Rosa de Viterbo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3799, 26, 'Santa Salete');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3800, 26, 'Santo Anastácio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3801, 26, 'Santo André');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3802, 26, 'Santo Antônio da Alegria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3803, 26, 'Santo Antônio de Posse');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3804, 26, 'Santo Antônio do Aracanguá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3805, 26, 'Santo Antônio do Jardim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3806, 26, 'Santo Antônio do Pinhal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3807, 26, 'Santo Expedito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3808, 26, 'Santópolis do Aguapeí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3809, 26, 'Santos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3810, 26, 'São Bento do Sapucaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3811, 26, 'São Bernardo do Campo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3812, 26, 'São Caetano do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3813, 26, 'São Carlos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3814, 26, 'São Francisco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3815, 26, 'São João da Boa Vista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3816, 26, 'São João das Duas Pontes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3817, 26, 'São João de Iracema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3818, 26, 'São João do Pau d Alho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3819, 26, 'São Joaquim da Barra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3820, 26, 'São José da Bela Vista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3821, 26, 'São José do Barreiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3822, 26, 'São José do Rio Pardo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3823, 26, 'São José do Rio Preto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3824, 26, 'São José dos Campos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3825, 26, 'São Lourenço da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3826, 26, 'São Luiz do Paraitinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3827, 26, 'São Manuel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3828, 26, 'São Miguel Arcanjo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3829, 26, 'São Paulo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3830, 26, 'São Pedro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3831, 26, 'São Pedro do Turvo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3832, 26, 'São Roque');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3833, 26, 'São Sebastião');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3834, 26, 'São Sebastião da Grama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3835, 26, 'São Simão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3836, 26, 'São Vicente');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3837, 26, 'Sarapuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3838, 26, 'Sarutaiá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3839, 26, 'Sebastianópolis do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3840, 26, 'Serra Azul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3841, 26, 'Serrana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3842, 26, 'Serra Negra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3843, 26, 'Sertãozinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3844, 26, 'Sete Barras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3845, 26, 'Severínia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3846, 26, 'Silveiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3847, 26, 'Socorro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3848, 26, 'Sorocaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3849, 26, 'Sud Mennucci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3850, 26, 'Sumaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3851, 26, 'Suzano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3852, 26, 'Suzanápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3853, 26, 'Tabapuã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3854, 26, 'Tabatinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3855, 26, 'Taboão da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3856, 26, 'Taciba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3857, 26, 'Taguaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3858, 26, 'Taiaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3859, 26, 'Taiúva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3860, 26, 'Tambaú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3861, 26, 'Tanabi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3862, 26, 'Tapiraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3863, 26, 'Tapiratiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3864, 26, 'Taquaral');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3865, 26, 'Taquaritinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3866, 26, 'Taquarituba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3867, 26, 'Taquarivaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3868, 26, 'Tarabai');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3869, 26, 'Tarumã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3870, 26, 'Tatuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3871, 26, 'Taubaté');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3872, 26, 'Tejupá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3873, 26, 'Teodoro Sampaio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3874, 26, 'Terra Roxa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3875, 26, 'Tietê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3876, 26, 'Timburi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3877, 26, 'Torre de Pedra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3878, 26, 'Torrinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3879, 26, 'Trabiju');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3880, 26, 'Tremembé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3881, 26, 'Três Fronteiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3882, 26, 'Tuiuti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3883, 26, 'Tupã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3884, 26, 'Tupi Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3885, 26, 'Turiúba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3886, 26, 'Turmalina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3887, 26, 'Ubarana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3888, 26, 'Ubatuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3889, 26, 'Ubirajara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3890, 26, 'Uchoa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3891, 26, 'União Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3892, 26, 'Urânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3893, 26, 'Uru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3894, 26, 'Urupês');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3895, 26, 'Valentim Gentil');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3896, 26, 'Valinhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3897, 26, 'Valparaíso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3898, 26, 'Vargem');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3899, 26, 'Vargem Grande do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3900, 26, 'Vargem Grande Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3901, 26, 'Várzea Paulista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3902, 26, 'Vera Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3903, 26, 'Vinhedo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3904, 26, 'Viradouro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3905, 26, 'Vista Alegre do Alto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3906, 26, 'Vitória Brasil');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3907, 26, 'Votorantim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3908, 26, 'Votuporanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3909, 26, 'Zacarias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3910, 26, 'Chavantes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3911, 26, 'Estiva Gerbi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3912, 16, 'Abatiá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3913, 16, 'Adrianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3914, 16, 'Agudos do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3915, 16, 'Almirante Tamandaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3916, 16, 'Altamira do Paraná');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3917, 16, 'Altônia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3918, 16, 'Alto Paraná');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3919, 16, 'Alto Piquiri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3920, 16, 'Alvorada do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3921, 16, 'Amaporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3922, 16, 'Ampére');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3923, 16, 'Anahy');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3924, 16, 'Andirá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3925, 16, 'Ângulo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3926, 16, 'Antonina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3927, 16, 'Antônio Olinto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3928, 16, 'Apucarana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3929, 16, 'Arapongas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3930, 16, 'Arapoti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3931, 16, 'Arapuã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3932, 16, 'Araruna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3933, 16, 'Araucária');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3934, 16, 'Ariranha do Ivaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3935, 16, 'Assaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3936, 16, 'Assis Chateaubriand');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3937, 16, 'Astorga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3938, 16, 'Atalaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3939, 16, 'Balsa Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3940, 16, 'Bandeirantes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3941, 16, 'Barbosa Ferraz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3942, 16, 'Barracão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3943, 16, 'Barra do Jacaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3944, 16, 'Bela Vista da Caroba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3945, 16, 'Bela Vista do Paraíso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3946, 16, 'Bituruna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3947, 16, 'Boa Esperança');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3948, 16, 'Boa Esperança do Iguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3949, 16, 'Boa Ventura de São Roque');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3950, 16, 'Boa Vista da Aparecida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3951, 16, 'Bocaiúva do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3952, 16, 'Bom Jesus do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3953, 16, 'Bom Sucesso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3954, 16, 'Bom Sucesso do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3955, 16, 'Borrazópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3956, 16, 'Braganey');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3957, 16, 'Brasilândia do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3958, 16, 'Cafeara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3959, 16, 'Cafelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3960, 16, 'Cafezal do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3961, 16, 'Califórnia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3962, 16, 'Cambará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3963, 16, 'Cambé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3964, 16, 'Cambira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3965, 16, 'Campina da Lagoa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3966, 16, 'Campina do Simão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3967, 16, 'Campina Grande do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3968, 16, 'Campo Bonito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3969, 16, 'Campo do Tenente');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3970, 16, 'Campo Largo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3971, 16, 'Campo Magro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3972, 16, 'Campo Mourão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3973, 16, 'Cândido de Abreu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3974, 16, 'Candói');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3975, 16, 'Cantagalo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3976, 16, 'Capanema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3977, 16, 'Capitão Leônidas Marques');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3978, 16, 'Carambeí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3979, 16, 'Carlópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3980, 16, 'Cascavel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3981, 16, 'Castro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3982, 16, 'Catanduvas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3983, 16, 'Centenário do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3984, 16, 'Cerro Azul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3985, 16, 'Céu Azul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3986, 16, 'Chopinzinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3987, 16, 'Cianorte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3988, 16, 'Cidade Gaúcha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3989, 16, 'Clevelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3990, 16, 'Colombo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3991, 16, 'Colorado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3992, 16, 'Congonhinhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3993, 16, 'Conselheiro Mairinck');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3994, 16, 'Contenda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3995, 16, 'Corbélia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3996, 16, 'Cornélio Procópio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3997, 16, 'Coronel Domingos Soares');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3998, 16, 'Coronel Vivida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (3999, 16, 'Corumbataí do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4000, 16, 'Cruzeiro do Iguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4001, 16, 'Cruzeiro do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4002, 16, 'Cruzeiro do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4003, 16, 'Cruz Machado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4004, 16, 'Cruzmaltina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4005, 16, 'Curitiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4006, 16, 'Curiúva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4007, 16, 'Diamante do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4008, 16, 'Diamante do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4009, 16, 'Diamante D Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4010, 16, 'Dois Vizinhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4011, 16, 'Douradina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4012, 16, 'Doutor Camargo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4013, 16, 'Enéas Marques');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4014, 16, 'Engenheiro Beltrão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4015, 16, 'Esperança Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4016, 16, 'Entre Rios do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4017, 16, 'Espigão Alto do Iguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4018, 16, 'Farol');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4019, 16, 'Faxinal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4020, 16, 'Fazenda Rio Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4021, 16, 'Fênix');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4022, 16, 'Fernandes Pinheiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4023, 16, 'Figueira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4024, 16, 'Floraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4025, 16, 'Flor da Serra do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4026, 16, 'Floresta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4027, 16, 'Florestópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4028, 16, 'Flórida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4029, 16, 'Formosa do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4030, 16, 'Foz do Iguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4031, 16, 'Francisco Alves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4032, 16, 'Francisco Beltrão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4033, 16, 'Foz do Jordão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4034, 16, 'General Carneiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4035, 16, 'Godoy Moreira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4036, 16, 'Goioerê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4037, 16, 'Goioxim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4038, 16, 'Grandes Rios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4039, 16, 'Guaíra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4040, 16, 'Guairaçá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4041, 16, 'Guamiranga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4042, 16, 'Guapirama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4043, 16, 'Guaporema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4044, 16, 'Guaraci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4045, 16, 'Guaraniaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4046, 16, 'Guarapuava');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4047, 16, 'Guaraqueçaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4048, 16, 'Guaratuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4049, 16, 'Honório Serpa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4050, 16, 'Ibaiti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4051, 16, 'Ibema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4052, 16, 'Ibiporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4053, 16, 'Icaraíma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4054, 16, 'Iguaraçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4055, 16, 'Iguatu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4056, 16, 'Imbaú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4057, 16, 'Imbituva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4058, 16, 'Inácio Martins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4059, 16, 'Inajá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4060, 16, 'Indianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4061, 16, 'Ipiranga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4062, 16, 'Iporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4063, 16, 'Iracema do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4064, 16, 'Irati');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4065, 16, 'Iretama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4066, 16, 'Itaguajé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4067, 16, 'Itaipulândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4068, 16, 'Itambaracá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4069, 16, 'Itambé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4070, 16, 'Itapejara d Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4071, 16, 'Itaperuçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4072, 16, 'Itaúna do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4073, 16, 'Ivaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4074, 16, 'Ivaiporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4075, 16, 'Ivaté');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4076, 16, 'Ivatuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4077, 16, 'Jaboti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4078, 16, 'Jacarezinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4079, 16, 'Jaguapitã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4080, 16, 'Jaguariaíva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4081, 16, 'Jandaia do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4082, 16, 'Janiópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4083, 16, 'Japira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4084, 16, 'Japurá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4085, 16, 'Jardim Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4086, 16, 'Jardim Olinda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4087, 16, 'Jataizinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4088, 16, 'Jesuítas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4089, 16, 'Joaquim Távora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4090, 16, 'Jundiaí do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4091, 16, 'Juranda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4092, 16, 'Jussara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4093, 16, 'Kaloré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4094, 16, 'Lapa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4095, 16, 'Laranjal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4096, 16, 'Laranjeiras do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4097, 16, 'Leópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4098, 16, 'Lidianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4099, 16, 'Lindoeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4100, 16, 'Loanda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4101, 16, 'Lobato');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4102, 16, 'Londrina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4103, 16, 'Luiziana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4104, 16, 'Lunardelli');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4105, 16, 'Lupionópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4106, 16, 'Mallet');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4107, 16, 'Mamborê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4108, 16, 'Mandaguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4109, 16, 'Mandaguari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4110, 16, 'Mandirituba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4111, 16, 'Manfrinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4112, 16, 'Mangueirinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4113, 16, 'Manoel Ribas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4114, 16, 'Marechal Cândido Rondon');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4115, 16, 'Maria Helena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4116, 16, 'Marialva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4117, 16, 'Marilândia do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4118, 16, 'Marilena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4119, 16, 'Mariluz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4120, 16, 'Maringá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4121, 16, 'Mariópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4122, 16, 'Maripá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4123, 16, 'Marmeleiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4124, 16, 'Marquinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4125, 16, 'Marumbi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4126, 16, 'Matelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4127, 16, 'Matinhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4128, 16, 'Mato Rico');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4129, 16, 'Mauá da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4130, 16, 'Medianeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4131, 16, 'Mercedes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4132, 16, 'Mirador');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4133, 16, 'Miraselva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4134, 16, 'Missal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4135, 16, 'Moreira Sales');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4136, 16, 'Morretes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4137, 16, 'Munhoz de Melo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4138, 16, 'Nossa Senhora das Graças');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4139, 16, 'Nova Aliança do Ivaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4140, 16, 'Nova América da Colina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4141, 16, 'Nova Aurora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4142, 16, 'Nova Cantu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4143, 16, 'Nova Esperança');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4144, 16, 'Nova Esperança do Sudoeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4145, 16, 'Nova Fátima');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4146, 16, 'Nova Laranjeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4147, 16, 'Nova Londrina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4148, 16, 'Nova Olímpia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4149, 16, 'Nova Santa Bárbara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4150, 16, 'Nova Santa Rosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4151, 16, 'Nova Prata do Iguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4152, 16, 'Nova Tebas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4153, 16, 'Novo Itacolomi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4154, 16, 'Ortigueira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4155, 16, 'Ourizona');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4156, 16, 'Ouro Verde do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4157, 16, 'Paiçandu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4158, 16, 'Palmas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4159, 16, 'Palmeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4160, 16, 'Palmital');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4161, 16, 'Palotina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4162, 16, 'Paraíso do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4163, 16, 'Paranacity');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4164, 16, 'Paranaguá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4165, 16, 'Paranapoema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4166, 16, 'Paranavaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4167, 16, 'Pato Bragado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4168, 16, 'Pato Branco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4169, 16, 'Paula Freitas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4170, 16, 'Paulo Frontin');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4171, 16, 'Peabiru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4172, 16, 'Perobal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4173, 16, 'Pérola');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4174, 16, 'Pérola d Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4175, 16, 'Piên');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4176, 16, 'Pinhais');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4177, 16, 'Pinhalão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4178, 16, 'Pinhal de São Bento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4179, 16, 'Pinhão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4180, 16, 'Piraí do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4181, 16, 'Piraquara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4182, 16, 'Pitanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4183, 16, 'Pitangueiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4184, 16, 'Planaltina do Paraná');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4185, 16, 'Planalto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4186, 16, 'Ponta Grossa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4187, 16, 'Pontal do Paraná');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4188, 16, 'Porecatu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4189, 16, 'Porto Amazonas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4190, 16, 'Porto Barreiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4191, 16, 'Porto Rico');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4192, 16, 'Porto Vitória');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4193, 16, 'Prado Ferreira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4194, 16, 'Pranchita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4195, 16, 'Presidente Castelo Branco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4196, 16, 'Primeiro de Maio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4197, 16, 'Prudentópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4198, 16, 'Quarto Centenário');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4199, 16, 'Quatiguá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4200, 16, 'Quatro Barras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4201, 16, 'Quatro Pontes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4202, 16, 'Quedas do Iguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4203, 16, 'Querência do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4204, 16, 'Quinta do Sol');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4205, 16, 'Quitandinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4206, 16, 'Ramilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4207, 16, 'Rancho Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4208, 16, 'Rancho Alegre D Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4209, 16, 'Realeza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4210, 16, 'Rebouças');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4211, 16, 'Renascença');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4212, 16, 'Reserva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4213, 16, 'Reserva do Iguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4214, 16, 'Ribeirão Claro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4215, 16, 'Ribeirão do Pinhal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4216, 16, 'Rio Azul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4217, 16, 'Rio Bom');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4218, 16, 'Rio Bonito do Iguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4219, 16, 'Rio Branco do Ivaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4220, 16, 'Rio Branco do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4221, 16, 'Rio Negro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4222, 16, 'Rolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4223, 16, 'Roncador');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4224, 16, 'Rondon');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4225, 16, 'Rosário do Ivaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4226, 16, 'Sabáudia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4227, 16, 'Salgado Filho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4228, 16, 'Salto do Itararé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4229, 16, 'Salto do Lontra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4230, 16, 'Santa Amélia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4231, 16, 'Santa Cecília do Pavão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4232, 16, 'Santa Cruz de Monte Castelo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4233, 16, 'Santa Fé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4234, 16, 'Santa Helena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4235, 16, 'Santa Inês');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4236, 16, 'Santa Isabel do Ivaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4237, 16, 'Santa Izabel do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4238, 16, 'Santa Lúcia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4239, 16, 'Santa Maria do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4240, 16, 'Santa Mariana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4241, 16, 'Santa Mônica');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4242, 16, 'Santana do Itararé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4243, 16, 'Santa Tereza do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4244, 16, 'Santa Terezinha de Itaipu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4245, 16, 'Santo Antônio da Platina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4246, 16, 'Santo Antônio do Caiuá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4247, 16, 'Santo Antônio do Paraíso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4248, 16, 'Santo Antônio do Sudoeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4249, 16, 'Santo Inácio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4250, 16, 'São Carlos do Ivaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4251, 16, 'São Jerônimo da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4252, 16, 'São João');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4253, 16, 'São João do Caiuá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4254, 16, 'São João do Ivaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4255, 16, 'São João do Triunfo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4256, 16, 'São Jorge d Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4257, 16, 'São Jorge do Ivaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4258, 16, 'São Jorge do Patrocínio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4259, 16, 'São José da Boa Vista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4260, 16, 'São José das Palmeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4261, 16, 'São José dos Pinhais');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4262, 16, 'São Manoel do Paraná');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4263, 16, 'São Mateus do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4264, 16, 'São Miguel do Iguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4265, 16, 'São Pedro do Iguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4266, 16, 'São Pedro do Ivaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4267, 16, 'São Pedro do Paraná');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4268, 16, 'São Sebastião da Amoreira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4269, 16, 'São Tomé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4270, 16, 'Sapopema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4271, 16, 'Sarandi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4272, 16, 'Saudade do Iguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4273, 16, 'Sengés');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4274, 16, 'Serranópolis do Iguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4275, 16, 'Sertaneja');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4276, 16, 'Sertanópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4277, 16, 'Siqueira Campos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4278, 16, 'Sulina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4279, 16, 'Tamarana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4280, 16, 'Tamboara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4281, 16, 'Tapejara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4282, 16, 'Tapira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4283, 16, 'Teixeira Soares');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4284, 16, 'Telêmaco Borba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4285, 16, 'Terra Boa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4286, 16, 'Terra Rica');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4287, 16, 'Terra Roxa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4288, 16, 'Tibagi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4289, 16, 'Tijucas do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4290, 16, 'Toledo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4291, 16, 'Tomazina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4292, 16, 'Três Barras do Paraná');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4293, 16, 'Tunas do Paraná');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4294, 16, 'Tuneiras do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4295, 16, 'Tupãssi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4296, 16, 'Turvo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4297, 16, 'Ubiratã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4298, 16, 'Umuarama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4299, 16, 'União da Vitória');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4300, 16, 'Uniflor');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4301, 16, 'Uraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4302, 16, 'Wenceslau Braz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4303, 16, 'Ventania');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4304, 16, 'Vera Cruz do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4305, 16, 'Verê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4306, 16, 'Alto Paraíso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4307, 16, 'Doutor Ulysses');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4308, 16, 'Virmond');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4309, 16, 'Vitorino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4310, 16, 'Xambrê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4311, 24, 'Abdon Batista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4312, 24, 'Abelardo Luz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4313, 24, 'Agrolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4314, 24, 'Agronômica');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4315, 24, 'Água Doce');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4316, 24, 'Águas de Chapecó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4317, 24, 'Águas Frias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4318, 24, 'Águas Mornas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4319, 24, 'Alfredo Wagner');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4320, 24, 'Alto Bela Vista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4321, 24, 'Anchieta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4322, 24, 'Angelina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4323, 24, 'Anita Garibaldi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4324, 24, 'Anitápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4325, 24, 'Antônio Carlos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4326, 24, 'Apiúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4327, 24, 'Arabutã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4328, 24, 'Araquari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4329, 24, 'Araranguá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4330, 24, 'Armazém');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4331, 24, 'Arroio Trinta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4332, 24, 'Arvoredo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4333, 24, 'Ascurra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4334, 24, 'Atalanta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4335, 24, 'Aurora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4336, 24, 'Balneário Arroio do Silva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4337, 24, 'Balneário Camboriú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4338, 24, 'Balneário Barra do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4339, 24, 'Balneário Gaivota');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4340, 24, 'Bandeirante');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4341, 24, 'Barra Bonita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4342, 24, 'Barra Velha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4343, 24, 'Bela Vista do Toldo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4344, 24, 'Belmonte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4345, 24, 'Benedito Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4346, 24, 'Biguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4347, 24, 'Blumenau');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4348, 24, 'Bocaina do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4349, 24, 'Bombinhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4350, 24, 'Bom Jardim da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4351, 24, 'Bom Jesus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4352, 24, 'Bom Jesus do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4353, 24, 'Bom Retiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4354, 24, 'Botuverá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4355, 24, 'Braço do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4356, 24, 'Braço do Trombudo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4357, 24, 'Brunópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4358, 24, 'Brusque');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4359, 24, 'Caçador');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4360, 24, 'Caibi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4361, 24, 'Calmon');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4362, 24, 'Camboriú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4363, 24, 'Capão Alto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4364, 24, 'Campo Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4365, 24, 'Campo Belo do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4366, 24, 'Campo Erê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4367, 24, 'Campos Novos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4368, 24, 'Canelinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4369, 24, 'Canoinhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4370, 24, 'Capinzal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4371, 24, 'Capivari de Baixo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4372, 24, 'Catanduvas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4373, 24, 'Caxambu do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4374, 24, 'Celso Ramos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4375, 24, 'Cerro Negro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4376, 24, 'Chapadão do Lageado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4377, 24, 'Chapecó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4378, 24, 'Cocal do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4379, 24, 'Concórdia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4380, 24, 'Cordilheira Alta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4381, 24, 'Coronel Freitas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4382, 24, 'Coronel Martins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4383, 24, 'Corupá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4384, 24, 'Correia Pinto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4385, 24, 'Criciúma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4386, 24, 'Cunha Porã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4387, 24, 'Cunhataí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4388, 24, 'Curitibanos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4389, 24, 'Descanso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4390, 24, 'Dionísio Cerqueira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4391, 24, 'Dona Emma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4392, 24, 'Doutor Pedrinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4393, 24, 'Entre Rios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4394, 24, 'Ermo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4395, 24, 'Erval Velho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4396, 24, 'Faxinal dos Guedes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4397, 24, 'Flor do Sertão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4398, 24, 'Florianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4399, 24, 'Formosa do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4400, 24, 'Forquilhinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4401, 24, 'Fraiburgo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4402, 24, 'Frei Rogério');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4403, 24, 'Galvão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4404, 24, 'Garopaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4405, 24, 'Garuva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4406, 24, 'Gaspar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4407, 24, 'Governador Celso Ramos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4408, 24, 'Grão Pará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4409, 24, 'Gravatal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4410, 24, 'Guabiruba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4411, 24, 'Guaraciaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4412, 24, 'Guaramirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4413, 24, 'Guarujá do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4414, 24, 'Guatambú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4415, 24, 'Herval d Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4416, 24, 'Ibiam');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4417, 24, 'Ibicaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4418, 24, 'Ibirama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4419, 24, 'Içara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4420, 24, 'Ilhota');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4421, 24, 'Imaruí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4422, 24, 'Imbituba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4423, 24, 'Imbuia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4424, 24, 'Indaial');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4425, 24, 'Iomerê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4426, 24, 'Ipira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4427, 24, 'Iporã do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4428, 24, 'Ipuaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4429, 24, 'Ipumirim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4430, 24, 'Iraceminha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4431, 24, 'Irani');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4432, 24, 'Irati');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4433, 24, 'Irineópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4434, 24, 'Itá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4435, 24, 'Itaiópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4436, 24, 'Itajaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4437, 24, 'Itapema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4438, 24, 'Itapiranga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4439, 24, 'Itapoá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4440, 24, 'Ituporanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4441, 24, 'Jaborá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4442, 24, 'Jacinto Machado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4443, 24, 'Jaguaruna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4444, 24, 'Jaraguá do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4445, 24, 'Jardinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4446, 24, 'Joaçaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4447, 24, 'Joinville');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4448, 24, 'José Boiteux');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4449, 24, 'Jupiá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4450, 24, 'Lacerdópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4451, 24, 'Lages');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4452, 24, 'Laguna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4453, 24, 'Lajeado Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4454, 24, 'Laurentino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4455, 24, 'Lauro Muller');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4456, 24, 'Lebon Régis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4457, 24, 'Leoberto Leal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4458, 24, 'Lindóia do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4459, 24, 'Lontras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4460, 24, 'Luiz Alves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4461, 24, 'Luzerna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4462, 24, 'Macieira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4463, 24, 'Mafra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4464, 24, 'Major Gercino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4465, 24, 'Major Vieira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4466, 24, 'Maracajá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4467, 24, 'Maravilha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4468, 24, 'Marema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4469, 24, 'Massaranduba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4470, 24, 'Matos Costa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4471, 24, 'Meleiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4472, 24, 'Mirim Doce');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4473, 24, 'Modelo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4474, 24, 'Mondaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4475, 24, 'Monte Carlo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4476, 24, 'Monte Castelo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4477, 24, 'Morro da Fumaça');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4478, 24, 'Morro Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4479, 24, 'Navegantes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4480, 24, 'Nova Erechim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4481, 24, 'Nova Itaberaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4482, 24, 'Nova Trento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4483, 24, 'Nova Veneza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4484, 24, 'Novo Horizonte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4485, 24, 'Orleans');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4486, 24, 'Otacílio Costa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4487, 24, 'Ouro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4488, 24, 'Ouro Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4489, 24, 'Paial');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4490, 24, 'Painel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4491, 24, 'Palhoça');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4492, 24, 'Palma Sola');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4493, 24, 'Palmeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4494, 24, 'Palmitos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4495, 24, 'Papanduva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4496, 24, 'Paraíso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4497, 24, 'Passo de Torres');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4498, 24, 'Passos Maia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4499, 24, 'Paulo Lopes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4500, 24, 'Pedras Grandes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4501, 24, 'Penha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4502, 24, 'Peritiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4503, 24, 'Petrolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4504, 24, 'Balneário Piçarras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4505, 24, 'Pinhalzinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4506, 24, 'Pinheiro Preto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4507, 24, 'Piratuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4508, 24, 'Planalto Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4509, 24, 'Pomerode');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4510, 24, 'Ponte Alta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4511, 24, 'Ponte Alta do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4512, 24, 'Ponte Serrada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4513, 24, 'Porto Belo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4514, 24, 'Porto União');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4515, 24, 'Pouso Redondo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4516, 24, 'Praia Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4517, 24, 'Presidente Castello Branco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4518, 24, 'Presidente Getúlio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4519, 24, 'Presidente Nereu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4520, 24, 'Princesa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4521, 24, 'Quilombo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4522, 24, 'Rancho Queimado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4523, 24, 'Rio das Antas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4524, 24, 'Rio do Campo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4525, 24, 'Rio do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4526, 24, 'Rio dos Cedros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4527, 24, 'Rio do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4528, 24, 'Rio Fortuna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4529, 24, 'Rio Negrinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4530, 24, 'Rio Rufino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4531, 24, 'Riqueza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4532, 24, 'Rodeio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4533, 24, 'Romelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4534, 24, 'Salete');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4535, 24, 'Saltinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4536, 24, 'Salto Veloso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4537, 24, 'Sangão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4538, 24, 'Santa Cecília');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4539, 24, 'Santa Helena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4540, 24, 'Santa Rosa de Lima');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4541, 24, 'Santa Rosa do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4542, 24, 'Santa Terezinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4543, 24, 'Santa Terezinha do Progresso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4544, 24, 'Santiago do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4545, 24, 'Santo Amaro da Imperatriz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4546, 24, 'São Bernardino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4547, 24, 'São Bento do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4548, 24, 'São Bonifácio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4549, 24, 'São Carlos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4550, 24, 'São Cristovão do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4551, 24, 'São Domingos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4552, 24, 'São Francisco do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4553, 24, 'São João do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4554, 24, 'São João Batista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4555, 24, 'São João do Itaperiú');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4556, 24, 'São João do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4557, 24, 'São Joaquim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4558, 24, 'São José');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4559, 24, 'São José do Cedro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4560, 24, 'São José do Cerrito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4561, 24, 'São Lourenço do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4562, 24, 'São Ludgero');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4563, 24, 'São Martinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4564, 24, 'São Miguel da Boa Vista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4565, 24, 'São Miguel do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4566, 24, 'São Pedro de Alcântara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4567, 24, 'Saudades');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4568, 24, 'Schroeder');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4569, 24, 'Seara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4570, 24, 'Serra Alta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4571, 24, 'Siderópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4572, 24, 'Sombrio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4573, 24, 'Sul Brasil');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4574, 24, 'Taió');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4575, 24, 'Tangará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4576, 24, 'Tigrinhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4577, 24, 'Tijucas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4578, 24, 'Timbé do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4579, 24, 'Timbó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4580, 24, 'Timbó Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4581, 24, 'Três Barras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4582, 24, 'Treviso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4583, 24, 'Treze de Maio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4584, 24, 'Treze Tílias');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4585, 24, 'Trombudo Central');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4586, 24, 'Tubarão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4587, 24, 'Tunápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4588, 24, 'Turvo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4589, 24, 'União do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4590, 24, 'Urubici');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4591, 24, 'Urupema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4592, 24, 'Urussanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4593, 24, 'Vargeão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4594, 24, 'Vargem');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4595, 24, 'Vargem Bonita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4596, 24, 'Vidal Ramos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4597, 24, 'Videira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4598, 24, 'Vitor Meireles');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4599, 24, 'Witmarsum');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4600, 24, 'Xanxerê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4601, 24, 'Xavantina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4602, 24, 'Xaxim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4603, 24, 'Zortéa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4604, 24, 'Aceguá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4605, 23, 'Água Santa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4606, 23, 'Agudo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4607, 23, 'Ajuricaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4608, 23, 'Alecrim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4609, 23, 'Alegrete');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4610, 23, 'Alegria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4611, 23, 'Almirante Tamandaré do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4612, 23, 'Alpestre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4613, 23, 'Alto Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4614, 23, 'Alto Feliz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4615, 23, 'Alvorada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4616, 23, 'Amaral Ferrador');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4617, 23, 'Ametista do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4618, 23, 'André da Rocha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4619, 23, 'Anta Gorda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4620, 23, 'Antônio Prado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4621, 23, 'Arambaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4622, 23, 'Araricá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4623, 23, 'Aratiba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4624, 23, 'Arroio do Meio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4625, 23, 'Arroio do Sal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4626, 23, 'Arroio do Padre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4627, 23, 'Arroio dos Ratos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4628, 23, 'Arroio do Tigre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4629, 23, 'Arroio Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4630, 23, 'Arvorezinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4631, 23, 'Augusto Pestana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4632, 23, 'Áurea');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4633, 23, 'Bagé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4634, 23, 'Balneário Pinhal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4635, 23, 'Barão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4636, 23, 'Barão de Cotegipe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4637, 23, 'Barão do Triunfo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4638, 23, 'Barracão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4639, 23, 'Barra do Guarita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4640, 23, 'Barra do Quaraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4641, 23, 'Barra do Ribeiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4642, 23, 'Barra do Rio Azul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4643, 23, 'Barra Funda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4644, 23, 'Barros Cassal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4645, 23, 'Benjamin Constant do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4646, 23, 'Bento Gonçalves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4647, 23, 'Boa Vista das Missões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4648, 23, 'Boa Vista do Buricá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4649, 23, 'Boa Vista do Cadeado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4650, 23, 'Boa Vista do Incra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4651, 23, 'Boa Vista do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4652, 23, 'Bom Jesus');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4653, 23, 'Bom Princípio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4654, 23, 'Bom Progresso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4655, 23, 'Bom Retiro do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4656, 23, 'Boqueirão do Leão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4657, 23, 'Bossoroca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4658, 23, 'Bozano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4659, 23, 'Braga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4660, 23, 'Brochier');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4661, 23, 'Butiá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4662, 23, 'Caçapava do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4663, 23, 'Cacequi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4664, 23, 'Cachoeira do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4665, 23, 'Cachoeirinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4666, 23, 'Cacique Doble');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4667, 23, 'Caibaté');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4668, 23, 'Caiçara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4669, 23, 'Camaquã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4670, 23, 'Camargo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4671, 23, 'Cambará do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4672, 23, 'Campestre da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4673, 23, 'Campina das Missões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4674, 23, 'Campinas do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4675, 23, 'Campo Bom');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4676, 23, 'Campo Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4677, 23, 'Campos Borges');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4678, 23, 'Candelária');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4679, 23, 'Cândido Godói');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4680, 23, 'Candiota');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4681, 23, 'Canela');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4682, 23, 'Canguçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4683, 23, 'Canoas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4684, 23, 'Canudos do Vale');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4685, 23, 'Capão Bonito do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4686, 23, 'Capão da Canoa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4687, 23, 'Capão do Cipó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4688, 23, 'Capão do Leão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4689, 23, 'Capivari do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4690, 23, 'Capela de Santana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4691, 23, 'Capitão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4692, 23, 'Carazinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4693, 23, 'Caraá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4694, 23, 'Carlos Barbosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4695, 23, 'Carlos Gomes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4696, 23, 'Casca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4697, 23, 'Caseiros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4698, 23, 'Catuípe');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4699, 23, 'Caxias do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4700, 23, 'Centenário');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4701, 23, 'Cerrito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4702, 23, 'Cerro Branco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4703, 23, 'Cerro Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4704, 23, 'Cerro Grande do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4705, 23, 'Cerro Largo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4706, 23, 'Chapada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4707, 23, 'Charqueadas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4708, 23, 'Charrua');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4709, 23, 'Chiapetta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4710, 23, 'Chuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4711, 23, 'Chuvisca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4712, 23, 'Cidreira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4713, 23, 'Ciríaco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4714, 23, 'Colinas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4715, 23, 'Colorado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4716, 23, 'Condor');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4717, 23, 'Constantina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4718, 23, 'Coqueiro Baixo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4719, 23, 'Coqueiros do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4720, 23, 'Coronel Barros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4721, 23, 'Coronel Bicaco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4722, 23, 'Coronel Pilar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4723, 23, 'Cotiporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4724, 23, 'Coxilha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4725, 23, 'Crissiumal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4726, 23, 'Cristal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4727, 23, 'Cristal do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4728, 23, 'Cruz Alta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4729, 23, 'Cruzaltense');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4730, 23, 'Cruzeiro do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4731, 23, 'David Canabarro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4732, 23, 'Derrubadas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4733, 23, 'Dezesseis de Novembro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4734, 23, 'Dilermando de Aguiar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4735, 23, 'Dois Irmãos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4736, 23, 'Dois Irmãos das Missões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4737, 23, 'Dois Lajeados');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4738, 23, 'Dom Feliciano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4739, 23, 'Dom Pedro de Alcântara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4740, 23, 'Dom Pedrito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4741, 23, 'Dona Francisca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4742, 23, 'Doutor Maurício Cardoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4743, 23, 'Doutor Ricardo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4744, 23, 'Eldorado do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4745, 23, 'Encantado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4746, 23, 'Encruzilhada do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4747, 23, 'Engenho Velho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4748, 23, 'Entre-Ijuís');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4749, 23, 'Entre Rios do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4750, 23, 'Erebango');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4751, 23, 'Erechim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4752, 23, 'Ernestina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4753, 23, 'Herval');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4754, 23, 'Erval Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4755, 23, 'Erval Seco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4756, 23, 'Esmeralda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4757, 23, 'Esperança do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4758, 23, 'Espumoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4759, 23, 'Estação');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4760, 23, 'Estância Velha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4761, 23, 'Esteio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4762, 23, 'Estrela');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4763, 23, 'Estrela Velha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4764, 23, 'Eugênio de Castro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4765, 23, 'Fagundes Varela');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4766, 23, 'Farroupilha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4767, 23, 'Faxinal do Soturno');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4768, 23, 'Faxinalzinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4769, 23, 'Fazenda Vilanova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4770, 23, 'Feliz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4771, 23, 'Flores da Cunha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4772, 23, 'Floriano Peixoto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4773, 23, 'Fontoura Xavier');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4774, 23, 'Formigueiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4775, 23, 'Forquetinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4776, 23, 'Fortaleza dos Valos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4777, 23, 'Frederico Westphalen');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4778, 23, 'Garibaldi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4779, 23, 'Garruchos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4780, 23, 'Gaurama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4781, 23, 'General Câmara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4782, 23, 'Gentil');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4783, 23, 'Getúlio Vargas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4784, 23, 'Giruá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4785, 23, 'Glorinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4786, 23, 'Gramado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4787, 23, 'Gramado dos Loureiros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4788, 23, 'Gramado Xavier');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4789, 23, 'Gravataí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4790, 23, 'Guabiju');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4791, 23, 'Guaíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4792, 23, 'Guaporé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4793, 23, 'Guarani das Missões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4794, 23, 'Harmonia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4795, 23, 'Herveiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4796, 23, 'Horizontina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4797, 23, 'Hulha Negra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4798, 23, 'Humaitá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4799, 23, 'Ibarama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4800, 23, 'Ibiaçá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4801, 23, 'Ibiraiaras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4802, 23, 'Ibirapuitã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4803, 23, 'Ibirubá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4804, 23, 'Igrejinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4805, 23, 'Ijuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4806, 23, 'Ilópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4807, 23, 'Imbé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4808, 23, 'Imigrante');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4809, 23, 'Independência');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4810, 23, 'Inhacorá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4811, 23, 'Ipê');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4812, 23, 'Ipiranga do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4813, 23, 'Iraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4814, 23, 'Itaara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4815, 23, 'Itacurubi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4816, 23, 'Itapuca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4817, 23, 'Itaqui');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4818, 23, 'Itati');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4819, 23, 'Itatiba do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4820, 23, 'Ivorá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4821, 23, 'Ivoti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4822, 23, 'Jaboticaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4823, 23, 'Jacuizinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4824, 23, 'Jacutinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4825, 23, 'Jaguarão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4826, 23, 'Jaguari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4827, 23, 'Jaquirana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4828, 23, 'Jari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4829, 23, 'Jóia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4830, 23, 'Júlio de Castilhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4831, 23, 'Lagoa Bonita do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4832, 23, 'Lagoão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4833, 23, 'Lagoa dos Três Cantos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4834, 23, 'Lagoa Vermelha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4835, 23, 'Lajeado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4836, 23, 'Lajeado do Bugre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4837, 23, 'Lavras do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4838, 23, 'Liberato Salzano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4839, 23, 'Lindolfo Collor');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4840, 23, 'Linha Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4841, 23, 'Machadinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4842, 23, 'Maçambará');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4843, 23, 'Mampituba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4844, 23, 'Manoel Viana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4845, 23, 'Maquiné');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4846, 23, 'Maratá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4847, 23, 'Marau');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4848, 23, 'Marcelino Ramos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4849, 23, 'Mariana Pimentel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4850, 23, 'Mariano Moro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4851, 23, 'Marques de Souza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4852, 23, 'Mata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4853, 23, 'Mato Castelhano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4854, 23, 'Mato Leitão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4855, 23, 'Mato Queimado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4856, 23, 'Maximiliano de Almeida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4857, 23, 'Minas do Leão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4858, 23, 'Miraguaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4859, 23, 'Montauri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4860, 23, 'Monte Alegre dos Campos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4861, 23, 'Monte Belo do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4862, 23, 'Montenegro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4863, 23, 'Mormaço');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4864, 23, 'Morrinhos do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4865, 23, 'Morro Redondo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4866, 23, 'Morro Reuter');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4867, 23, 'Mostardas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4868, 23, 'Muçum');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4869, 23, 'Muitos Capões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4870, 23, 'Muliterno');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4871, 23, 'Não-Me-Toque');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4872, 23, 'Nicolau Vergueiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4873, 23, 'Nonoai');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4874, 23, 'Nova Alvorada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4875, 23, 'Nova Araçá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4876, 23, 'Nova Bassano');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4877, 23, 'Nova Boa Vista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4878, 23, 'Nova Bréscia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4879, 23, 'Nova Candelária');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4880, 23, 'Nova Esperança do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4881, 23, 'Nova Hartz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4882, 23, 'Nova Pádua');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4883, 23, 'Nova Palma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4884, 23, 'Nova Petrópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4885, 23, 'Nova Prata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4886, 23, 'Nova Ramada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4887, 23, 'Nova Roma do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4888, 23, 'Nova Santa Rita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4889, 23, 'Novo Cabrais');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4890, 23, 'Novo Hamburgo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4891, 23, 'Novo Machado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4892, 23, 'Novo Tiradentes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4893, 23, 'Novo Xingu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4894, 23, 'Novo Barreiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4895, 23, 'Osório');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4896, 23, 'Paim Filho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4897, 23, 'Palmares do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4898, 23, 'Palmeira das Missões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4899, 23, 'Palmitinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4900, 23, 'Panambi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4901, 23, 'Pantano Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4902, 23, 'Paraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4903, 23, 'Paraíso do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4904, 23, 'Pareci Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4905, 23, 'Parobé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4906, 23, 'Passa Sete');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4907, 23, 'Passo do Sobrado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4908, 23, 'Passo Fundo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4909, 23, 'Paulo Bento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4910, 23, 'Paverama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4911, 23, 'Pedras Altas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4912, 23, 'Pedro Osório');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4913, 23, 'Pejuçara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4914, 23, 'Pelotas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4915, 23, 'Picada Café');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4916, 23, 'Pinhal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4917, 23, 'Pinhal da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4918, 23, 'Pinhal Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4919, 23, 'Pinheirinho do Vale');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4920, 23, 'Pinheiro Machado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4921, 23, 'Pirapó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4922, 23, 'Piratini');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4923, 23, 'Planalto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4924, 23, 'Poço das Antas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4925, 23, 'Pontão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4926, 23, 'Ponte Preta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4927, 23, 'Portão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4928, 23, 'Porto Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4929, 23, 'Porto Lucena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4930, 23, 'Porto Mauá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4931, 23, 'Porto Vera Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4932, 23, 'Porto Xavier');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4933, 23, 'Pouso Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4934, 23, 'Presidente Lucena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4935, 23, 'Progresso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4936, 23, 'Protásio Alves');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4937, 23, 'Putinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4938, 23, 'Quaraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4939, 23, 'Quatro Irmãos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4940, 23, 'Quevedos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4941, 23, 'Quinze de Novembro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4942, 23, 'Redentora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4943, 23, 'Relvado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4944, 23, 'Restinga Seca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4945, 23, 'Rio dos Índios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4946, 23, 'Rio Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4947, 23, 'Rio Pardo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4948, 23, 'Riozinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4949, 23, 'Roca Sales');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4950, 23, 'Rodeio Bonito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4951, 23, 'Rolador');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4952, 23, 'Rolante');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4953, 23, 'Ronda Alta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4954, 23, 'Rondinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4955, 23, 'Roque Gonzales');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4956, 23, 'Rosário do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4957, 23, 'Sagrada Família');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4958, 23, 'Saldanha Marinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4959, 23, 'Salto do Jacuí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4960, 23, 'Salvador das Missões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4961, 23, 'Salvador do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4962, 23, 'Sananduva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4963, 23, 'Santa Bárbara do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4964, 23, 'Santa Cecília do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4965, 23, 'Santa Clara do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4966, 23, 'Santa Cruz do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4967, 23, 'Santa Maria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4968, 23, 'Santa Maria do Herval');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4969, 23, 'Santa Margarida do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4970, 23, 'Santana da Boa Vista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4971, 23, 'Sant Ana do Livramento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4972, 23, 'Santa Rosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4973, 23, 'Santa Tereza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4974, 23, 'Santa Vitória do Palmar');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4975, 23, 'Santiago');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4976, 23, 'Santo Ângelo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4977, 23, 'Santo Antônio do Palma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4978, 23, 'Santo Antônio da Patrulha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4979, 23, 'Santo Antônio das Missões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4980, 23, 'Santo Antônio do Planalto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4981, 23, 'Santo Augusto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4982, 23, 'Santo Cristo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4983, 23, 'Santo Expedito do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4984, 23, 'São Borja');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4985, 23, 'São Domingos do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4986, 23, 'São Francisco de Assis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4987, 23, 'São Francisco de Paula');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4988, 23, 'São Gabriel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4989, 23, 'São Jerônimo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4990, 23, 'São João da Urtiga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4991, 23, 'São João do Polêsine');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4992, 23, 'São Jorge');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4993, 23, 'São José das Missões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4994, 23, 'São José do Herval');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4995, 23, 'São José do Hortêncio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4996, 23, 'São José do Inhacorá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4997, 23, 'São José do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4998, 23, 'São José do Ouro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (4999, 23, 'São José do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5000, 23, 'São José dos Ausentes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5001, 23, 'São Leopoldo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5002, 23, 'São Lourenço do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5003, 23, 'São Luiz Gonzaga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5004, 23, 'São Marcos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5005, 23, 'São Martinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5006, 23, 'São Martinho da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5007, 23, 'São Miguel das Missões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5008, 23, 'São Nicolau');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5009, 23, 'São Paulo das Missões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5010, 23, 'São Pedro da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5011, 23, 'São Pedro das Missões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5012, 23, 'São Pedro do Butiá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5013, 23, 'São Pedro do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5014, 23, 'São Sebastião do Caí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5015, 23, 'São Sepé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5016, 23, 'São Valentim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5017, 23, 'São Valentim do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5018, 23, 'São Valério do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5019, 23, 'São Vendelino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5020, 23, 'São Vicente do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5021, 23, 'Sapiranga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5022, 23, 'Sapucaia do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5023, 23, 'Sarandi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5024, 23, 'Seberi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5025, 23, 'Sede Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5026, 23, 'Segredo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5027, 23, 'Selbach');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5028, 23, 'Senador Salgado Filho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5029, 23, 'Sentinela do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5030, 23, 'Serafina Corrêa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5031, 23, 'Sério');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5032, 23, 'Sertão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5033, 23, 'Sertão Santana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5034, 23, 'Sete de Setembro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5035, 23, 'Severiano de Almeida');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5036, 23, 'Silveira Martins');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5037, 23, 'Sinimbu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5038, 23, 'Sobradinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5039, 23, 'Soledade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5040, 23, 'Tabaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5041, 23, 'Tapejara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5042, 23, 'Tapera');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5043, 23, 'Tapes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5044, 23, 'Taquara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5045, 23, 'Taquari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5046, 23, 'Taquaruçu do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5047, 23, 'Tavares');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5048, 23, 'Tenente Portela');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5049, 23, 'Terra de Areia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5050, 23, 'Teutônia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5051, 23, 'Tio Hugo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5052, 23, 'Tiradentes do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5053, 23, 'Toropi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5054, 23, 'Torres');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5055, 23, 'Tramandaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5056, 23, 'Travesseiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5057, 23, 'Três Arroios');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5058, 23, 'Três Cachoeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5059, 23, 'Três Coroas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5060, 23, 'Três de Maio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5061, 23, 'Três Forquilhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5062, 23, 'Três Palmeiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5063, 23, 'Três Passos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5064, 23, 'Trindade do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5065, 23, 'Triunfo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5066, 23, 'Tucunduva');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5067, 23, 'Tunas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5068, 23, 'Tupanci do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5069, 23, 'Tupanciretã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5070, 23, 'Tupandi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5071, 23, 'Tuparendi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5072, 23, 'Turuçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5073, 23, 'Ubiretama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5074, 23, 'União da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5075, 23, 'Unistalda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5076, 23, 'Uruguaiana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5077, 23, 'Vacaria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5078, 23, 'Vale Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5079, 23, 'Vale do Sol');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5080, 23, 'Vale Real');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5081, 23, 'Vanini');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5082, 23, 'Venâncio Aires');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5083, 23, 'Vera Cruz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5084, 23, 'Veranópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5085, 23, 'Vespasiano Correa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5086, 23, 'Viadutos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5087, 23, 'Viamão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5088, 23, 'Vicente Dutra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5089, 23, 'Victor Graeff');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5090, 23, 'Vila Flores');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5091, 23, 'Vila Lângaro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5092, 23, 'Vila Maria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5093, 23, 'Vila Nova do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5094, 23, 'Vista Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5095, 23, 'Vista Alegre do Prata');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5096, 23, 'Vista Gaúcha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5097, 23, 'Vitória das Missões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5098, 23, 'Westfalia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5099, 23, 'Xangri-lá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5100, 12, 'Água Clara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5101, 12, 'Alcinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5102, 12, 'Amambai');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5103, 12, 'Anastácio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5104, 12, 'Anaurilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5105, 12, 'Angélica');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5106, 12, 'Antônio João');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5107, 12, 'Aparecida do Taboado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5108, 12, 'Aquidauana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5109, 12, 'Aral Moreira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5110, 12, 'Bandeirantes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5111, 12, 'Bataguassu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5112, 12, 'Batayporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5113, 12, 'Bela Vista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5114, 12, 'Bodoquena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5115, 12, 'Bonito');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5116, 12, 'Brasilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5117, 12, 'Caarapó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5118, 12, 'Camapuã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5119, 12, 'Campo Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5120, 12, 'Caracol');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5121, 12, 'Cassilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5122, 12, 'Chapadão do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5123, 12, 'Corguinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5124, 12, 'Coronel Sapucaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5125, 12, 'Corumbá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5126, 12, 'Costa Rica');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5127, 12, 'Coxim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5128, 12, 'Deodápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5129, 12, 'Dois Irmãos do Buriti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5130, 12, 'Douradina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5131, 12, 'Dourados');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5132, 12, 'Eldorado');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5133, 12, 'Fátima do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5134, 12, 'Figueirão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5135, 12, 'Glória de Dourados');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5136, 12, 'Guia Lopes da Laguna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5137, 12, 'Iguatemi');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5138, 12, 'Inocência');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5139, 12, 'Itaporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5140, 12, 'Itaquiraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5141, 12, 'Ivinhema');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5142, 12, 'Japorã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5143, 12, 'Jaraguari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5144, 12, 'Jardim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5145, 12, 'Jateí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5146, 12, 'Juti');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5147, 12, 'Ladário');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5148, 12, 'Laguna Carapã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5149, 12, 'Maracaju');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5150, 12, 'Miranda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5151, 12, 'Mundo Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5152, 12, 'Naviraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5153, 12, 'Nioaque');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5154, 12, 'Nova Alvorada do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5155, 12, 'Nova Andradina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5156, 12, 'Novo Horizonte do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5157, 12, 'Paranaíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5158, 12, 'Paranhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5159, 12, 'Pedro Gomes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5160, 12, 'Ponta Porã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5161, 12, 'Porto Murtinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5162, 12, 'Ribas do Rio Pardo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5163, 12, 'Rio Brilhante');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5164, 12, 'Rio Negro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5165, 12, 'Rio Verde de Mato Grosso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5166, 12, 'Rochedo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5167, 12, 'Santa Rita do Pardo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5168, 12, 'São Gabriel do Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5169, 12, 'Sete Quedas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5170, 12, 'Selvíria');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5171, 12, 'Sidrolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5172, 12, 'Sonora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5173, 12, 'Tacuru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5174, 12, 'Taquarussu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5175, 12, 'Terenos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5176, 12, 'Três Lagoas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5177, 12, 'Vicentina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5178, 13, 'Acorizal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5179, 13, 'Água Boa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5180, 13, 'Alta Floresta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5181, 13, 'Alto Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5182, 13, 'Alto Boa Vista');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5183, 13, 'Alto Garças');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5184, 13, 'Alto Paraguai');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5185, 13, 'Alto Taquari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5186, 13, 'Apiacás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5187, 13, 'Araguaiana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5188, 13, 'Araguainha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5189, 13, 'Araputanga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5190, 13, 'Arenápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5191, 13, 'Aripuanã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5192, 13, 'Barão de Melgaço');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5193, 13, 'Barra do Bugres');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5194, 13, 'Barra do Garças');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5195, 13, 'Bom Jesus do Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5196, 13, 'Brasnorte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5197, 13, 'Cáceres');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5198, 13, 'Campinápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5199, 13, 'Campo Novo do Parecis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5200, 13, 'Campo Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5201, 13, 'Campos de Júlio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5202, 13, 'Canabrava do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5203, 13, 'Canarana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5204, 13, 'Carlinda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5205, 13, 'Castanheira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5206, 13, 'Chapada dos Guimarães');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5207, 13, 'Cláudia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5208, 13, 'Cocalinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5209, 13, 'Colíder');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5210, 13, 'Colniza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5211, 13, 'Comodoro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5212, 13, 'Confresa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5213, 13, 'Conquista D Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5214, 13, 'Cotriguaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5215, 13, 'Cuiabá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5216, 13, 'Curvelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5217, 13, 'Denise');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5218, 13, 'Diamantino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5219, 13, 'Dom Aquino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5220, 13, 'Feliz Natal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5221, 13, 'Figueirópolis D Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5222, 13, 'Gaúcha do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5223, 13, 'General Carneiro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5224, 13, 'Glória D Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5225, 13, 'Guarantã do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5226, 13, 'Guiratinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5227, 13, 'Indiavaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5228, 13, 'Ipiranga do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5229, 13, 'Itanhangá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5230, 13, 'Itaúba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5231, 13, 'Itiquira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5232, 13, 'Jaciara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5233, 13, 'Jangada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5234, 13, 'Jauru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5235, 13, 'Juara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5236, 13, 'Juína');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5237, 13, 'Juruena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5238, 13, 'Juscimeira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5239, 13, 'Lambari D Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5240, 13, 'Lucas do Rio Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5241, 13, 'Luciara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5242, 13, 'Vila Bela da Santíssima Trindade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5243, 13, 'Marcelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5244, 13, 'Matupá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5245, 13, 'Mirassol d Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5246, 13, 'Nobres');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5247, 13, 'Nortelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5248, 13, 'Nossa Senhora do Livramento');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5249, 13, 'Nova Bandeirantes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5250, 13, 'Nova Nazaré');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5251, 13, 'Nova Lacerda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5252, 13, 'Nova Santa Helena');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5253, 13, 'Nova Brasilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5254, 13, 'Nova Canaã do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5255, 13, 'Nova Mutum');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5256, 13, 'Nova Olímpia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5257, 13, 'Nova Ubiratã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5258, 13, 'Nova Xavantina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5259, 13, 'Novo Mundo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5260, 13, 'Novo Horizonte do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5261, 13, 'Novo São Joaquim');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5262, 13, 'Paranaíta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5263, 13, 'Paranatinga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5264, 13, 'Novo Santo Antônio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5265, 13, 'Pedra Preta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5266, 13, 'Peixoto de Azevedo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5267, 13, 'Planalto da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5268, 13, 'Poconé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5269, 13, 'Pontal do Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5270, 13, 'Ponte Branca');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5271, 13, 'Pontes e Lacerda');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5272, 13, 'Porto Alegre do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5273, 13, 'Porto dos Gaúchos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5274, 13, 'Porto Esperidião');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5275, 13, 'Porto Estrela');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5276, 13, 'Poxoréo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5277, 13, 'Primavera do Leste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5278, 13, 'Querência');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5279, 13, 'São José dos Quatro Marcos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5280, 13, 'Reserva do Cabaçal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5281, 13, 'Ribeirão Cascalheira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5282, 13, 'Ribeirãozinho');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5283, 13, 'Rio Branco');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5284, 13, 'Santa Carmem');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5285, 13, 'Santo Afonso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5286, 13, 'São José do Povo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5287, 13, 'São José do Rio Claro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5288, 13, 'São José do Xingu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5289, 13, 'São Pedro da Cipa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5290, 13, 'Rondolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5291, 13, 'Rondonópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5292, 13, 'Rosário Oeste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5293, 13, 'Santa Cruz do Xingu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5294, 13, 'Salto do Céu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5295, 13, 'Santa Rita do Trivelato');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5296, 13, 'Santa Terezinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5297, 13, 'Santo Antônio do Leste');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5298, 13, 'Santo Antônio do Leverger');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5299, 13, 'São Félix do Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5300, 13, 'Sapezal');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5301, 13, 'Serra Nova Dourada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5302, 13, 'Sinop');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5303, 13, 'Sorriso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5304, 13, 'Tabaporã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5305, 13, 'Tangará da Serra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5306, 13, 'Tapurah');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5307, 13, 'Terra Nova do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5308, 13, 'Tesouro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5309, 13, 'Torixoréu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5310, 13, 'União do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5311, 13, 'Vale de São Domingos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5312, 13, 'Várzea Grande');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5313, 13, 'Vera');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5314, 13, 'Vila Rica');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5315, 13, 'Nova Guarita');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5316, 13, 'Nova Marilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5317, 13, 'Nova Maringá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5318, 13, 'Nova Monte Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5319, 9, 'Abadia de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5320, 9, 'Abadiânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5321, 9, 'Acreúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5322, 9, 'Adelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5323, 9, 'Água Fria de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5324, 9, 'Água Limpa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5325, 9, 'Águas Lindas de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5326, 9, 'Alexânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5327, 9, 'Aloândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5328, 9, 'Alto Horizonte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5329, 9, 'Alto Paraíso de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5330, 9, 'Alvorada do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5331, 9, 'Amaralina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5332, 9, 'Americano do Brasil');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5333, 9, 'Amorinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5334, 9, 'Anápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5335, 9, 'Anhanguera');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5336, 9, 'Anicuns');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5337, 9, 'Aparecida de Goiânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5338, 9, 'Aparecida do Rio Doce');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5339, 9, 'Aporé');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5340, 9, 'Araçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5341, 9, 'Aragarças');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5342, 9, 'Aragoiânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5343, 9, 'Araguapaz');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5344, 9, 'Arenópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5345, 9, 'Aruanã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5346, 9, 'Aurilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5347, 9, 'Avelinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5348, 9, 'Baliza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5349, 9, 'Barro Alto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5350, 9, 'Bela Vista de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5351, 9, 'Bom Jardim de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5352, 9, 'Bom Jesus de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5353, 9, 'Bonfinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5354, 9, 'Bonópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5355, 9, 'Brazabrantes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5356, 9, 'Britânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5357, 9, 'Buriti Alegre');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5358, 9, 'Buriti de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5359, 9, 'Buritinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5360, 9, 'Cabeceiras');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5361, 9, 'Cachoeira Alta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5362, 9, 'Cachoeira de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5363, 9, 'Cachoeira Dourada');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5364, 9, 'Caçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5365, 9, 'Caiapônia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5366, 9, 'Caldas Novas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5367, 9, 'Caldazinha');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5368, 9, 'Campestre de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5369, 9, 'Campinaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5370, 9, 'Campinorte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5371, 9, 'Campo Alegre de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5372, 9, 'Campo Limpo de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5373, 9, 'Campos Belos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5374, 9, 'Campos Verdes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5375, 9, 'Carmo do Rio Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5376, 9, 'Castelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5377, 9, 'Catalão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5378, 9, 'Caturaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5379, 9, 'Cavalcante');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5380, 9, 'Ceres');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5381, 9, 'Cezarina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5382, 9, 'Chapadão do Céu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5383, 9, 'Cidade Ocidental');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5384, 9, 'Cocalzinho de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5385, 9, 'Colinas do Sul');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5386, 9, 'Córrego do Ouro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5387, 9, 'Corumbá de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5388, 9, 'Corumbaíba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5389, 9, 'Cristalina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5390, 9, 'Cristianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5391, 9, 'Crixás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5392, 9, 'Cromínia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5393, 9, 'Cumari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5394, 9, 'Damianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5395, 9, 'Damolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5396, 9, 'Davinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5397, 9, 'Diorama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5398, 9, 'Doverlândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5399, 9, 'Edealina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5400, 9, 'Edéia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5401, 9, 'Estrela do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5402, 9, 'Faina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5403, 9, 'Fazenda Nova');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5404, 9, 'Firminópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5405, 9, 'Flores de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5406, 9, 'Formosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5407, 9, 'Formoso');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5408, 9, 'Gameleira de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5409, 9, 'Divinópolis de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5410, 9, 'Goianápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5411, 9, 'Goiandira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5412, 9, 'Goianésia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5413, 9, 'Goiânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5414, 9, 'Goianira');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5415, 9, 'Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5416, 9, 'Goiatuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5417, 9, 'Gouvelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5418, 9, 'Guapó');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5419, 9, 'Guaraíta');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5420, 9, 'Guarani de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5421, 9, 'Guarinos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5422, 9, 'Heitoraí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5423, 9, 'Hidrolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5424, 9, 'Hidrolina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5425, 9, 'Iaciara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5426, 9, 'Inaciolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5427, 9, 'Indiara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5428, 9, 'Inhumas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5429, 9, 'Ipameri');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5430, 9, 'Ipiranga de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5431, 9, 'Iporá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5432, 9, 'Israelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5433, 9, 'Itaberaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5434, 9, 'Itaguari');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5435, 9, 'Itaguaru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5436, 9, 'Itajá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5437, 9, 'Itapaci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5438, 9, 'Itapirapuã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5439, 9, 'Itapuranga');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5440, 9, 'Itarumã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5441, 9, 'Itauçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5442, 9, 'Itumbiara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5443, 9, 'Ivolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5444, 9, 'Jandaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5445, 9, 'Jaraguá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5446, 9, 'Jataí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5447, 9, 'Jaupaci');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5448, 9, 'Jesúpolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5449, 9, 'Joviânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5450, 9, 'Jussara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5451, 9, 'Lagoa Santa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5452, 9, 'Leopoldo de Bulhões');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5453, 9, 'Luziânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5454, 9, 'Mairipotaba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5455, 9, 'Mambaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5456, 9, 'Mara Rosa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5457, 9, 'Marzagão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5458, 9, 'Matrinchã');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5459, 9, 'Maurilândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5460, 9, 'Mimoso de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5461, 9, 'Minaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5462, 9, 'Mineiros');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5463, 9, 'Moiporá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5464, 9, 'Monte Alegre de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5465, 9, 'Montes Claros de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5466, 9, 'Montividiu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5467, 9, 'Montividiu do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5468, 9, 'Morrinhos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5469, 9, 'Morro Agudo de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5470, 9, 'Mossâmedes');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5471, 9, 'Mozarlândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5472, 9, 'Mundo Novo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5473, 9, 'Mutunópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5474, 9, 'Nazário');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5475, 9, 'Nerópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5476, 9, 'Niquelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5477, 9, 'Nova América');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5478, 9, 'Nova Aurora');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5479, 9, 'Nova Crixás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5480, 9, 'Nova Glória');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5481, 9, 'Nova Iguaçu de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5482, 9, 'Nova Roma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5483, 9, 'Nova Veneza');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5484, 9, 'Novo Brasil');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5485, 9, 'Novo Gama');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5486, 9, 'Novo Planalto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5487, 9, 'Orizona');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5488, 9, 'Ouro Verde de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5489, 9, 'Ouvidor');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5490, 9, 'Padre Bernardo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5491, 9, 'Palestina de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5492, 9, 'Palmeiras de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5493, 9, 'Palmelo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5494, 9, 'Palminópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5495, 9, 'Panamá');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5496, 9, 'Paranaiguara');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5497, 9, 'Paraúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5498, 9, 'Perolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5499, 9, 'Petrolina de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5500, 9, 'Pilar de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5501, 9, 'Piracanjuba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5502, 9, 'Piranhas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5503, 9, 'Pirenópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5504, 9, 'Pires do Rio');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5505, 9, 'Planaltina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5506, 9, 'Pontalina');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5507, 9, 'Porangatu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5508, 9, 'Porteirão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5509, 9, 'Portelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5510, 9, 'Posse');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5511, 9, 'Professor Jamil');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5512, 9, 'Quirinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5513, 9, 'Rialma');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5514, 9, 'Rianápolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5515, 9, 'Rio Quente');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5516, 9, 'Rio Verde');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5517, 9, 'Rubiataba');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5518, 9, 'Sanclerlândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5519, 9, 'Santa Bárbara de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5520, 9, 'Santa Cruz de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5521, 9, 'Santa Fé de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5522, 9, 'Santa Helena de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5523, 9, 'Santa Isabel');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5524, 9, 'Santa Rita do Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5525, 9, 'Santa Rita do Novo Destino');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5526, 9, 'Santa Rosa de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5527, 9, 'Santa Tereza de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5528, 9, 'Santa Terezinha de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5529, 9, 'Santo Antônio da Barra');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5530, 9, 'Santo Antônio de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5531, 9, 'Santo Antônio do Descoberto');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5532, 9, 'São Domingos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5533, 9, 'São Francisco de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5534, 9, 'São João d Aliança');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5535, 9, 'São João da Paraúna');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5536, 9, 'São Luís de Montes Belos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5537, 9, 'São Luíz do Norte');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5538, 9, 'São Miguel do Araguaia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5539, 9, 'São Miguel do Passa Quatro');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5540, 9, 'São Patrício');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5541, 9, 'São Simão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5542, 9, 'Senador Canedo');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5543, 9, 'Serranópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5544, 9, 'Silvânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5545, 9, 'Simolândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5546, 9, 'Sítio d Abadia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5547, 9, 'Taquaral de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5548, 9, 'Teresina de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5549, 9, 'Terezópolis de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5550, 9, 'Três Ranchos');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5551, 9, 'Trindade');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5552, 9, 'Trombas');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5553, 9, 'Turvânia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5554, 9, 'Turvelândia');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5555, 9, 'Uirapuru');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5556, 9, 'Uruaçu');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5557, 9, 'Uruana');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5558, 9, 'Urutaí');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5559, 9, 'Valparaíso de Goiás');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5560, 9, 'Varjão');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5561, 9, 'Vianópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5562, 9, 'Vicentinópolis');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5563, 9, 'Vila Boa');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5564, 9, 'Vila Propício');
INSERT INTO tbmunicipio (idmunicipio, iduf, nmmunicipio) VALUES (5565, 7, 'Brasília');


--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 216
-- Name: tbmunicipio_idmunicipio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbmunicipio_idmunicipio_seq', 1, false);


--
-- TOC entry 3337 (class 0 OID 32671)
-- Dependencies: 219
-- Data for Name: tbpais; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbpais (idpais, nmpais) VALUES (1, 'Afeganistão');
INSERT INTO tbpais (idpais, nmpais) VALUES (2, 'África do Sul');
INSERT INTO tbpais (idpais, nmpais) VALUES (3, 'Akrotiri');
INSERT INTO tbpais (idpais, nmpais) VALUES (4, 'Åland');
INSERT INTO tbpais (idpais, nmpais) VALUES (5, 'Albânia');
INSERT INTO tbpais (idpais, nmpais) VALUES (6, 'Alemanha');
INSERT INTO tbpais (idpais, nmpais) VALUES (7, 'Andorra');
INSERT INTO tbpais (idpais, nmpais) VALUES (8, 'Angola');
INSERT INTO tbpais (idpais, nmpais) VALUES (9, 'Anguila');
INSERT INTO tbpais (idpais, nmpais) VALUES (10, 'Antárctida');
INSERT INTO tbpais (idpais, nmpais) VALUES (11, 'Antígua e Barbuda');
INSERT INTO tbpais (idpais, nmpais) VALUES (12, 'Antilhas Holandesas');
INSERT INTO tbpais (idpais, nmpais) VALUES (13, 'Arábia Saudita');
INSERT INTO tbpais (idpais, nmpais) VALUES (14, 'Argélia');
INSERT INTO tbpais (idpais, nmpais) VALUES (15, 'Argentina');
INSERT INTO tbpais (idpais, nmpais) VALUES (16, 'Arménia');
INSERT INTO tbpais (idpais, nmpais) VALUES (17, 'Aruba');
INSERT INTO tbpais (idpais, nmpais) VALUES (18, 'Ashmore and Cartier Islands');
INSERT INTO tbpais (idpais, nmpais) VALUES (19, 'Austrália');
INSERT INTO tbpais (idpais, nmpais) VALUES (20, 'Áustria');
INSERT INTO tbpais (idpais, nmpais) VALUES (21, 'Azerbeijão');
INSERT INTO tbpais (idpais, nmpais) VALUES (22, 'Baamas');
INSERT INTO tbpais (idpais, nmpais) VALUES (23, 'Bahamas');
INSERT INTO tbpais (idpais, nmpais) VALUES (24, 'Bangladesh');
INSERT INTO tbpais (idpais, nmpais) VALUES (25, 'Barbados');
INSERT INTO tbpais (idpais, nmpais) VALUES (26, 'Barein');
INSERT INTO tbpais (idpais, nmpais) VALUES (27, 'Belarus');
INSERT INTO tbpais (idpais, nmpais) VALUES (28, 'Bélgica');
INSERT INTO tbpais (idpais, nmpais) VALUES (29, 'Belize');
INSERT INTO tbpais (idpais, nmpais) VALUES (30, 'Benin');
INSERT INTO tbpais (idpais, nmpais) VALUES (31, 'Bermudas');
INSERT INTO tbpais (idpais, nmpais) VALUES (32, 'Bielorrúsia');
INSERT INTO tbpais (idpais, nmpais) VALUES (33, 'Birmânia');
INSERT INTO tbpais (idpais, nmpais) VALUES (34, 'Bósnia e Herzegovina');
INSERT INTO tbpais (idpais, nmpais) VALUES (35, 'Botswana');
INSERT INTO tbpais (idpais, nmpais) VALUES (36, 'Bolívia');
INSERT INTO tbpais (idpais, nmpais) VALUES (37, 'Brasil');
INSERT INTO tbpais (idpais, nmpais) VALUES (38, 'Brunei');
INSERT INTO tbpais (idpais, nmpais) VALUES (39, 'Bulgária');
INSERT INTO tbpais (idpais, nmpais) VALUES (40, 'Burkina Faso');
INSERT INTO tbpais (idpais, nmpais) VALUES (41, 'Burundi');
INSERT INTO tbpais (idpais, nmpais) VALUES (42, 'Butão');
INSERT INTO tbpais (idpais, nmpais) VALUES (43, 'Cabo Verde');
INSERT INTO tbpais (idpais, nmpais) VALUES (44, 'Camarões');
INSERT INTO tbpais (idpais, nmpais) VALUES (45, 'Camboja');
INSERT INTO tbpais (idpais, nmpais) VALUES (46, 'Canadá');
INSERT INTO tbpais (idpais, nmpais) VALUES (47, 'Cazaquistão');
INSERT INTO tbpais (idpais, nmpais) VALUES (48, 'Catar');
INSERT INTO tbpais (idpais, nmpais) VALUES (49, 'Chade');
INSERT INTO tbpais (idpais, nmpais) VALUES (50, 'Chile');
INSERT INTO tbpais (idpais, nmpais) VALUES (51, 'China');
INSERT INTO tbpais (idpais, nmpais) VALUES (52, 'Chipre');
INSERT INTO tbpais (idpais, nmpais) VALUES (53, 'Clipperton Island');
INSERT INTO tbpais (idpais, nmpais) VALUES (54, 'Colômbia');
INSERT INTO tbpais (idpais, nmpais) VALUES (55, 'Comores');
INSERT INTO tbpais (idpais, nmpais) VALUES (56, 'Congo');
INSERT INTO tbpais (idpais, nmpais) VALUES (57, 'Coreia do Norte');
INSERT INTO tbpais (idpais, nmpais) VALUES (58, 'Coreia do Sul');
INSERT INTO tbpais (idpais, nmpais) VALUES (59, 'Costa do Marfim');
INSERT INTO tbpais (idpais, nmpais) VALUES (60, 'Costa Rica');
INSERT INTO tbpais (idpais, nmpais) VALUES (61, 'Croácia');
INSERT INTO tbpais (idpais, nmpais) VALUES (62, 'Cuba');
INSERT INTO tbpais (idpais, nmpais) VALUES (63, 'Dinamarca');
INSERT INTO tbpais (idpais, nmpais) VALUES (64, 'Djibouti');
INSERT INTO tbpais (idpais, nmpais) VALUES (65, 'Dominica');
INSERT INTO tbpais (idpais, nmpais) VALUES (66, 'Egito');
INSERT INTO tbpais (idpais, nmpais) VALUES (67, 'El Salvador');
INSERT INTO tbpais (idpais, nmpais) VALUES (68, 'Emirados Árabes Unidos');
INSERT INTO tbpais (idpais, nmpais) VALUES (69, 'Equador');
INSERT INTO tbpais (idpais, nmpais) VALUES (70, 'Eritreia');
INSERT INTO tbpais (idpais, nmpais) VALUES (71, 'Eslováquia');
INSERT INTO tbpais (idpais, nmpais) VALUES (72, 'Eslovénia');
INSERT INTO tbpais (idpais, nmpais) VALUES (73, 'Estónia');
INSERT INTO tbpais (idpais, nmpais) VALUES (74, 'Espanha');
INSERT INTO tbpais (idpais, nmpais) VALUES (75, 'Estados Unidos da América');
INSERT INTO tbpais (idpais, nmpais) VALUES (76, 'Etiópia');
INSERT INTO tbpais (idpais, nmpais) VALUES (77, 'Faroé');
INSERT INTO tbpais (idpais, nmpais) VALUES (78, 'Federação dos Estados da Micronésia');
INSERT INTO tbpais (idpais, nmpais) VALUES (79, 'Fiji');
INSERT INTO tbpais (idpais, nmpais) VALUES (80, 'Filipinas');
INSERT INTO tbpais (idpais, nmpais) VALUES (81, 'Finlândia');
INSERT INTO tbpais (idpais, nmpais) VALUES (82, 'França');
INSERT INTO tbpais (idpais, nmpais) VALUES (83, 'Gabão');
INSERT INTO tbpais (idpais, nmpais) VALUES (84, 'Gâmbia');
INSERT INTO tbpais (idpais, nmpais) VALUES (85, 'Gana');
INSERT INTO tbpais (idpais, nmpais) VALUES (86, 'Geórgia');
INSERT INTO tbpais (idpais, nmpais) VALUES (87, 'Gibraltar');
INSERT INTO tbpais (idpais, nmpais) VALUES (88, 'Guatemala');
INSERT INTO tbpais (idpais, nmpais) VALUES (89, 'Guadeloupe');
INSERT INTO tbpais (idpais, nmpais) VALUES (90, 'Guam');
INSERT INTO tbpais (idpais, nmpais) VALUES (91, 'Grécia');
INSERT INTO tbpais (idpais, nmpais) VALUES (92, 'Granada');
INSERT INTO tbpais (idpais, nmpais) VALUES (93, 'Gronelândia');
INSERT INTO tbpais (idpais, nmpais) VALUES (94, 'Guernsey');
INSERT INTO tbpais (idpais, nmpais) VALUES (95, 'Guiana');
INSERT INTO tbpais (idpais, nmpais) VALUES (96, 'Guiana Francesa');
INSERT INTO tbpais (idpais, nmpais) VALUES (97, 'Guiné');
INSERT INTO tbpais (idpais, nmpais) VALUES (98, 'Guiné Equatorial');
INSERT INTO tbpais (idpais, nmpais) VALUES (99, 'Guiné Bissau');
INSERT INTO tbpais (idpais, nmpais) VALUES (100, 'Haiti');
INSERT INTO tbpais (idpais, nmpais) VALUES (101, 'Holanda');
INSERT INTO tbpais (idpais, nmpais) VALUES (102, 'Honduras');
INSERT INTO tbpais (idpais, nmpais) VALUES (103, 'Hong Kong');
INSERT INTO tbpais (idpais, nmpais) VALUES (104, 'Hungria');
INSERT INTO tbpais (idpais, nmpais) VALUES (105, 'Iemen');
INSERT INTO tbpais (idpais, nmpais) VALUES (106, 'Ilha Bouvet');
INSERT INTO tbpais (idpais, nmpais) VALUES (107, 'Ilha Christmas');
INSERT INTO tbpais (idpais, nmpais) VALUES (108, 'Ilha Heard e Ilhas McDonald');
INSERT INTO tbpais (idpais, nmpais) VALUES (109, 'Ilha Norfolk');
INSERT INTO tbpais (idpais, nmpais) VALUES (110, 'Ilhas Cayman');
INSERT INTO tbpais (idpais, nmpais) VALUES (111, 'Ilhas Cocos');
INSERT INTO tbpais (idpais, nmpais) VALUES (112, 'Ilhas Cook');
INSERT INTO tbpais (idpais, nmpais) VALUES (113, 'Ilhas Faroe');
INSERT INTO tbpais (idpais, nmpais) VALUES (114, 'Ilhas Geórgia do Sul e Sandwich do Sul');
INSERT INTO tbpais (idpais, nmpais) VALUES (115, 'Ilhas Malvinas');
INSERT INTO tbpais (idpais, nmpais) VALUES (116, 'Ilhas Marshall');
INSERT INTO tbpais (idpais, nmpais) VALUES (117, 'Ilhas Menores Distantes dos Estados Unidos');
INSERT INTO tbpais (idpais, nmpais) VALUES (118, 'Ilhas Salomão');
INSERT INTO tbpais (idpais, nmpais) VALUES (119, 'Ilhas Virgens Britânicas');
INSERT INTO tbpais (idpais, nmpais) VALUES (120, 'Ilhas Virgens Americanas');
INSERT INTO tbpais (idpais, nmpais) VALUES (121, 'Índia');
INSERT INTO tbpais (idpais, nmpais) VALUES (122, 'Indonésia');
INSERT INTO tbpais (idpais, nmpais) VALUES (123, 'Irã');
INSERT INTO tbpais (idpais, nmpais) VALUES (124, 'Iraque');
INSERT INTO tbpais (idpais, nmpais) VALUES (125, 'Irlanda');
INSERT INTO tbpais (idpais, nmpais) VALUES (126, 'Islândia');
INSERT INTO tbpais (idpais, nmpais) VALUES (127, 'Israel');
INSERT INTO tbpais (idpais, nmpais) VALUES (128, 'Itália');
INSERT INTO tbpais (idpais, nmpais) VALUES (129, 'Jamaica');
INSERT INTO tbpais (idpais, nmpais) VALUES (130, 'Japão');
INSERT INTO tbpais (idpais, nmpais) VALUES (131, 'Jersey');
INSERT INTO tbpais (idpais, nmpais) VALUES (132, 'Jordânia');
INSERT INTO tbpais (idpais, nmpais) VALUES (133, 'Kiribati');
INSERT INTO tbpais (idpais, nmpais) VALUES (134, 'Kuwait');
INSERT INTO tbpais (idpais, nmpais) VALUES (135, 'Laos');
INSERT INTO tbpais (idpais, nmpais) VALUES (136, 'Lesoto');
INSERT INTO tbpais (idpais, nmpais) VALUES (137, 'Letónia');
INSERT INTO tbpais (idpais, nmpais) VALUES (138, 'Líbano');
INSERT INTO tbpais (idpais, nmpais) VALUES (139, 'Libéria');
INSERT INTO tbpais (idpais, nmpais) VALUES (140, 'Líbia');
INSERT INTO tbpais (idpais, nmpais) VALUES (141, 'Liechtenstein');
INSERT INTO tbpais (idpais, nmpais) VALUES (142, 'Lituânia');
INSERT INTO tbpais (idpais, nmpais) VALUES (143, 'Luxemburgo');
INSERT INTO tbpais (idpais, nmpais) VALUES (144, 'Macedónia');
INSERT INTO tbpais (idpais, nmpais) VALUES (145, 'Madagascar');
INSERT INTO tbpais (idpais, nmpais) VALUES (146, 'Macau');
INSERT INTO tbpais (idpais, nmpais) VALUES (147, 'Malawi');
INSERT INTO tbpais (idpais, nmpais) VALUES (148, 'Malásia');
INSERT INTO tbpais (idpais, nmpais) VALUES (149, 'Mali');
INSERT INTO tbpais (idpais, nmpais) VALUES (150, 'Malta');
INSERT INTO tbpais (idpais, nmpais) VALUES (151, 'Martinica');
INSERT INTO tbpais (idpais, nmpais) VALUES (152, 'Maldivas');
INSERT INTO tbpais (idpais, nmpais) VALUES (153, 'Marrocos');
INSERT INTO tbpais (idpais, nmpais) VALUES (154, 'Mauritânia');
INSERT INTO tbpais (idpais, nmpais) VALUES (155, 'Maurício');
INSERT INTO tbpais (idpais, nmpais) VALUES (156, 'Mayotte');
INSERT INTO tbpais (idpais, nmpais) VALUES (157, 'Marianas Setentrionais');
INSERT INTO tbpais (idpais, nmpais) VALUES (158, 'México');
INSERT INTO tbpais (idpais, nmpais) VALUES (159, 'Myanmar');
INSERT INTO tbpais (idpais, nmpais) VALUES (160, 'Mónaco');
INSERT INTO tbpais (idpais, nmpais) VALUES (161, 'Mongólia');
INSERT INTO tbpais (idpais, nmpais) VALUES (162, 'Moldávia');
INSERT INTO tbpais (idpais, nmpais) VALUES (163, 'Montenegro');
INSERT INTO tbpais (idpais, nmpais) VALUES (164, 'Montserrat');
INSERT INTO tbpais (idpais, nmpais) VALUES (165, 'Moçambique');
INSERT INTO tbpais (idpais, nmpais) VALUES (166, 'Namíbia');
INSERT INTO tbpais (idpais, nmpais) VALUES (167, 'Nauru');
INSERT INTO tbpais (idpais, nmpais) VALUES (168, 'Nepal');
INSERT INTO tbpais (idpais, nmpais) VALUES (169, 'Nicaráqua');
INSERT INTO tbpais (idpais, nmpais) VALUES (170, 'Niger');
INSERT INTO tbpais (idpais, nmpais) VALUES (171, 'Niue');
INSERT INTO tbpais (idpais, nmpais) VALUES (172, 'Nigéria');
INSERT INTO tbpais (idpais, nmpais) VALUES (173, 'Noruega');
INSERT INTO tbpais (idpais, nmpais) VALUES (174, 'Nova Caledónia');
INSERT INTO tbpais (idpais, nmpais) VALUES (175, 'Nova Zelândia');
INSERT INTO tbpais (idpais, nmpais) VALUES (176, 'Omã');
INSERT INTO tbpais (idpais, nmpais) VALUES (177, 'Palau');
INSERT INTO tbpais (idpais, nmpais) VALUES (178, 'Palestina');
INSERT INTO tbpais (idpais, nmpais) VALUES (179, 'Paquistão');
INSERT INTO tbpais (idpais, nmpais) VALUES (180, 'Panamá');
INSERT INTO tbpais (idpais, nmpais) VALUES (181, 'Papua Nova Guiné');
INSERT INTO tbpais (idpais, nmpais) VALUES (182, 'Paraguai');
INSERT INTO tbpais (idpais, nmpais) VALUES (183, 'Peru');
INSERT INTO tbpais (idpais, nmpais) VALUES (184, 'Pitcairn');
INSERT INTO tbpais (idpais, nmpais) VALUES (185, 'Polónia');
INSERT INTO tbpais (idpais, nmpais) VALUES (186, 'Polinésia Francesa');
INSERT INTO tbpais (idpais, nmpais) VALUES (187, 'Portugal');
INSERT INTO tbpais (idpais, nmpais) VALUES (188, 'Porto Rico');
INSERT INTO tbpais (idpais, nmpais) VALUES (189, 'Qatar');
INSERT INTO tbpais (idpais, nmpais) VALUES (190, 'Quénia');
INSERT INTO tbpais (idpais, nmpais) VALUES (191, 'Quirguizistão');
INSERT INTO tbpais (idpais, nmpais) VALUES (192, 'Quiribáti');
INSERT INTO tbpais (idpais, nmpais) VALUES (193, 'Reino Unido');
INSERT INTO tbpais (idpais, nmpais) VALUES (194, 'República Centro Africana');
INSERT INTO tbpais (idpais, nmpais) VALUES (195, 'República Democrática do Congo');
INSERT INTO tbpais (idpais, nmpais) VALUES (196, 'República Dominicana');
INSERT INTO tbpais (idpais, nmpais) VALUES (197, 'República Tcheca');
INSERT INTO tbpais (idpais, nmpais) VALUES (198, 'Reunião');
INSERT INTO tbpais (idpais, nmpais) VALUES (199, 'Roménia');
INSERT INTO tbpais (idpais, nmpais) VALUES (200, 'Ruanda');
INSERT INTO tbpais (idpais, nmpais) VALUES (201, 'Russia');
INSERT INTO tbpais (idpais, nmpais) VALUES (202, 'Saara Ocidental');
INSERT INTO tbpais (idpais, nmpais) VALUES (203, 'Saint Pierre et Miquelon');
INSERT INTO tbpais (idpais, nmpais) VALUES (204, 'Samoa Americana');
INSERT INTO tbpais (idpais, nmpais) VALUES (205, 'Samoa (Samoa Ocidental)');
INSERT INTO tbpais (idpais, nmpais) VALUES (206, 'San Marino');
INSERT INTO tbpais (idpais, nmpais) VALUES (207, 'Santa Helena');
INSERT INTO tbpais (idpais, nmpais) VALUES (208, 'Santa Lúcia');
INSERT INTO tbpais (idpais, nmpais) VALUES (209, 'São Cristóvão e Névis');
INSERT INTO tbpais (idpais, nmpais) VALUES (210, 'São Vicente e Granadinas');
INSERT INTO tbpais (idpais, nmpais) VALUES (211, 'São Tomé e Príncipe');
INSERT INTO tbpais (idpais, nmpais) VALUES (212, 'Senegal');
INSERT INTO tbpais (idpais, nmpais) VALUES (213, 'Serra Leoa');
INSERT INTO tbpais (idpais, nmpais) VALUES (214, 'Sérvia');
INSERT INTO tbpais (idpais, nmpais) VALUES (215, 'Seychelles');
INSERT INTO tbpais (idpais, nmpais) VALUES (216, 'Síria');
INSERT INTO tbpais (idpais, nmpais) VALUES (217, 'Singapura');
INSERT INTO tbpais (idpais, nmpais) VALUES (218, 'Somália');
INSERT INTO tbpais (idpais, nmpais) VALUES (219, 'Sri Lanka');
INSERT INTO tbpais (idpais, nmpais) VALUES (220, 'Sudão');
INSERT INTO tbpais (idpais, nmpais) VALUES (221, 'Suazilândia');
INSERT INTO tbpais (idpais, nmpais) VALUES (222, 'Suriname');
INSERT INTO tbpais (idpais, nmpais) VALUES (223, 'Suécia');
INSERT INTO tbpais (idpais, nmpais) VALUES (224, 'Suíça');
INSERT INTO tbpais (idpais, nmpais) VALUES (225, 'Svalbard e Jan Mayen');
INSERT INTO tbpais (idpais, nmpais) VALUES (226, 'Tailândia');
INSERT INTO tbpais (idpais, nmpais) VALUES (227, 'Taiwan');
INSERT INTO tbpais (idpais, nmpais) VALUES (228, 'Tajidquistão');
INSERT INTO tbpais (idpais, nmpais) VALUES (229, 'Tanzânia');
INSERT INTO tbpais (idpais, nmpais) VALUES (230, 'Terras Austrais e Antárticas Francesas');
INSERT INTO tbpais (idpais, nmpais) VALUES (231, 'Território Britânico do Oceano Índico');
INSERT INTO tbpais (idpais, nmpais) VALUES (232, 'Timor Leste');
INSERT INTO tbpais (idpais, nmpais) VALUES (233, 'Togo');
INSERT INTO tbpais (idpais, nmpais) VALUES (234, 'Toquelau');
INSERT INTO tbpais (idpais, nmpais) VALUES (235, 'Tonga');
INSERT INTO tbpais (idpais, nmpais) VALUES (236, 'Trindad e Tobago');
INSERT INTO tbpais (idpais, nmpais) VALUES (237, 'Tunísia');
INSERT INTO tbpais (idpais, nmpais) VALUES (238, 'Turquia');
INSERT INTO tbpais (idpais, nmpais) VALUES (239, 'Turcomenistão');
INSERT INTO tbpais (idpais, nmpais) VALUES (240, 'Turks e Caicos');
INSERT INTO tbpais (idpais, nmpais) VALUES (241, 'Tuvalu');
INSERT INTO tbpais (idpais, nmpais) VALUES (242, 'Uganda');
INSERT INTO tbpais (idpais, nmpais) VALUES (243, 'Ucrânia');
INSERT INTO tbpais (idpais, nmpais) VALUES (244, 'Uruguai');
INSERT INTO tbpais (idpais, nmpais) VALUES (245, 'Uzbequistão');
INSERT INTO tbpais (idpais, nmpais) VALUES (246, 'Vaticano');
INSERT INTO tbpais (idpais, nmpais) VALUES (247, 'Vanuatu');
INSERT INTO tbpais (idpais, nmpais) VALUES (248, 'Venezuela');
INSERT INTO tbpais (idpais, nmpais) VALUES (249, 'Vietnam');
INSERT INTO tbpais (idpais, nmpais) VALUES (250, 'Zâmbia');
INSERT INTO tbpais (idpais, nmpais) VALUES (251, 'Zimbábue');
INSERT INTO tbpais (idpais, nmpais) VALUES (252, 'Wallis e Futuna');


--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 218
-- Name: tbpais_idpais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbpais_idpais_seq', 1, false);


--
-- TOC entry 3339 (class 0 OID 32679)
-- Dependencies: 221
-- Data for Name: tbparametro; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbparametro (idparametro, nmparametro, vlrparametro) VALUES (1, 'Sequencial da Manifestação', '1');
INSERT INTO tbparametro (idparametro, nmparametro, vlrparametro) VALUES (2, 'Ano atual', '2014');
INSERT INTO tbparametro (idparametro, nmparametro, vlrparametro) VALUES (3, 'Diretório para onde serão enviados os arquivos anexados', '/var/arquivos/');
INSERT INTO tbparametro (idparametro, nmparametro, vlrparametro) VALUES (4, 'URL base do Sistema', 'http://ouvidoria.ouvidoria.gov.br');


--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 220
-- Name: tbparametro_idparametro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbparametro_idparametro_seq', 1, false);


--
-- TOC entry 3341 (class 0 OID 32690)
-- Dependencies: 223
-- Data for Name: tbperfil; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbperfil (idperfil, tpperfil, nmperfil) VALUES (1, '1', 'Administrar Usuário');
INSERT INTO tbperfil (idperfil, tpperfil, nmperfil) VALUES (1033, '1', 'Técnico');
INSERT INTO tbperfil (idperfil, tpperfil, nmperfil) VALUES (2040, '1', 'Usuário');
INSERT INTO tbperfil (idperfil, tpperfil, nmperfil) VALUES (2043, '1', 'Gráficos ');
INSERT INTO tbperfil (idperfil, tpperfil, nmperfil) VALUES (2044, '1', 'Interlocutor ');
INSERT INTO tbperfil (idperfil, tpperfil, nmperfil) VALUES (2045, '1', 'Administrador ');
INSERT INTO tbperfil (idperfil, tpperfil, nmperfil) VALUES (2046, '1', 'Filtro Personalizado');


--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 222
-- Name: tbperfil_idperfil_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbperfil_idperfil_seq', 1, false);


--
-- TOC entry 3343 (class 0 OID 32701)
-- Dependencies: 225
-- Data for Name: tbperfilxfuncionalidade; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 224
-- Name: tbperfilxfuncionalidade_idperfilxfuncionalidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbperfilxfuncionalidade_idperfilxfuncionalidade_seq', 1, false);


--
-- TOC entry 3345 (class 0 OID 32709)
-- Dependencies: 227
-- Data for Name: tbperfilxgrupo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 226
-- Name: tbperfilxgrupo_idperfilxgrupo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbperfilxgrupo_idperfilxgrupo_seq', 1, false);


--
-- TOC entry 3355 (class 0 OID 32758)
-- Dependencies: 237
-- Data for Name: tbperguntaquestionario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 236
-- Name: tbperguntaquestionario_idpergunta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbperguntaquestionario_idpergunta_seq', 1, false);


--
-- TOC entry 3347 (class 0 OID 32717)
-- Dependencies: 229
-- Data for Name: tbprazoesic; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 228
-- Name: tbprazoesic_idprazoesic_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbprazoesic_idprazoesic_seq', 1, false);


--
-- TOC entry 3349 (class 0 OID 32728)
-- Dependencies: 231
-- Data for Name: tbpreferenciasistema; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 230
-- Name: tbpreferenciasistema_idpreferenciasistema_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbpreferenciasistema_idpreferenciasistema_seq', 1, false);


--
-- TOC entry 3351 (class 0 OID 32739)
-- Dependencies: 233
-- Data for Name: tbprioridade; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbprioridade (idprioridade, nmprioridade) VALUES (1, 'Normal');
INSERT INTO tbprioridade (idprioridade, nmprioridade) VALUES (2, 'Urgente');
INSERT INTO tbprioridade (idprioridade, nmprioridade) VALUES (3, 'Baixa');
INSERT INTO tbprioridade (idprioridade, nmprioridade) VALUES (1021, 'Alta');


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 232
-- Name: tbprioridade_idprioridade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbprioridade_idprioridade_seq', 1, false);


--
-- TOC entry 3353 (class 0 OID 32747)
-- Dependencies: 235
-- Data for Name: tbquestionario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 234
-- Name: tbquestionario_idquestionario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbquestionario_idquestionario_seq', 1, false);


--
-- TOC entry 3359 (class 0 OID 32774)
-- Dependencies: 241
-- Data for Name: tbrespostamanifestacao; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 240
-- Name: tbrespostamanifestacao_idrespostamanifestacao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbrespostamanifestacao_idrespostamanifestacao_seq', 1, false);


--
-- TOC entry 3357 (class 0 OID 32766)
-- Dependencies: 239
-- Data for Name: tbrespostaquestionario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 238
-- Name: tbrespostaquestionario_idresposta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbrespostaquestionario_idresposta_seq', 1, false);


--
-- TOC entry 3361 (class 0 OID 32785)
-- Dependencies: 243
-- Data for Name: tbsubclassificacao; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 242
-- Name: tbsubclassificacao_idsubclassificacao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbsubclassificacao_idsubclassificacao_seq', 1, false);


--
-- TOC entry 3363 (class 0 OID 32793)
-- Dependencies: 245
-- Data for Name: tbtipomanifestacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbtipomanifestacao (idtipomanifestacao, nmtipomanifestacao, dstipomanifestacao, prazoentrada, prazoareasolucionadora, prazorespostacidadao) VALUES (1, 'Reclamação', 'Manifestação que apresenta uma insatisfação do cidadão ou de uma organização para com um dos programas, serviços, política ou diretrizes do Ministério da Cultura.', 1, 5, 1);
INSERT INTO tbtipomanifestacao (idtipomanifestacao, nmtipomanifestacao, dstipomanifestacao, prazoentrada, prazoareasolucionadora, prazorespostacidadao) VALUES (3, 'Sugestão', 'Manifestação na qual o cidadão ou uma organização sugere uma modificação, criação, melhoria ou alteração de rotina, política, diretriz, programa ou serviço do Ministério da Cultura.', 1, 1, 1);
INSERT INTO tbtipomanifestacao (idtipomanifestacao, nmtipomanifestacao, dstipomanifestacao, prazoentrada, prazoareasolucionadora, prazorespostacidadao) VALUES (4, 'Informação', 'Manifestação na qual o cidadão ou uma organização solicita informação sobre determinada rotina, política, diretriz, programa ou serviço do Ministério da Cultura.', 1, 1, 1);
INSERT INTO tbtipomanifestacao (idtipomanifestacao, nmtipomanifestacao, dstipomanifestacao, prazoentrada, prazoareasolucionadora, prazorespostacidadao) VALUES (5, 'Denúncia', 'Manifestação na qual o cidadão ou uma organização relata um indício de irregularidade, improbidade ou ilegalidade referente a uma pessoa ou grupo, no âmbito do Ministério da Cultura ou de seus Órgãos Vinculados.', 1, 28, 1);
INSERT INTO tbtipomanifestacao (idtipomanifestacao, nmtipomanifestacao, dstipomanifestacao, prazoentrada, prazoareasolucionadora, prazorespostacidadao) VALUES (6, 'Elogio', 'Manifestação na qual o cidadão ou uma organização elogia uma modificação, criação, melhoria ou alteração de rotina, política, diretriz, programa ou serviço do Ministério da Cultura.', 1, 1, 1);
INSERT INTO tbtipomanifestacao (idtipomanifestacao, nmtipomanifestacao, dstipomanifestacao, prazoentrada, prazoareasolucionadora, prazorespostacidadao) VALUES (2031, 'Solicitação', 'Manifestação na qual o cidadão solicita algo. ', 1, 2, 1);


--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 244
-- Name: tbtipomanifestacao_idtipomanifestacao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbtipomanifestacao_idtipomanifestacao_seq', 1, false);


--
-- TOC entry 3365 (class 0 OID 32804)
-- Dependencies: 247
-- Data for Name: tbtramite; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 246
-- Name: tbtramite_idtramite_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbtramite_idtramite_seq', 1, false);


--
-- TOC entry 3367 (class 0 OID 32815)
-- Dependencies: 249
-- Data for Name: tbtramitexanexo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 248
-- Name: tbtramitexanexo_idtramitexanexo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbtramitexanexo_idtramitexanexo_seq', 1, false);


--
-- TOC entry 3369 (class 0 OID 32823)
-- Dependencies: 251
-- Data for Name: tbuf; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (1, 'AC', 'Acre');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (2, 'AL', 'Alagoas');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (3, 'AM', 'Amazonas');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (4, 'AP', 'Amapá');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (5, 'BA', 'Bahia');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (6, 'CE', 'Ceará');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (7, 'DF', 'Distrito Federal');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (8, 'ES', 'Espírito Santo');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (9, 'GO', 'Goiás');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (10, 'MA', 'Maranhão');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (11, 'MG', 'Minas Gerais');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (12, 'MS', 'Mato Grosso do Sul');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (13, 'MT', 'Mato Grosso');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (14, 'PA', 'Pará');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (15, 'PB', 'Paraíba');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (16, 'PR', 'Paraná');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (17, 'PE', 'Pernambuco');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (18, 'PI', 'Piauí');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (19, 'RJ', 'Rio de Janeiro');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (20, 'RN', 'Rio Grande do Norte');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (21, 'RO', 'Rondônia');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (22, 'RR', 'Roraima');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (23, 'RS', 'Rio Grande do Sul');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (24, 'SC', 'Santa Catarina');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (25, 'SE', 'Sergipe');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (26, 'SP', 'São Paulo');
INSERT INTO tbuf (iduf, sguf, nmuf) VALUES (27, 'TO', 'Tocantins');


--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 250
-- Name: tbuf_iduf_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbuf_iduf_seq', 1, false);


--
-- TOC entry 3371 (class 0 OID 32834)
-- Dependencies: 253
-- Data for Name: tbunidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbunidade (idunidade, nmunidade, sgunidade, eeemail, stretornoouvidoria, stvinculada) VALUES (1, 'Ouvidoria', 'Ouvidoria', NULL, '1', '2');


--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 252
-- Name: tbunidade_idunidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbunidade_idunidade_seq', 1, false);


--
-- TOC entry 3373 (class 0 OID 32845)
-- Dependencies: 255
-- Data for Name: tbunidadexmanifestacao; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 254
-- Name: tbunidadexmanifestacao_idunidademanifestacao_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbunidadexmanifestacao_idunidademanifestacao_seq', 1, false);


--
-- TOC entry 3375 (class 0 OID 32853)
-- Dependencies: 257
-- Data for Name: tbusuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tbusuario (idusuario, nmusuario, ststatus, eeemail, idunidade, tpusuario, nmlogin, numtelefone, nmsenha, tpfuncao) VALUES (1, 'root', 1, 'root@root.com', 1, '1', 'root', '(61)99999999', 'E10ADC3949BA59ABBE56E057F20F883E', '5');


--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 256
-- Name: tbusuario_idusuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbusuario_idusuario_seq', 1, false);


--
-- TOC entry 3377 (class 0 OID 32864)
-- Dependencies: 259
-- Data for Name: tbusuarioxperfil; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 258
-- Name: tbusuarioxperfil_idusuarioperfil_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tbusuarioxperfil_idusuarioperfil_seq', 1, false);


INSERT INTO TbPreferenciaSistema(idPreferenciaSistema, nomeOuvidoria, emailOuvidoria, hostEmail, portaEmail, usuarioEmail, senhaEmail, sslEmail, encerrarTramiteEncaminhada, retornarTramiteOuvidoria, ctlPrazoManifSoluc, RespostasImediatas, prazoEntrada, prazoAreaSolucionadora, prazoRespostaCidadao)
VALUES (1, 'Ouvidoria MinC', 'naoresponda.ouvidoria@cultura.gov.br', '10.0.0.54', 25, 'ouvidoria@cultura.gov.br', '', '2', '1', '1', '1', '1', 1, 28, 1)


--
-- TOC entry 3051 (class 2606 OID 32449)
-- Name: tbajuda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbajuda
    ADD CONSTRAINT tbajuda_pkey PRIMARY KEY (idajuda);


--
-- TOC entry 3053 (class 2606 OID 32460)
-- Name: tbanexo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbanexo
    ADD CONSTRAINT tbanexo_pkey PRIMARY KEY (idanexo);


--
-- TOC entry 3055 (class 2606 OID 32468)
-- Name: tbareaentrada_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbareaentrada
    ADD CONSTRAINT tbareaentrada_pkey PRIMARY KEY (idareaentrada);


--
-- TOC entry 3057 (class 2606 OID 32479)
-- Name: tbaviso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbaviso
    ADD CONSTRAINT tbaviso_pkey PRIMARY KEY (idavisos);


--
-- TOC entry 3059 (class 2606 OID 32487)
-- Name: tbcep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbcep
    ADD CONSTRAINT tbcep_pkey PRIMARY KEY (cdcep);


--
-- TOC entry 3061 (class 2606 OID 32495)
-- Name: tbclassificacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbclassificacao
    ADD CONSTRAINT tbclassificacao_pkey PRIMARY KEY (idclassificacao);


--
-- TOC entry 3145 (class 2606 OID 32879)
-- Name: tbclassificacao_tbsubclassificacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbclassificacao_tbsubclassificacao
    ADD CONSTRAINT tbclassificacao_tbsubclassificacao_pkey PRIMARY KEY (tbclassificacao_idclassificacao, tbsubclassificacaocollection_idsubclassificacao);


--
-- TOC entry 3147 (class 2606 OID 32884)
-- Name: tbclassificacao_tbunidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbclassificacao_tbunidade
    ADD CONSTRAINT tbclassificacao_tbunidade_pkey PRIMARY KEY (tbclassificacao_idclassificacao, tbunidadecollection_idunidade);


--
-- TOC entry 3063 (class 2606 OID 32500)
-- Name: tbcomentarioquestionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbcomentarioquestionario
    ADD CONSTRAINT tbcomentarioquestionario_pkey PRIMARY KEY (idcomentario);


--
-- TOC entry 3065 (class 2606 OID 32511)
-- Name: tbcomunicacaoexterna_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbcomunicacaoexterna
    ADD CONSTRAINT tbcomunicacaoexterna_pkey PRIMARY KEY (idcomunicacaoexterna);


--
-- TOC entry 3067 (class 2606 OID 32519)
-- Name: tbcomunicacaoexternaxanexo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbcomunicacaoexternaxanexo
    ADD CONSTRAINT tbcomunicacaoexternaxanexo_pkey PRIMARY KEY (idcomunicacaoexternaxanexo);


--
-- TOC entry 3069 (class 2606 OID 32530)
-- Name: tbemailautomatizado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbemailautomatizado
    ADD CONSTRAINT tbemailautomatizado_pkey PRIMARY KEY (idemailautomatizado);


--
-- TOC entry 3071 (class 2606 OID 32541)
-- Name: tbencaminhamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbencaminhamento
    ADD CONSTRAINT tbencaminhamento_pkey PRIMARY KEY (idencaminhamento);


--
-- TOC entry 3073 (class 2606 OID 32552)
-- Name: tbencaminhamentopadronizado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbencaminhamentopadronizado
    ADD CONSTRAINT tbencaminhamentopadronizado_pkey PRIMARY KEY (idencaminhamentopadronizado);


--
-- TOC entry 3075 (class 2606 OID 32560)
-- Name: tbencaminhamentoxanexo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbencaminhamentoxanexo
    ADD CONSTRAINT tbencaminhamentoxanexo_pkey PRIMARY KEY (idencaminhamentoxanexo);


--
-- TOC entry 3077 (class 2606 OID 32568)
-- Name: tbfaixaetaria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbfaixaetaria
    ADD CONSTRAINT tbfaixaetaria_pkey PRIMARY KEY (idfaixaetaria);


--
-- TOC entry 3079 (class 2606 OID 32579)
-- Name: tbfiltropersonalizado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbfiltropersonalizado
    ADD CONSTRAINT tbfiltropersonalizado_pkey PRIMARY KEY (idfiltropersonalizado);


--
-- TOC entry 3081 (class 2606 OID 32590)
-- Name: tbfiltrospam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbfiltrospam
    ADD CONSTRAINT tbfiltrospam_pkey PRIMARY KEY (idfiltrosspam);


--
-- TOC entry 3083 (class 2606 OID 32598)
-- Name: tbfuncionalidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbfuncionalidade
    ADD CONSTRAINT tbfuncionalidade_pkey PRIMARY KEY (idfuncionalidade);


--
-- TOC entry 3085 (class 2606 OID 32606)
-- Name: tbgrauinstrucao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbgrauinstrucao
    ADD CONSTRAINT tbgrauinstrucao_pkey PRIMARY KEY (idgrauinstrucao);


--
-- TOC entry 3087 (class 2606 OID 32614)
-- Name: tbgrupo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbgrupo
    ADD CONSTRAINT tbgrupo_pkey PRIMARY KEY (idgrupo);


--
-- TOC entry 3089 (class 2606 OID 32625)
-- Name: tblogoperacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tblogoperacao
    ADD CONSTRAINT tblogoperacao_pkey PRIMARY KEY (idlogoperacoes);


--
-- TOC entry 3091 (class 2606 OID 32636)
-- Name: tbmanifestacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbmanifestacao
    ADD CONSTRAINT tbmanifestacao_pkey PRIMARY KEY (idmanifestacao);


--
-- TOC entry 3143 (class 2606 OID 32874)
-- Name: tbmanifestacao_tbclassificacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbmanifestacao_tbclassificacao
    ADD CONSTRAINT tbmanifestacao_tbclassificacao_pkey PRIMARY KEY (tbclassificacao_idclassificacao, tbmanifestacao_idmanifestacao);


--
-- TOC entry 3149 (class 2606 OID 32889)
-- Name: tbmanifestacao_tbsubclassificacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbmanifestacao_tbsubclassificacao
    ADD CONSTRAINT tbmanifestacao_tbsubclassificacao_pkey PRIMARY KEY (tbmanifestacao_idmanifestacao, tbsubclassificacao_idsubclassificacao);


--
-- TOC entry 3151 (class 2606 OID 32894)
-- Name: tbmanifestacao_unidadeareasolucionadora_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbmanifestacao_unidadeareasolucionadora
    ADD CONSTRAINT tbmanifestacao_unidadeareasolucionadora_pkey PRIMARY KEY (idmanifestacao, idunidade);


--
-- TOC entry 3093 (class 2606 OID 32644)
-- Name: tbmanifestacaoxanexo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbmanifestacaoxanexo
    ADD CONSTRAINT tbmanifestacaoxanexo_pkey PRIMARY KEY (idmanifestacaoxanexo);


--
-- TOC entry 3095 (class 2606 OID 32652)
-- Name: tbmeioentrada_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbmeioentrada
    ADD CONSTRAINT tbmeioentrada_pkey PRIMARY KEY (idmeioentrada);


--
-- TOC entry 3097 (class 2606 OID 32660)
-- Name: tbmeioresposta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbmeioresposta
    ADD CONSTRAINT tbmeioresposta_pkey PRIMARY KEY (idmeioresposta);


--
-- TOC entry 3099 (class 2606 OID 32668)
-- Name: tbmunicipio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbmunicipio
    ADD CONSTRAINT tbmunicipio_pkey PRIMARY KEY (idmunicipio);


--
-- TOC entry 3101 (class 2606 OID 32676)
-- Name: tbpais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbpais
    ADD CONSTRAINT tbpais_pkey PRIMARY KEY (idpais);


--
-- TOC entry 3103 (class 2606 OID 32687)
-- Name: tbparametro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbparametro
    ADD CONSTRAINT tbparametro_pkey PRIMARY KEY (idparametro);


--
-- TOC entry 3105 (class 2606 OID 32698)
-- Name: tbperfil_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbperfil
    ADD CONSTRAINT tbperfil_pkey PRIMARY KEY (idperfil);


--
-- TOC entry 3107 (class 2606 OID 32706)
-- Name: tbperfilxfuncionalidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbperfilxfuncionalidade
    ADD CONSTRAINT tbperfilxfuncionalidade_pkey PRIMARY KEY (idperfilxfuncionalidade);


--
-- TOC entry 3109 (class 2606 OID 32714)
-- Name: tbperfilxgrupo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbperfilxgrupo
    ADD CONSTRAINT tbperfilxgrupo_pkey PRIMARY KEY (idperfilxgrupo);


--
-- TOC entry 3119 (class 2606 OID 32763)
-- Name: tbperguntaquestionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbperguntaquestionario
    ADD CONSTRAINT tbperguntaquestionario_pkey PRIMARY KEY (idpergunta);


--
-- TOC entry 3111 (class 2606 OID 32725)
-- Name: tbprazoesic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbprazoesic
    ADD CONSTRAINT tbprazoesic_pkey PRIMARY KEY (idprazoesic);


--
-- TOC entry 3113 (class 2606 OID 32736)
-- Name: tbpreferenciasistema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbpreferenciasistema
    ADD CONSTRAINT tbpreferenciasistema_pkey PRIMARY KEY (idpreferenciasistema);


--
-- TOC entry 3115 (class 2606 OID 32744)
-- Name: tbprioridade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbprioridade
    ADD CONSTRAINT tbprioridade_pkey PRIMARY KEY (idprioridade);


--
-- TOC entry 3117 (class 2606 OID 32755)
-- Name: tbquestionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbquestionario
    ADD CONSTRAINT tbquestionario_pkey PRIMARY KEY (idquestionario);


--
-- TOC entry 3123 (class 2606 OID 32782)
-- Name: tbrespostamanifestacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbrespostamanifestacao
    ADD CONSTRAINT tbrespostamanifestacao_pkey PRIMARY KEY (idrespostamanifestacao);


--
-- TOC entry 3121 (class 2606 OID 32771)
-- Name: tbrespostaquestionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbrespostaquestionario
    ADD CONSTRAINT tbrespostaquestionario_pkey PRIMARY KEY (idresposta);


--
-- TOC entry 3125 (class 2606 OID 32790)
-- Name: tbsubclassificacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbsubclassificacao
    ADD CONSTRAINT tbsubclassificacao_pkey PRIMARY KEY (idsubclassificacao);


--
-- TOC entry 3127 (class 2606 OID 32801)
-- Name: tbtipomanifestacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbtipomanifestacao
    ADD CONSTRAINT tbtipomanifestacao_pkey PRIMARY KEY (idtipomanifestacao);


--
-- TOC entry 3129 (class 2606 OID 32812)
-- Name: tbtramite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbtramite
    ADD CONSTRAINT tbtramite_pkey PRIMARY KEY (idtramite);


--
-- TOC entry 3131 (class 2606 OID 32820)
-- Name: tbtramitexanexo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbtramitexanexo
    ADD CONSTRAINT tbtramitexanexo_pkey PRIMARY KEY (idtramitexanexo);


--
-- TOC entry 3133 (class 2606 OID 32831)
-- Name: tbuf_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbuf
    ADD CONSTRAINT tbuf_pkey PRIMARY KEY (iduf);


--
-- TOC entry 3135 (class 2606 OID 32842)
-- Name: tbunidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbunidade
    ADD CONSTRAINT tbunidade_pkey PRIMARY KEY (idunidade);


--
-- TOC entry 3137 (class 2606 OID 32850)
-- Name: tbunidadexmanifestacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbunidadexmanifestacao
    ADD CONSTRAINT tbunidadexmanifestacao_pkey PRIMARY KEY (idunidademanifestacao);


--
-- TOC entry 3139 (class 2606 OID 32861)
-- Name: tbusuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbusuario
    ADD CONSTRAINT tbusuario_pkey PRIMARY KEY (idusuario);


--
-- TOC entry 3141 (class 2606 OID 32869)
-- Name: tbusuarioxperfil_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbusuarioxperfil
    ADD CONSTRAINT tbusuarioxperfil_pkey PRIMARY KEY (idusuarioperfil);


--
-- TOC entry 3152 (class 2606 OID 32898)
-- Name: fk_tbajuda_idgrupo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbajuda
    ADD CONSTRAINT fk_tbajuda_idgrupo FOREIGN KEY (idgrupo) REFERENCES tbgrupo(idgrupo);


--
-- TOC entry 3153 (class 2606 OID 32903)
-- Name: fk_tbaviso_idusuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbaviso
    ADD CONSTRAINT fk_tbaviso_idusuario FOREIGN KEY (idusuario) REFERENCES tbusuario(idusuario);


--
-- TOC entry 3176 (class 2606 OID 33018)
-- Name: fk_tbclassificacao_tbunidade_tbclassificacao_idclassificacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbclassificacao_tbunidade
    ADD CONSTRAINT fk_tbclassificacao_tbunidade_tbclassificacao_idclassificacao FOREIGN KEY (tbclassificacao_idclassificacao) REFERENCES tbclassificacao(idclassificacao);


--
-- TOC entry 3154 (class 2606 OID 32908)
-- Name: fk_tbcomunicacaoexterna_idusuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbcomunicacaoexterna
    ADD CONSTRAINT fk_tbcomunicacaoexterna_idusuario FOREIGN KEY (idusuario) REFERENCES tbusuario(idusuario);


--
-- TOC entry 3155 (class 2606 OID 32913)
-- Name: fk_tbcomunicacaoexternaxanexo_idanexo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbcomunicacaoexternaxanexo
    ADD CONSTRAINT fk_tbcomunicacaoexternaxanexo_idanexo FOREIGN KEY (idanexo) REFERENCES tbanexo(idanexo);


--
-- TOC entry 3156 (class 2606 OID 32918)
-- Name: fk_tbencaminhamento_idusuarioouvidor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbencaminhamento
    ADD CONSTRAINT fk_tbencaminhamento_idusuarioouvidor FOREIGN KEY (idusuarioouvidor) REFERENCES tbusuario(idusuario);


--
-- TOC entry 3157 (class 2606 OID 32923)
-- Name: fk_tbencaminhamentoxanexo_idanexo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbencaminhamentoxanexo
    ADD CONSTRAINT fk_tbencaminhamentoxanexo_idanexo FOREIGN KEY (idanexo) REFERENCES tbanexo(idanexo);


--
-- TOC entry 3158 (class 2606 OID 32928)
-- Name: fk_tbfiltropersonalizado_idusuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbfiltropersonalizado
    ADD CONSTRAINT fk_tbfiltropersonalizado_idusuario FOREIGN KEY (idusuario) REFERENCES tbusuario(idusuario);


--
-- TOC entry 3159 (class 2606 OID 32933)
-- Name: fk_tbgrupo_idgrupopai; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbgrupo
    ADD CONSTRAINT fk_tbgrupo_idgrupopai FOREIGN KEY (idgrupopai) REFERENCES tbgrupo(idgrupo);


--
-- TOC entry 3160 (class 2606 OID 32938)
-- Name: fk_tblogoperacao_idusuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tblogoperacao
    ADD CONSTRAINT fk_tblogoperacao_idusuario FOREIGN KEY (idusuario) REFERENCES tbusuario(idusuario);


--
-- TOC entry 3161 (class 2606 OID 32943)
-- Name: fk_tbmanifestacao_iduf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbmanifestacao
    ADD CONSTRAINT fk_tbmanifestacao_iduf FOREIGN KEY (iduf) REFERENCES tbuf(iduf);


--
-- TOC entry 3178 (class 2606 OID 33028)
-- Name: fk_tbmanifestacao_unidadeareasolucionadora_idmanifestacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbmanifestacao_unidadeareasolucionadora
    ADD CONSTRAINT fk_tbmanifestacao_unidadeareasolucionadora_idmanifestacao FOREIGN KEY (idmanifestacao) REFERENCES tbmanifestacao(idmanifestacao);


--
-- TOC entry 3162 (class 2606 OID 32948)
-- Name: fk_tbmanifestacaoxanexo_idmanifestacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbmanifestacaoxanexo
    ADD CONSTRAINT fk_tbmanifestacaoxanexo_idmanifestacao FOREIGN KEY (idmanifestacao) REFERENCES tbmanifestacao(idmanifestacao);


--
-- TOC entry 3163 (class 2606 OID 32953)
-- Name: fk_tbmunicipio_iduf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbmunicipio
    ADD CONSTRAINT fk_tbmunicipio_iduf FOREIGN KEY (iduf) REFERENCES tbuf(iduf);


--
-- TOC entry 3164 (class 2606 OID 32958)
-- Name: fk_tbperfilxfuncionalidade_idperfil; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbperfilxfuncionalidade
    ADD CONSTRAINT fk_tbperfilxfuncionalidade_idperfil FOREIGN KEY (idperfil) REFERENCES tbperfil(idperfil);


--
-- TOC entry 3165 (class 2606 OID 32963)
-- Name: fk_tbperfilxgrupo_idperfil; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbperfilxgrupo
    ADD CONSTRAINT fk_tbperfilxgrupo_idperfil FOREIGN KEY (idperfil) REFERENCES tbperfil(idperfil);


--
-- TOC entry 3167 (class 2606 OID 32973)
-- Name: fk_tbperguntaquestionario_idquestionario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbperguntaquestionario
    ADD CONSTRAINT fk_tbperguntaquestionario_idquestionario FOREIGN KEY (idquestionario) REFERENCES tbquestionario(idquestionario);


--
-- TOC entry 3166 (class 2606 OID 32968)
-- Name: fk_tbprazoesic_idmanifestacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbprazoesic
    ADD CONSTRAINT fk_tbprazoesic_idmanifestacao FOREIGN KEY (idmanifestacao) REFERENCES tbmanifestacao(idmanifestacao);


--
-- TOC entry 3168 (class 2606 OID 32978)
-- Name: fk_tbrespostaquestionario_idmanifestacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbrespostaquestionario
    ADD CONSTRAINT fk_tbrespostaquestionario_idmanifestacao FOREIGN KEY (idmanifestacao) REFERENCES tbmanifestacao(idmanifestacao);


--
-- TOC entry 3169 (class 2606 OID 32983)
-- Name: fk_tbtramite_idusuarioemissor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbtramite
    ADD CONSTRAINT fk_tbtramite_idusuarioemissor FOREIGN KEY (idusuarioemissor) REFERENCES tbusuario(idusuario);


--
-- TOC entry 3170 (class 2606 OID 32988)
-- Name: fk_tbtramitexanexo_idtramite; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbtramitexanexo
    ADD CONSTRAINT fk_tbtramitexanexo_idtramite FOREIGN KEY (idtramite) REFERENCES tbtramite(idtramite);


--
-- TOC entry 3171 (class 2606 OID 32993)
-- Name: fk_tbunidadexmanifestacao_idmanifestacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbunidadexmanifestacao
    ADD CONSTRAINT fk_tbunidadexmanifestacao_idmanifestacao FOREIGN KEY (idmanifestacao) REFERENCES tbmanifestacao(idmanifestacao);


--
-- TOC entry 3172 (class 2606 OID 32998)
-- Name: fk_tbusuario_idunidade; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbusuario
    ADD CONSTRAINT fk_tbusuario_idunidade FOREIGN KEY (idunidade) REFERENCES tbunidade(idunidade);


--
-- TOC entry 3173 (class 2606 OID 33003)
-- Name: fk_tbusuarioxperfil_idusuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbusuarioxperfil
    ADD CONSTRAINT fk_tbusuarioxperfil_idusuario FOREIGN KEY (idusuario) REFERENCES tbusuario(idusuario);


--
-- TOC entry 3175 (class 2606 OID 33013)
-- Name: tbclassificacaotbsubclassificacaotbclassificacaoidclassificacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbclassificacao_tbsubclassificacao
    ADD CONSTRAINT tbclassificacaotbsubclassificacaotbclassificacaoidclassificacao FOREIGN KEY (tbclassificacao_idclassificacao) REFERENCES tbclassificacao(idclassificacao);


--
-- TOC entry 3174 (class 2606 OID 33008)
-- Name: tbmanifestacao_tbclassificacao_tbclassificacao_idclassificacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbmanifestacao_tbclassificacao
    ADD CONSTRAINT tbmanifestacao_tbclassificacao_tbclassificacao_idclassificacao FOREIGN KEY (tbclassificacao_idclassificacao) REFERENCES tbclassificacao(idclassificacao);


--
-- TOC entry 3177 (class 2606 OID 33023)
-- Name: tbmanifestacao_tbsubclassificacao_tbmanifestacao_idmanifestacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tbmanifestacao_tbsubclassificacao
    ADD CONSTRAINT tbmanifestacao_tbsubclassificacao_tbmanifestacao_idmanifestacao FOREIGN KEY (tbmanifestacao_idmanifestacao) REFERENCES tbmanifestacao(idmanifestacao);


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2014-08-01 11:16:54

--
-- PostgreSQL database dump complete
--

