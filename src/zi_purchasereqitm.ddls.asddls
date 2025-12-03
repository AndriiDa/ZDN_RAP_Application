@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Requisition Items'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_PurchaseReqItm
  as select from zdnpr_req_itma
  association to parent ZI_PurchaseReqHdr as _PurchaseReqHdr on $projection.PrUuid = _PurchaseReqHdr.PrUuid
{
  key item_uuid             as ItemUuid,
      pr_uuid               as PrUuid,
      item_number           as ItemNumber,
      material_number       as MaterialNumber,
      material_desc         as MaterialDesc,
      @Semantics.quantity.unitOfMeasure: 'Unit'
      quantity              as Quantity,
      unit                  as Unit,
      @Semantics.amount.currencyCode: 'Currency'
      price_per_unit        as PricePerUnit,
      currency              as Currency,
      @Semantics.amount.currencyCode: 'Currency'
      total_price           as TotalPrice,
      delivery_date         as DeliveryDate,
      plant                 as Plant,
      storage_location      as StorageLocation,
      item_status           as ItemStatus,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      // Make association public
      _PurchaseReqHdr
}
