  SELECT
    RedeViz.intRedeId                                                         AS RedeId,
    RedeViz.intTipoRedeId                                                     AS TipoRedeId,
    Equipamento.bolAlteradoObra                                               AS AlteradoObra,
    IIF(ISNULL(Equipamento.intDxComentario), -1, Equipamento.intDxComentario) AS DxComentario,
    IIF(ISNULL(Equipamento.intDyComentario), -1, Equipamento.intDyComentario) AS DyComentario,
    IIF(ISNULL(Equipamento.strComentario),   '', Equipamento.strComentario)   AS Comentario,
    IIF(ISNULL(MRede.intAgrupamentoId),      -1, MRede.intAgrupamentoId)      AS AgrupamentoId,
    RedeViz.intMRedeId                                                        AS MRedeId,
    RedeViz.bolRedutivel                                                      AS Redutivel,
    RedeViz.bolEstatica                                                       AS Estatica,
    RedeViz.bolRadial                                                         AS Radial,
    RedeViz.bolEquivalente                                                    AS Equivalente,
    RedeViz.dttRevisao                                                        AS Revisao,
    RedeViz.intColorId                                                        AS ColorId,
    RedeViz.intBarraIniId                                                     AS BarraIniId,
    RedeViz.intEsqX1                                                          AS EsqX1,
    RedeViz.intEsqY1                                                          AS EsqY1,
    RedeViz.intEsqX2                                                          AS EsqX2,
    RedeViz.intEsqY2                                                          AS EsqY2,
    RedeViz.intUtmX1                                                          AS UtmX1,
    RedeViz.intUtmY1                                                          AS UtmY1,
    RedeViz.intUtmX2                                                          AS UtmX2,
    RedeViz.intUtmY2                                                          AS UtmY2,
    Equipamento.strCodigo                                                     AS RedeCodigo,
    Equipamento.strExtId                                                      AS RedeExtId,
    TipoRede.strCodigo                                                        AS TipoRedeCodigo,
    TipoRede.strDescricao                                                     AS TipoRedeDescricao,
    Agrupamento.strCodigo                                                     AS AgrupamentoCodigo,
    IIF(ISNULL(RedeDominio.intDominioId), -1, RedeDominio.intDominioId)       AS DominioId
  FROM
    (
    (
    (
    (
    (
    (
    (
    Rede MRede 
      INNER JOIN Corte CorMRede ON 
        MRede.intRedeId = CorMRede.intMRedeId AND 
        MRede.intEstudoId = CorMRede.intEstudoId
    ) 
      INNER JOIN Corte CorMRedeViz ON 
        CorMRede.intCorteId = CorMRedeViz.intCorteId AND 
        CorMRede.intEstudoId = CorMRedeViz.intEstudoId
    ) 
      INNER JOIN Rede RedeViz ON 
        CorMRedeViz.intMRedeId = RedeViz.intMRedeId AND 
        CorMRedeViz.intEstudoId = RedeViz.intEstudoId
    ) 
      INNER JOIN TipoRede ON 
        RedeViz.intTipoRedeId = TipoRede.intTipoRedeId
    ) 
      INNER JOIN Equipamento ON 
        RedeViz.intRedeId = Equipamento.intEquipId AND 
        RedeViz.intEstudoId = Equipamento.intEstudoId
    ) 
      LEFT OUTER JOIN Agrupamento ON 
        IIF(ISNULL(RedeViz.intAgrupamentoId), -1, RedeViz.intAgrupamentoId) = Agrupamento.intAgrupamentoId
    ) 
      LEFT OUTER JOIN RedeDominio ON 
        IIF(ISNULL(RedeViz.intRedeId), -1, RedeViz.intRedeId) = RedeDominio.intRedeId
    )
  WHERE 
    MRede.intEstudoId = [p_EstudoId] AND
    MRede.intMRedeId = [p_MRedeId] AND
    CorMRedeViz.intMRedeId <> MRede.intRedeId;
