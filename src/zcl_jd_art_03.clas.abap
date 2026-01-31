CLASS zcl_jd_art_03 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jd_art_03 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    " Definicion de Tablas Locales.
    DATA: lti_art TYPE STANDARD TABLE OF zdt_JD_ART_03.


    lti_art = VALUE #(
    ( client = sy-mandt id_art = '00001' descr = 'Mini colores' descr2 = 'Un mini estuche, con mini colores'
      color = 'Variados' piezas =  12 stock = 10
      url = 'https://creativeboxcolombia.com/wp-content/uploads/2024/06/Mini-cajita-de-lapices-de-colores-economica-compra-por-mayor-ninos-ninas-actividades-detalles-Bogota-Medellin-Cali.jpg' )

    ( client = sy-mandt id_art = '00002' descr = 'Elementos creativos' descr2 = 'Divertido pack creativo con elementos creativos'
       color = 'Negro' piezas =  1 stock = 20
         url = 'https://creativeboxcolombia.com/wp-content/uploads/2025/07/cosmos-party-bag-sorpresas-ninos-10-anos-cumpleanos-utiles-escolares-ninos-hombres-jovenes-estudio-astronauta-kit-paquete-materiales-.png' )

    ( client = sy-mandt id_art = '00003' descr = 'Kawaii Box' descr2 = 'Caja de regalo para niñas con detalles de papelería creativa Kawaii'
       color = 'Variados' piezas =  3 stock = 12
         url = 'https://creativeboxcolombia.com/wp-content/uploads/2025/11/caja-de-regalo-Sanrio-Kawaii-ninas-de-5-a-12-anos-compra-online-colorear-creativo.png' )

    ( client = sy-mandt id_art = '00004' descr = 'Capibara' descr2 = 'Sorpresa de cumpleaños o detalle para el día de los niños'
       color = 'Variados' piezas =  6 stock = 30
         url = 'https://creativeboxcolombia.com/wp-content/uploads/2025/09/capibara-coloring-bag-sorpresa-economica-colorear-capibara-detalles-dia-dle-nino-dia-de-los-ninos-didactico-empresarial.png' )


    ).


    INSERT zdt_jd_art_03 FROM TABLE @lti_art.
    IF sy-subrc = 0.
      out->write( 'Insert Successful' ).
    ELSE.
      out->write( 'Insert wrong' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
