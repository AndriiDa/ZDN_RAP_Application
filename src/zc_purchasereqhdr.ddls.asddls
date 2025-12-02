@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Purchase Requisition Prjctn'
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZC_PURCHASEREQHDR
  provider contract transactional_query
  as projection on ZI_PurchaseReqHdr
{
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
  key PrUuid,
      @Search.defaultSearchElement: true
      PrNumber,
      PrDescription,
      PrType,
      Requester,
      Department,
      TotalAmount,
      Currency,
      OverallStatus,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _PurchaseReqItm : redirected to composition child ZC_PurchaseReqItm
}
