@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZDTJD_ART_03'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_DTJD_ART_03
  as select from ZDT_JD_ART_03
{
  key id_art as IdArt,
  descr as Descr,
  descr2 as Descr2,
  color as Color,
  piezas as Piezas,
  stock as Stock,
  url as Url,
  @Semantics.user.createdBy: true
  local_create_by as LocalCreateBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_create_at as LocalCreateAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  last_changed_at as LastChangedAt
}
