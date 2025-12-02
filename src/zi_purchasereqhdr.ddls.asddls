@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Purchase Requisition Heade'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_PurchaseReqHdr as select from zdnpr_req_hdra
composition of ZI_PurchaseReqItm as _PurchaseReqItm
{
    key pr_uuid as PrUuid,
    pr_number as PrNumber,
    pr_description as PrDescription,
    pr_type as PrType,
    requester as Requester,
    department as Department,
    @Semantics.amount.currencyCode: 'Currency'
    total_amount as TotalAmount,
    currency as Currency,
    overall_status as OverallStatus,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    local_last_changed_at as LocalLastChangedAt    ,
    // Make association public
    _PurchaseReqItm 
}
