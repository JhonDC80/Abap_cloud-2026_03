CLASS lhc_zr_dtjd_art_03 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      get_global_authorizations FOR GLOBAL AUTHORIZATION
        IMPORTING
        REQUEST requested_authorizations FOR ZrDtjdArt03
        RESULT result,
      stockvalidation FOR VALIDATE ON SAVE
        IMPORTING keys FOR ZrDtjdArt03~stockvalidation.
ENDCLASS.

CLASS lhc_zr_dtjd_art_03 IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD stockvalidation.


    " Definicion de Estructuras locales.
    DATA failed_record   LIKE LINE OF failed-zrdtjdart03.
    DATA reported_record LIKE LINE OF reported-zrdtjdart03.

*-----------------------------------------------------------------------------------*

    READ ENTITIES OF zr_dtjd_art_03 IN LOCAL MODE
    ENTITY ZrDtjdArt03
    FIELDS (  stock )
      WITH CORRESPONDING #(  keys )
      RESULT DATA(it_art).


    LOOP AT it_art ASSIGNING FIELD-SYMBOL(<lfs_art>).

      IF <lfs_art>-Stock < 0 OR <lfs_art>-Stock IS INITIAL.


        failed_record-%tky = <lfs_art>-%tky.
        APPEND failed_record TO failed-zrdtjdart03.


        reported_record-%tky = <lfs_art>-%tky.
        reported_record-%msg =
            new_message(
                id       = 'ZCL_MSJ_JD_ART_03'
                number   = '001'
                severity = if_abap_behv_message=>severity-error
                v1       = <lfs_art>-Stock

            ).

        APPEND reported_record TO reported-zrdtjdart03.

      ELSE.

      ENDIF.

    ENDLOOP.


  ENDMETHOD.

ENDCLASS.
