@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Purchase Requisition Item'
@Metadata.allowExtensions: true
define view entity ZC_PurchaseReqItm as projection on ZI_PURCHASEREQITM
{
    key ItemUuid,
    PrUuid,
    ItemNumber,
    MaterialNumber,
    MaterialDesc,
    Quantity,
    Unit,
    PricePerUnit,
    Currency,
    TotalPrice,
    DeliveryDate,
    Plant,
    StorageLocation,
    ItemStatus,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _PurchaseReqHdr : redirected to parent ZC_PURCHASEREQHDR
}
