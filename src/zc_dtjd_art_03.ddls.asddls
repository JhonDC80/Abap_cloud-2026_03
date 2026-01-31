@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZDTJD_ART_03'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_DTJD_ART_03
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_DTJD_ART_03
  association [1..1] to ZR_DTJD_ART_03 as _BaseEntity on $projection.IDART = _BaseEntity.IDART
{
  key IdArt,
  Descr,
  Descr2,
  Color,
  Piezas,
  Stock,
  Url,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreateBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalCreateAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
