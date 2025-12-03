CLASS lhc_PurchaseReqHdr DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

*    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
*      IMPORTING keys REQUEST requested_authorizations FOR PurchaseReqHdr RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR PurchaseReqHdr RESULT result.

ENDCLASS.

CLASS lhc_PurchaseReqHdr IMPLEMENTATION.

*  METHOD get_instance_authorizations.
*  ENDMETHOD.

  METHOD get_global_authorizations.
      " Enable create for all users
    result-%create = if_abap_behv=>fc-o-enabled.
  ENDMETHOD.

ENDCLASS.
