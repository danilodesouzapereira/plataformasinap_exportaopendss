/*
Sinapsis Inovação em Energia
30/06/2015
10:54:38 AM
usrprj
*/
DROP TABLE Rede CASCADE CONSTRAINTS;
DROP TABLE Cabo CASCADE CONSTRAINTS;
DROP TABLE CaboZ0Z1 CASCADE CONSTRAINTS;
DROP TABLE CaboRGMR CASCADE CONSTRAINTS;
DROP TABLE Suporte CASCADE CONSTRAINTS;
DROP TABLE Equipamento CASCADE CONSTRAINTS;
DROP TABLE Capacitor CASCADE CONSTRAINTS;
DROP TABLE Carga CASCADE CONSTRAINTS;
DROP TABLE Filtro CASCADE CONSTRAINTS;
DROP TABLE CargaIP CASCADE CONSTRAINTS;
DROP TABLE Gerador CASCADE CONSTRAINTS;
DROP TABLE Reator CASCADE CONSTRAINTS;
DROP TABLE Suprimento CASCADE CONSTRAINTS;
DROP TABLE TrafoZZ CASCADE CONSTRAINTS;
DROP TABLE CapacitorSerie CASCADE CONSTRAINTS;
DROP TABLE Chave CASCADE CONSTRAINTS;
DROP TABLE Regulador CASCADE CONSTRAINTS;
DROP TABLE Trafo CASCADE CONSTRAINTS;
DROP TABLE Trafo3E CASCADE CONSTRAINTS;
DROP TABLE Trecho CASCADE CONSTRAINTS;
DROP TABLE Arranjo CASCADE CONSTRAINTS;
DROP TABLE Arranjo_02_04 CASCADE CONSTRAINTS;
DROP TABLE TipoEquipamento CASCADE CONSTRAINTS;
DROP TABLE Curva CASCADE CONSTRAINTS;
DROP TABLE TipoCurva CASCADE CONSTRAINTS;
DROP TABLE TipoChave CASCADE CONSTRAINTS;
DROP TABLE TipoRede CASCADE CONSTRAINTS;
DROP TABLE Arranjo_03 CASCADE CONSTRAINTS;
DROP TABLE SuporteFixacao CASCADE CONSTRAINTS;
DROP TABLE Arranjo_00_01 CASCADE CONSTRAINTS;
DROP TABLE Mutua CASCADE CONSTRAINTS;
DROP TABLE TipoArranjo CASCADE CONSTRAINTS;
DROP TABLE TipoLigacao CASCADE CONSTRAINTS;
DROP TABLE TipoFase CASCADE CONSTRAINTS;
DROP TABLE TipoCabo CASCADE CONSTRAINTS;
DROP TABLE TipoSuporte CASCADE CONSTRAINTS;
DROP TABLE TipoConsumidor CASCADE CONSTRAINTS;
DROP TABLE TipoModeloCarga CASCADE CONSTRAINTS;
DROP TABLE TipoSuprimento CASCADE CONSTRAINTS;
DROP TABLE TipoGeracao CASCADE CONSTRAINTS;
DROP TABLE TipoLtcUtil CASCADE CONSTRAINTS;
DROP TABLE Barra CASCADE CONSTRAINTS;
DROP TABLE CargaNL CASCADE CONSTRAINTS;
DROP TABLE EquipamentoRede CASCADE CONSTRAINTS;
DROP TABLE Geral CASCADE CONSTRAINTS;
CREATE TABLE Rede (intRedeId number(10) NOT NULL, intTipoRedeId number(4) NOT NULL, intNoId number(10) NOT NULL, intNoPaiId number(10), bolRadial number(1) NOT NULL, intBarraIniId number(10) NOT NULL, PRIMARY KEY (intRedeId));
CREATE TABLE Cabo (intCaboId number(4) NOT NULL, intTipoCaboId number(2) NOT NULL, strDescricao varchar2(128) NOT NULL, strExtId varchar2(32), fltInom FLOAT NOT NULL, fltVmin float NOT NULL, fltVmax float NOT NULL, intStatus number(10) NOT NULL, PRIMARY KEY (intCaboId));
CREATE TABLE CaboZ0Z1 (intCaboId number(4) NOT NULL, fltZ0R FLOAT NOT NULL, fltZ0X FLOAT NOT NULL, fltZ1R FLOAT NOT NULL, fltZ1X FLOAT NOT NULL, fltC0 FLOAT NOT NULL, fltC1 FLOAT NOT NULL, PRIMARY KEY (intCaboId));
CREATE TABLE CaboRGMR (intCaboId number(4) NOT NULL, fltR FLOAT NOT NULL, fltGMR FLOAT NOT NULL, PRIMARY KEY (intCaboId));
CREATE TABLE Suporte (intSuporteId number(4) NOT NULL, intTipoSuporteId number(2) NOT NULL, strDescricao varchar2(128) NOT NULL, strExtId varchar2(32), fltVmin FLOAT NOT NULL, fltVmax FLOAT NOT NULL, intNumPontosFix number(2) NOT NULL, intStatus number(10) NOT NULL, PRIMARY KEY (intSuporteId));
CREATE TABLE Equipamento (intEquipId number(10) NOT NULL, intTipoEquipId number(2) NOT NULL, strCodigo varchar2(32), strExtId varchar2(32), intCurvaId number(10), intBarra1Id number(10), intBarra2Id number(10), intBarra3Id number(10), PRIMARY KEY (intEquipId));
CREATE TABLE Capacitor (intCapacitorId number(10) NOT NULL, intTipoLigacaoId number(2) NOT NULL, fltQnom FLOAT NOT NULL, fltVnom FLOAT, PRIMARY KEY (intCapacitorId));
CREATE TABLE Carga (intCargaId number(10) NOT NULL, intTipoFaseId number(2) NOT NULL, intTipoConsId number(2) NOT NULL, fltEnergia FLOAT NOT NULL, fltIctepu FLOAT NOT NULL, fltZctepu FLOAT NOT NULL, fltSctepu FLOAT NOT NULL, intNumConsRes number(10), intNumConsCom number(10), intNumConsInd number(10), intNumConsRur number(10), intNumConsOut number(10), intNumConsA4 number(10), PRIMARY KEY (intCargaId));
CREATE TABLE Filtro (intFiltroId number(10) NOT NULL, fltVnom FLOAT NOT NULL, fltSnom FLOAT NOT NULL, fltZ0R FLOAT NOT NULL, fltZ0X FLOAT NOT NULL, PRIMARY KEY (intFiltroId));
CREATE TABLE CargaIP (intCargaIPId number(10) NOT NULL, intTipoFaseId number(2) NOT NULL, fltPnom FLOAT NOT NULL, fltFatorPot FLOAT NOT NULL, intNumLamp number(10) NOT NULL, fltIctepu FLOAT NOT NULL, fltZctepu FLOAT NOT NULL, fltSctepu FLOAT NOT NULL, PRIMARY KEY (intCargaIPId));
CREATE TABLE Gerador (intGeradorId number(10) NOT NULL, intTipoLigacaoId number(2) NOT NULL, intTipoSuprId number(2) NOT NULL, intTipoGerId number(2) NOT NULL, fltVnom FLOAT NOT NULL, fltSnom FLOAT NOT NULL, fltSmax FLOAT NOT NULL, fltFatorPotMin FLOAT NOT NULL, fltZ0R FLOAT NOT NULL, fltZ0X FLOAT NOT NULL, fltZ1R FLOAT NOT NULL, fltZ1X FLOAT NOT NULL, PRIMARY KEY (intGeradorId));
CREATE TABLE Reator (intReatorId number(10) NOT NULL, intTipoLigacaoId number(2) NOT NULL, fltVnom FLOAT NOT NULL, fltQnom FLOAT NOT NULL, PRIMARY KEY (intReatorId));
CREATE TABLE Suprimento (intSuprimentoId number(10) NOT NULL, intTipoSuprId number(2) NOT NULL, fltVnom FLOAT NOT NULL, fltSmax FLOAT NOT NULL, fltPcc3F FLOAT NOT NULL, fltQcc3F FLOAT NOT NULL, fltPccFT FLOAT NOT NULL, fltQccFT FLOAT NOT NULL, fltZ0R FLOAT NOT NULL, fltZ0X FLOAT NOT NULL, fltZ1R FLOAT NOT NULL, fltZ1X FLOAT NOT NULL, PRIMARY KEY (intSuprimentoId));
CREATE TABLE TrafoZZ (intTrafoZZId number(10) NOT NULL, fltVnom FLOAT NOT NULL, fltSnom FLOAT NOT NULL, fltZ0R FLOAT NOT NULL, fltZ0X FLOAT NOT NULL, PRIMARY KEY (intTrafoZZId));
CREATE TABLE CapacitorSerie (intCapacitorSerieId number(10) NOT NULL, fltVnom FLOAT NOT NULL, fltSnom FLOAT NOT NULL, fltZR FLOAT NOT NULL, fltZX FLOAT NOT NULL, PRIMARY KEY (intCapacitorSerieId));
CREATE TABLE Chave (intChaveId number(10) NOT NULL, intTipoChaveId number(5) NOT NULL, intEstado number(10) NOT NULL, fltInom FLOAT NOT NULL, bolTelecomando number(1) NOT NULL, bolProtecao number(1) NOT NULL, intTecnoCom number(1) NOT NULL, PRIMARY KEY (intChaveId));
CREATE TABLE Regulador (intReguladorId number(10) NOT NULL, intTipoLigacaoId number(2) NOT NULL, fltSnom FLOAT NOT NULL, bolBypass number(1) NOT NULL, fltFaixaVar FLOAT NOT NULL, intNumPasso number(4) NOT NULL, bolSentidoReversivel number(1) NOT NULL, intSentidoBarRefId number(10), bolAjusteAuto number(1) NOT NULL, intCfgFixPassoSel number(2) NOT NULL, intCfgAutBarRefId number(10), fltCfgAutVpu FLOAT NOT NULL, fltZ0R FLOAT NOT NULL, fltZ0X FLOAT NOT NULL, fltZ1R FLOAT NOT NULL, fltZ1X FLOAT NOT NULL, intModeloId number(1), intTipoFaseId number(2) NOT NULL, PRIMARY KEY (intReguladorId));
CREATE TABLE Trafo (intTrafoId number(10) NOT NULL, bolAutoTrafo number(1) NOT NULL, fltPerdaFerro FLOAT NOT NULL, intLtcTipoUtl number(2) NOT NULL, intLtcBarRefId number(10), fltLtcVpu FLOAT NOT NULL, fltZ0R FLOAT NOT NULL, fltZ0X FLOAT NOT NULL, fltZ1R FLOAT NOT NULL, fltZ1X FLOAT NOT NULL, intTipoLigacao1Id number(2) NOT NULL, intTipoFase1Id number(2) NOT NULL, fltVnom1 FLOAT NOT NULL, fltSnom1 FLOAT NOT NULL, fltRotFase1 float(10) NOT NULL, fltVtap1 FLOAT NOT NULL, fltZterraR1 FLOAT NOT NULL, fltZterraX1 FLOAT NOT NULL, intTipoLigacao2Id number(2) NOT NULL, intTipoFase2Id number(2) NOT NULL, fltVnom2 FLOAT NOT NULL, fltSnom2 FLOAT NOT NULL, fltRotFase2 float(10) NOT NULL, fltVtap2 FLOAT NOT NULL, fltZterraR2 FLOAT NOT NULL, fltZterraX2 FLOAT NOT NULL, PRIMARY KEY (intTrafoId));
CREATE TABLE Trafo3E (intTrafo3EId number(10) NOT NULL, fltPerdaFerro FLOAT NOT NULL, fltSbase FLOAT NOT NULL, fltZPS0R FLOAT NOT NULL, fltZPS0X FLOAT NOT NULL, fltZPT0R FLOAT NOT NULL, fltZPT0X FLOAT NOT NULL, fltZST0R FLOAT NOT NULL, fltZST0X FLOAT NOT NULL, fltZPS1R FLOAT NOT NULL, fltZPS1X FLOAT NOT NULL, fltZPT1R FLOAT NOT NULL, fltZPT1X FLOAT NOT NULL, fltZST1R FLOAT NOT NULL, fltZST1X FLOAT NOT NULL, intTipoLigacao1Id number(2) NOT NULL, intTipoFase1Id number(2) NOT NULL, fltVnom1 FLOAT NOT NULL, fltSnom1 FLOAT NOT NULL, fltRotFase1 float(10) NOT NULL, fltVtap1 FLOAT NOT NULL, fltZterraR1 FLOAT NOT NULL, fltZterraX1 FLOAT NOT NULL, intTipoLigacao2Id number(2) NOT NULL, intTipoFase2Id number(2) NOT NULL, fltVnom2 FLOAT NOT NULL, fltSnom2 FLOAT NOT NULL, fltRotFase2 float(10) NOT NULL, fltVtap2 FLOAT NOT NULL, fltZterraR2 FLOAT NOT NULL, fltZterraX2 FLOAT NOT NULL, intTipoLigacao3Id number(2) NOT NULL, intTipoFase3Id number(2) NOT NULL, fltVnom3 FLOAT NOT NULL, fltSnom3 FLOAT NOT NULL, fltRotFase3 float(10) NOT NULL, fltVtap3 FLOAT NOT NULL, fltZterraR3 FLOAT NOT NULL, fltZterraX3 FLOAT NOT NULL, PRIMARY KEY (intTrafo3EId));
CREATE TABLE Trecho (intTrechoId number(10) NOT NULL, fltComprimento FLOAT NOT NULL, intArranjoId number(10) NOT NULL, PRIMARY KEY (intTrechoId));
CREATE TABLE Arranjo (intArranjoId number(10) NOT NULL, intTipoArranjoId number(2) NOT NULL, strDescricao varchar2(128), strExtId varchar2(32), bolTipico number(1) NOT NULL, fltResTerra FLOAT NOT NULL, fltVmin FLOAT NOT NULL, fltVmax FLOAT NOT NULL, intColorId number(10) NOT NULL, intNumCabos number(1) NOT NULL, intTipoFaseId number(2) NOT NULL, dttVersao date NOT NULL, intStatus number(10) NOT NULL, PRIMARY KEY (intArranjoId));
CREATE TABLE Arranjo_02_04 (intArranjoId number(10) NOT NULL, fltZ0R FLOAT NOT NULL, fltZ0X FLOAT NOT NULL, fltZ1R FLOAT NOT NULL, fltZ1X FLOAT NOT NULL, fltC0 FLOAT NOT NULL, fltC1 FLOAT NOT NULL, fltIadm FLOAT NOT NULL, intSuporteId number(4), PRIMARY KEY (intArranjoId));
CREATE TABLE TipoEquipamento (intTipoEquipId number(2) NOT NULL, strDescricao varchar2(128) NOT NULL, PRIMARY KEY (intTipoEquipId));
CREATE TABLE Curva (intCurvaId number(10) NOT NULL, strDescricao varchar2(128), bolTipica number(1) NOT NULL, blbPontos blob, intTipoCurvaId number(2) NOT NULL, PRIMARY KEY (intCurvaId));
CREATE TABLE TipoCurva (intTipoCurvaId number(2) NOT NULL, strDescricao varchar2(128) NOT NULL, PRIMARY KEY (intTipoCurvaId));
CREATE TABLE TipoChave (intTipoChaveId number(5) NOT NULL, strDescricao varchar2(128) NOT NULL, intStatus number(3) NOT NULL, intCorId number(10) NOT NULL, PRIMARY KEY (intTipoChaveId));
CREATE TABLE TipoRede (intTipoRedeId number(4) NOT NULL, strCodigo varchar2(32) NOT NULL, strDescricao varchar2(128) NOT NULL, fltVmin FLOAT NOT NULL, fltVmax FLOAT NOT NULL, intColorId number(10) NOT NULL, intStatus number(3) NOT NULL, PRIMARY KEY (intTipoRedeId));
CREATE TABLE Arranjo_03 (intArranjoId number(10) NOT NULL, blbMatZ blob NOT NULL, blbMatC blob NOT NULL, fltIadm FLOAT NOT NULL, PRIMARY KEY (intArranjoId));
CREATE TABLE SuporteFixacao (intSuporteId number(4) NOT NULL, intFixacaoItem number(2) NOT NULL, fltX FLOAT NOT NULL, fltY FLOAT NOT NULL, strCodigo varchar2(32) NOT NULL, PRIMARY KEY (intSuporteId, intFixacaoItem));
CREATE TABLE Arranjo_00_01 (intArranjoId number(10) NOT NULL, intCaboItem number(1) NOT NULL, intCaboId number(4) NOT NULL, intTipoFaseId number(2), intSuporteId number(4), intFixacaoItem number(2), PRIMARY KEY (intArranjoId, intCaboItem));
CREATE TABLE Mutua (intMutuaId number(10) NOT NULL, intTrecho1Id number(10) NOT NULL, intTrecho1BarraSntId number(10) NOT NULL, fltTrecho1Pos FLOAT NOT NULL, intTrecho2Id number(10) NOT NULL, intTrecho2BarraSntId number(10) NOT NULL, fltTrecho2Pos FLOAT NOT NULL, fltZ0R FLOAT NOT NULL, fltZ0X FLOAT NOT NULL, fltZ1R FLOAT NOT NULL, fltZ1X FLOAT NOT NULL, PRIMARY KEY (intMutuaId));
CREATE TABLE TipoArranjo (intTipoArranjoId number(2) NOT NULL, strDescricao varchar2(128) NOT NULL, PRIMARY KEY (intTipoArranjoId));
CREATE TABLE TipoLigacao (intTipoLigacaoId number(2) NOT NULL, strDescricao varchar2(128) NOT NULL, PRIMARY KEY (intTipoLigacaoId));
CREATE TABLE TipoFase (intTipoFaseId number(2) NOT NULL, strDescricao varchar2(128) NOT NULL, PRIMARY KEY (intTipoFaseId));
CREATE TABLE TipoCabo (intTipoCaboId number(2) NOT NULL, strDescricao varchar2(128) NOT NULL, PRIMARY KEY (intTipoCaboId));
CREATE TABLE TipoSuporte (intTipoSuporteId number(2) NOT NULL, strDescricao varchar2(128) NOT NULL, PRIMARY KEY (intTipoSuporteId));
CREATE TABLE TipoConsumidor (intTipoConsId number(2) NOT NULL, intTag number(2) NOT NULL, strDescricao varchar2(128) NOT NULL, bolTipico number(1) NOT NULL, intCorId number(10) NOT NULL, PRIMARY KEY (intTipoConsId));
CREATE TABLE TipoModeloCarga (intTipoModCargaId number(2) NOT NULL, strDescricao varchar2(128) NOT NULL, PRIMARY KEY (intTipoModCargaId));
CREATE TABLE TipoSuprimento (intTipoSuprId number(2) NOT NULL, strDescricao varchar2(128) NOT NULL, PRIMARY KEY (intTipoSuprId));
CREATE TABLE TipoGeracao (intTipoGerId number(2) NOT NULL, strDescricao varchar2(128) NOT NULL, PRIMARY KEY (intTipoGerId));
CREATE TABLE TipoLtcUtil (intTipoLtcUtilId number(2) NOT NULL, strDescricao varchar2(128) NOT NULL, PRIMARY KEY (intTipoLtcUtilId));
CREATE TABLE Barra (intBarraId number(10) NOT NULL, fltVnom FLOAT NOT NULL, intUtmX number(10), intUtmY number(10), PRIMARY KEY (intBarraId));
CREATE TABLE CargaNL (intCargaNLId number(10) NOT NULL, intOrdemId number(3) NOT NULL, fltFatorPot FLOAT NOT NULL, bolIndutivo number(1) NOT NULL, bolkVA number(1) NOT NULL, fltSnomA FLOAT NOT NULL, fltSnomB FLOAT NOT NULL, fltSnomC FLOAT NOT NULL, fltAngA FLOAT NOT NULL, fltAngB FLOAT NOT NULL, fltAngC FLOAT NOT NULL, PRIMARY KEY (intCargaNLId, intOrdemId));
CREATE TABLE EquipamentoRede (intEquipId number(10) NOT NULL, intRedeId number(10) NOT NULL, PRIMARY KEY (intEquipId, intRedeId));
CREATE TABLE Geral (dttCarga date NOT NULL);
CREATE INDEX ndxPaiRede ON Rede (intNoPaiId, intRedeId);
CREATE INDEX ndxEquipamento_TipoEquip ON Equipamento (intEquipId, intTipoEquipId);
CREATE INDEX ndxArranjo_02_04 ON Arranjo_02_04 (intArranjoId, intSuporteId);
CREATE INDEX ndxCurvaTipica ON Curva (intCurvaId, bolTipica);
CREATE INDEX ndxArranjo_00_01 ON Arranjo_00_01 (intArranjoId, intSuporteId);
ALTER TABLE CaboZ0Z1 ADD CONSTRAINT FKCaboZ0Z1 FOREIGN KEY (intCaboId) REFERENCES Cabo (intCaboId);
ALTER TABLE CaboRGMR ADD CONSTRAINT FKCaboRGMR FOREIGN KEY (intCaboId) REFERENCES Cabo (intCaboId);
ALTER TABLE Curva ADD CONSTRAINT FKCurva FOREIGN KEY (intTipoCurvaId) REFERENCES TipoCurva (intTipoCurvaId);
ALTER TABLE Chave ADD CONSTRAINT FKChave FOREIGN KEY (intTipoChaveId) REFERENCES TipoChave (intTipoChaveId);
ALTER TABLE Rede ADD CONSTRAINT FKRedeTipoRede FOREIGN KEY (intTipoRedeId) REFERENCES TipoRede (intTipoRedeId);
ALTER TABLE SuporteFixacao ADD CONSTRAINT FKSuporteFixacao2 FOREIGN KEY (intSuporteId) REFERENCES Suporte (intSuporteId);
ALTER TABLE Arranjo_00_01 ADD CONSTRAINT FKArranjo_00_012 FOREIGN KEY (intCaboId) REFERENCES Cabo (intCaboId);
ALTER TABLE Arranjo_03 ADD CONSTRAINT FKArranjo_03 FOREIGN KEY (intArranjoId) REFERENCES Arranjo (intArranjoId);
ALTER TABLE Arranjo_02_04 ADD CONSTRAINT FKArranjo_02_04 FOREIGN KEY (intArranjoId) REFERENCES Arranjo (intArranjoId);
ALTER TABLE Arranjo_00_01 ADD CONSTRAINT FKArranjo_00_01 FOREIGN KEY (intArranjoId) REFERENCES Arranjo (intArranjoId);
ALTER TABLE Arranjo ADD CONSTRAINT FKArranjo FOREIGN KEY (intTipoArranjoId) REFERENCES TipoArranjo (intTipoArranjoId);
ALTER TABLE Carga ADD CONSTRAINT FKCarga2 FOREIGN KEY (intTipoFaseId) REFERENCES TipoFase (intTipoFaseId);
ALTER TABLE CargaIP ADD CONSTRAINT FKCargaIP FOREIGN KEY (intTipoFaseId) REFERENCES TipoFase (intTipoFaseId);
ALTER TABLE Arranjo_00_01 ADD CONSTRAINT FKArranjo_00_013 FOREIGN KEY (intTipoFaseId) REFERENCES TipoFase (intTipoFaseId);
ALTER TABLE Cabo ADD CONSTRAINT FKCabo FOREIGN KEY (intTipoCaboId) REFERENCES TipoCabo (intTipoCaboId);
ALTER TABLE Suporte ADD CONSTRAINT FKSuporte FOREIGN KEY (intTipoSuporteId) REFERENCES TipoSuporte (intTipoSuporteId);
ALTER TABLE Capacitor ADD CONSTRAINT FKCapacitor FOREIGN KEY (intTipoLigacaoId) REFERENCES TipoLigacao (intTipoLigacaoId);
ALTER TABLE Carga ADD CONSTRAINT FKCarga4 FOREIGN KEY (intTipoConsId) REFERENCES TipoConsumidor (intTipoConsId);
ALTER TABLE Gerador ADD CONSTRAINT FKGerador FOREIGN KEY (intTipoLigacaoId) REFERENCES TipoLigacao (intTipoLigacaoId);
ALTER TABLE Gerador ADD CONSTRAINT FKGerador2 FOREIGN KEY (intTipoSuprId) REFERENCES TipoSuprimento (intTipoSuprId);
ALTER TABLE Suprimento ADD CONSTRAINT FKSuprimento FOREIGN KEY (intTipoSuprId) REFERENCES TipoSuprimento (intTipoSuprId);
ALTER TABLE Reator ADD CONSTRAINT FKReator FOREIGN KEY (intTipoLigacaoId) REFERENCES TipoLigacao (intTipoLigacaoId);
ALTER TABLE Regulador ADD CONSTRAINT FKRegulador FOREIGN KEY (intTipoLigacaoId) REFERENCES TipoLigacao (intTipoLigacaoId);
ALTER TABLE Trecho ADD CONSTRAINT FKTrecho FOREIGN KEY (intTrechoId) REFERENCES Equipamento (intEquipId);
ALTER TABLE Capacitor ADD CONSTRAINT FKCapacitor2 FOREIGN KEY (intCapacitorId) REFERENCES Equipamento (intEquipId);
ALTER TABLE Carga ADD CONSTRAINT FKCarga FOREIGN KEY (intCargaId) REFERENCES Equipamento (intEquipId);
ALTER TABLE Filtro ADD CONSTRAINT FKFiltro FOREIGN KEY (intFiltroId) REFERENCES Equipamento (intEquipId);
ALTER TABLE Gerador ADD CONSTRAINT FKGerador3 FOREIGN KEY (intGeradorId) REFERENCES Equipamento (intEquipId);
ALTER TABLE Suprimento ADD CONSTRAINT FKSuprimento2 FOREIGN KEY (intSuprimentoId) REFERENCES Equipamento (intEquipId);
ALTER TABLE Reator ADD CONSTRAINT FKReator2 FOREIGN KEY (intReatorId) REFERENCES Equipamento (intEquipId);
ALTER TABLE TrafoZZ ADD CONSTRAINT FKTrafoZZ FOREIGN KEY (intTrafoZZId) REFERENCES Equipamento (intEquipId);
ALTER TABLE Chave ADD CONSTRAINT FKChave2 FOREIGN KEY (intChaveId) REFERENCES Equipamento (intEquipId);
ALTER TABLE Trafo ADD CONSTRAINT FKTrafo FOREIGN KEY (intTrafoId) REFERENCES Equipamento (intEquipId);
ALTER TABLE Regulador ADD CONSTRAINT FKRegulador2 FOREIGN KEY (intReguladorId) REFERENCES Equipamento (intEquipId);
ALTER TABLE Trafo3E ADD CONSTRAINT FKTrafo3E FOREIGN KEY (intTrafo3EId) REFERENCES Equipamento (intEquipId);
ALTER TABLE CapacitorSerie ADD CONSTRAINT FKCapacitorSerie FOREIGN KEY (intCapacitorSerieId) REFERENCES Equipamento (intEquipId);
ALTER TABLE CargaIP ADD CONSTRAINT FKCargaIP2 FOREIGN KEY (intCargaIPId) REFERENCES Equipamento (intEquipId);
ALTER TABLE Equipamento ADD CONSTRAINT FKEquipamento3 FOREIGN KEY (intTipoEquipId) REFERENCES TipoEquipamento (intTipoEquipId);
ALTER TABLE Arranjo_00_01 ADD CONSTRAINT FKArranjo_00_014 FOREIGN KEY (intSuporteId, intFixacaoItem) REFERENCES SuporteFixacao (intSuporteId, intFixacaoItem);
ALTER TABLE Arranjo_00_01 ADD CONSTRAINT FKArranjo_00_015 FOREIGN KEY (intSuporteId) REFERENCES Suporte (intSuporteId);
ALTER TABLE Trecho ADD CONSTRAINT FKTrecho2 FOREIGN KEY (intArranjoId) REFERENCES Arranjo (intArranjoId);
ALTER TABLE Arranjo ADD CONSTRAINT FKArranjo2 FOREIGN KEY (intTipoFaseId) REFERENCES TipoFase (intTipoFaseId);
ALTER TABLE Arranjo_02_04 ADD CONSTRAINT FKArranjo_02_042 FOREIGN KEY (intSuporteId) REFERENCES Suporte (intSuporteId);
ALTER TABLE Equipamento ADD CONSTRAINT FKEquipamento2 FOREIGN KEY (intCurvaId) REFERENCES Curva (intCurvaId);
ALTER TABLE Gerador ADD CONSTRAINT FKGerador4 FOREIGN KEY (intTipoGerId) REFERENCES TipoGeracao (intTipoGerId);
ALTER TABLE Trafo ADD CONSTRAINT FKTrafo3 FOREIGN KEY (intLtcTipoUtl) REFERENCES TipoLtcUtil (intTipoLtcUtilId);
ALTER TABLE Mutua ADD CONSTRAINT FKMutua2 FOREIGN KEY (intTrecho1BarraSntId) REFERENCES Barra (intBarraId);
ALTER TABLE Mutua ADD CONSTRAINT FKMutua3 FOREIGN KEY (intTrecho2BarraSntId) REFERENCES Barra (intBarraId);
ALTER TABLE Regulador ADD CONSTRAINT FKRegulador3 FOREIGN KEY (intSentidoBarRefId) REFERENCES Barra (intBarraId);
ALTER TABLE Regulador ADD CONSTRAINT FKRegulador4 FOREIGN KEY (intCfgAutBarRefId) REFERENCES Barra (intBarraId);
ALTER TABLE Trafo ADD CONSTRAINT FKTrafo2 FOREIGN KEY (intLtcBarRefId) REFERENCES Barra (intBarraId);
ALTER TABLE Barra ADD CONSTRAINT FKBarra FOREIGN KEY (intBarraId) REFERENCES Equipamento (intEquipId);
ALTER TABLE Mutua ADD CONSTRAINT FKMutua FOREIGN KEY (intMutuaId) REFERENCES Equipamento (intEquipId);
ALTER TABLE CargaNL ADD CONSTRAINT FKCargaNL392400 FOREIGN KEY (intCargaNLId) REFERENCES Equipamento (intEquipId);
ALTER TABLE Regulador ADD CONSTRAINT FKRegulador402028 FOREIGN KEY (intTipoFaseId) REFERENCES TipoFase (intTipoFaseId);
ALTER TABLE Trafo3E ADD CONSTRAINT FKTrafo3E368057 FOREIGN KEY (intTipoFase1Id) REFERENCES TipoFase (intTipoFaseId);
ALTER TABLE Trafo3E ADD CONSTRAINT FKTrafo3E367096 FOREIGN KEY (intTipoFase2Id) REFERENCES TipoFase (intTipoFaseId);
ALTER TABLE Trafo3E ADD CONSTRAINT FKTrafo3E366135 FOREIGN KEY (intTipoFase3Id) REFERENCES TipoFase (intTipoFaseId);
ALTER TABLE Trafo ADD CONSTRAINT FKTrafo649775 FOREIGN KEY (intTipoFase1Id) REFERENCES TipoFase (intTipoFaseId);
ALTER TABLE Trafo ADD CONSTRAINT FKTrafo648814 FOREIGN KEY (intTipoFase2Id) REFERENCES TipoFase (intTipoFaseId);
ALTER TABLE Trafo3E ADD CONSTRAINT FKTrafo3E643497 FOREIGN KEY (intTipoLigacao1Id) REFERENCES TipoLigacao (intTipoLigacaoId);
ALTER TABLE Trafo3E ADD CONSTRAINT FKTrafo3E642536 FOREIGN KEY (intTipoLigacao2Id) REFERENCES TipoLigacao (intTipoLigacaoId);
ALTER TABLE Trafo3E ADD CONSTRAINT FKTrafo3E641575 FOREIGN KEY (intTipoLigacao3Id) REFERENCES TipoLigacao (intTipoLigacaoId);
ALTER TABLE Trafo ADD CONSTRAINT FKTrafo46375 FOREIGN KEY (intTipoLigacao1Id) REFERENCES TipoLigacao (intTipoLigacaoId);
ALTER TABLE Trafo ADD CONSTRAINT FKTrafo47336 FOREIGN KEY (intTipoLigacao2Id) REFERENCES TipoLigacao (intTipoLigacaoId);
ALTER TABLE Equipamento ADD CONSTRAINT FKEquipament878183 FOREIGN KEY (intBarra1Id) REFERENCES Barra (intBarraId);
ALTER TABLE Equipamento ADD CONSTRAINT FKEquipament879144 FOREIGN KEY (intBarra2Id) REFERENCES Barra (intBarraId);
ALTER TABLE Equipamento ADD CONSTRAINT FKEquipament880105 FOREIGN KEY (intBarra3Id) REFERENCES Barra (intBarraId);
ALTER TABLE Rede ADD CONSTRAINT FKRedeEquipamento FOREIGN KEY (intRedeId) REFERENCES Equipamento (intEquipId);
ALTER TABLE EquipamentoRede ADD CONSTRAINT FKEquipRedeEquip FOREIGN KEY (intEquipId) REFERENCES Equipamento (intEquipId);
ALTER TABLE EquipamentoRede ADD CONSTRAINT FKEquipRedeRede FOREIGN KEY (intRedeId) REFERENCES Rede (intRedeId);
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (1, 'Arranjo');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (2, 'Barra');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (3, 'EqBar');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (4, 'Cabo');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (5, 'Capacitor');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (6, 'CapSerie');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (7, 'Carga');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (8, 'Corte');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (9, 'Chave');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (10, 'Gerador');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (11, 'Filtro');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (12, 'Ligação');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (13, 'Medidor');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (14, 'MRede');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (15, 'Mútua');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (17, 'NET');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (18, 'Reator');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (19, 'Rede');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (20, 'Redução');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (21, 'Regulador');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (22, 'Suporte');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (23, 'Suprimento');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (24, 'Trafo');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (25, 'Trafo3E');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (26, 'TrafoZZ');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (27, 'Tramo');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (28, 'Trecho');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (29, 'YRef');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (30, 'Arranjos');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (31, 'Cluster');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (32, 'Canal');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (16, 'Nó');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (33, 'Domínio');
INSERT INTO TipoEquipamento(intTipoEquipId, strDescricao) VALUES (34, 'CargaNL');
INSERT INTO TipoCabo(intTipoCaboId, strDescricao) VALUES (0, 'Cabo RGMR');
INSERT INTO TipoCabo(intTipoCaboId, strDescricao) VALUES (1, 'Cabo Z0Z1');
INSERT INTO TipoCabo(intTipoCaboId, strDescricao) VALUES (2, 'Cabo Pré-reunido');
INSERT INTO TipoSuporte(intTipoSuporteId, strDescricao) VALUES (1, 'Aéreo');
INSERT INTO TipoSuporte(intTipoSuporteId, strDescricao) VALUES (2, 'Subterrâneo');
INSERT INTO TipoSuporte(intTipoSuporteId, strDescricao) VALUES (3, 'Submerso');
INSERT INTO TipoCurva(intTipoCurvaId, strDescricao) VALUES (1, 'PQVT (enum tipoCURVA)');
INSERT INTO TipoCurva(intTipoCurvaId, strDescricao) VALUES (2, 'PQ (enum tipoCURVA)');
INSERT INTO TipoCurva(intTipoCurvaId, strDescricao) VALUES (3, 'PQ_MDP (enum tipoCURVA)');
INSERT INTO TipoCurva(intTipoCurvaId, strDescricao) VALUES (4, 'PFP (enum tipoCURVA)');
INSERT INTO TipoCurva(intTipoCurvaId, strDescricao) VALUES (5, 'PFP_MDP (enum tipoCURVA)');
INSERT INTO TipoCurva(intTipoCurvaId, strDescricao) VALUES (6, 'LD (enum tipoCURVA)');
INSERT INTO TipoCurva(intTipoCurvaId, strDescricao) VALUES (7, 'PQVIT (enum tipoCURVA)');
INSERT INTO TipoCurva(intTipoCurvaId, strDescricao) VALUES (8, 'Crescimento');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (1, 'Fase A ');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (2, 'Fase B ');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (4, 'Fase C');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (8, 'Fase N ');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (16, 'Fase T');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (9, 'Fase AN');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (10, 'Fase BN');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (12, 'Fase CN');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (17, 'Fase AT');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (18, 'Fase BT');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (20, 'Fase CT');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (24, 'Fase NT');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (25, 'Fase ANT');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (26, 'Fase BNT');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (28, 'Fase CNT');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (3, 'Fase AB');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (6, 'Fase BC');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (5, 'Fase CA');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (11, 'Fase ABN');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (14, 'Fase BCN');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (13, 'Fase CAN');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (19, 'Fase ABT');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (22, 'Fase BCT');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (21, 'Fase CAT');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (27, 'Fase ABNT');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (30, 'Fase BCNT');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (29, 'Fase CANT');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (7, 'Fase ABC ');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (15, 'Fase ABCN');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (31, 'Fase ABCNT');
INSERT INTO TipoFase(intTipoFaseId, strDescricao) VALUES (0, 'Fase ABC');
INSERT INTO TipoLigacao(intTipoLigacaoId, strDescricao) VALUES (0, 'Estrela aterrado');
INSERT INTO TipoLigacao(intTipoLigacaoId, strDescricao) VALUES (1, 'Triângulo');
INSERT INTO TipoLigacao(intTipoLigacaoId, strDescricao) VALUES (2, 'Estrela isolado');
INSERT INTO TipoLigacao(intTipoLigacaoId, strDescricao) VALUES (3, 'Monofásico');
INSERT INTO TipoLigacao(intTipoLigacaoId, strDescricao) VALUES (4, 'Delta aberto');
INSERT INTO TipoLigacao(intTipoLigacaoId, strDescricao) VALUES (5, 'Delta fechado');
INSERT INTO TipoSuprimento(intTipoSuprId, strDescricao) VALUES (1, 'Potência Ativa, Tensão');
INSERT INTO TipoSuprimento(intTipoSuprId, strDescricao) VALUES (2, 'Potência Ativa, Reativa');
INSERT INTO TipoSuprimento(intTipoSuprId, strDescricao) VALUES (3, 'Tensão, Frequência');
INSERT INTO TipoChave(intTipoChaveId, strDescricao, intStatus, intCorId) VALUES (1, 'Disjuntor', 0, 8388863);
INSERT INTO TipoChave(intTipoChaveId, strDescricao, intStatus, intCorId) VALUES (2, 'Religador', 0, 16744448);
INSERT INTO TipoChave(intTipoChaveId, strDescricao, intStatus, intCorId) VALUES (3, 'Base Fusível', 0, 4259584);
INSERT INTO TipoChave(intTipoChaveId, strDescricao, intStatus, intCorId) VALUES (4, 'Seccionadora', 0, 33023);
INSERT INTO TipoChave(intTipoChaveId, strDescricao, intStatus, intCorId) VALUES (5, 'Faca', 0, 12615935);
INSERT INTO TipoChave(intTipoChaveId, strDescricao, intStatus, intCorId) VALUES (999, 'Indefinida', 0, 8454143);
INSERT INTO TipoLtcUtil(intTipoLtcUtilId, strDescricao) VALUES (0, 'Não utilizado');
INSERT INTO TipoLtcUtil(intTipoLtcUtilId, strDescricao) VALUES (1, 'Primário');
INSERT INTO TipoLtcUtil(intTipoLtcUtilId, strDescricao) VALUES (2, 'Secundário');
INSERT INTO TipoArranjo(intTipoArranjoId, strDescricao) VALUES (1, 'Cabo multiplexado único (Z0Z1) - suporte opcional');
INSERT INTO TipoArranjo(intTipoArranjoId, strDescricao) VALUES (0, 'Entre um e quatro cabos unipolares (RGMR)');
INSERT INTO TipoArranjo(intTipoArranjoId, strDescricao) VALUES (2, 'Arranjo Z0Z1 / C0C1 [ ohm/km ]');
INSERT INTO TipoArranjo(intTipoArranjoId, strDescricao) VALUES (4, 'Arranjo Z0Z1 / C0C1 [ ohm ]');
INSERT INTO TipoArranjo(intTipoArranjoId, strDescricao) VALUES (3, 'Matriz de impedâncias (4x4: A,B,C,N x A,B,C,N)');
INSERT INTO TipoRede(intTipoRedeId, strCodigo, strDescricao, fltVmin, fltVmax, intColorId, intStatus) VALUES (1, 'SET', 'Subestação de Transmissão', -1, -1, 16777215, 0);
INSERT INTO TipoRede(intTipoRedeId, strCodigo, strDescricao, fltVmin, fltVmax, intColorId, intStatus) VALUES (2, 'SDAT', 'Sistema de Distribuição AT', -1, -1, 16777215, 0);
INSERT INTO TipoRede(intTipoRedeId, strCodigo, strDescricao, fltVmin, fltVmax, intColorId, intStatus) VALUES (3, 'SED', 'Subestação de Distribuição', -1, -1, 16777215, 0);
INSERT INTO TipoRede(intTipoRedeId, strCodigo, strDescricao, fltVmin, fltVmax, intColorId, intStatus) VALUES (4, 'SDMT', 'Sistema de Distribuição Primário', -1, -1, 16777215, 0);
INSERT INTO TipoRede(intTipoRedeId, strCodigo, strDescricao, fltVmin, fltVmax, intColorId, intStatus) VALUES (5, 'SDBT', 'Sistema de Distribuição Secundário', -1, -1, 16777215, 0);
INSERT INTO TipoRede(intTipoRedeId, strCodigo, strDescricao, fltVmin, fltVmax, intColorId, intStatus) VALUES (6, 'STAT', 'Sistema de Transmissão AT', -1, -1, 16777215, 0);
INSERT INTO TipoRede(intTipoRedeId, strCodigo, strDescricao, fltVmin, fltVmax, intColorId, intStatus) VALUES (7, 'Indefinida', 'Rede não definida', -1, -1, 16777215, 0);
INSERT INTO TipoConsumidor(intTipoConsId, intTag, strDescricao, bolTipico, intCorId) VALUES (1, 0, 'Residencial', 1, 8388863);
INSERT INTO TipoConsumidor(intTipoConsId, intTag, strDescricao, bolTipico, intCorId) VALUES (2, 1, 'Comercial', 1, 16744448);
INSERT INTO TipoConsumidor(intTipoConsId, intTag, strDescricao, bolTipico, intCorId) VALUES (3, 2, 'Industrial', 1, 4259584);
INSERT INTO TipoConsumidor(intTipoConsId, intTag, strDescricao, bolTipico, intCorId) VALUES (4, 3, 'Rural', 1, 33023);
INSERT INTO TipoConsumidor(intTipoConsId, intTag, strDescricao, bolTipico, intCorId) VALUES (5, 4, 'Outros', 1, 12615935);
INSERT INTO TipoConsumidor(intTipoConsId, intTag, strDescricao, bolTipico, intCorId) VALUES (6, 5, 'IP', 1, 8454143);
INSERT INTO TipoConsumidor(intTipoConsId, intTag, strDescricao, bolTipico, intCorId) VALUES (7, 6, 'A4', 0, 8421440);
INSERT INTO TipoConsumidor(intTipoConsId, intTag, strDescricao, bolTipico, intCorId) VALUES (8, 7, 'Equivalente', 0, 16777088);
INSERT INTO TipoGeracao(intTipoGerId, strDescricao) VALUES (1, 'Diesel');
INSERT INTO TipoGeracao(intTipoGerId, strDescricao) VALUES (2, 'PCH');
INSERT INTO TipoGeracao(intTipoGerId, strDescricao) VALUES (3, 'Vapor');
INSERT INTO TipoGeracao(intTipoGerId, strDescricao) VALUES (4, 'Eólica');
INSERT INTO TipoGeracao(intTipoGerId, strDescricao) VALUES (5, 'Solar');
INSERT INTO TipoModeloCarga(intTipoModCargaId, strDescricao) VALUES (1, 'Corrente constante');
INSERT INTO TipoModeloCarga(intTipoModCargaId, strDescricao) VALUES (2, 'Potência constante');
INSERT INTO TipoModeloCarga(intTipoModCargaId, strDescricao) VALUES (3, 'Impedância constante');
