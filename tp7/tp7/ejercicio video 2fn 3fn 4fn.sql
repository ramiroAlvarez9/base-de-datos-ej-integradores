Ejercicio video 2FN 3FN 4FN

TALLER<codigoSucursal, domicilioSucursal, telefonoSucursal, codigoFosa,
largoFosa, anchoFosa, patenteAuto, marcaAuto, modeloAuto, dniCliente,
nombreCliente, celularCliente, dniMecanico, nombreMecanico, emailMecanico>

DF1: codSucursal -> domicilioSucursal, telSucursal
DF2: codSucursal , codFosa -> largoFosa, anchoFosa 
DF3: patente -> marcaAuto,modeloAuto,dniCliente
DF4: dniCliente-> nombreCliente, celularCliente
DF5: dniMecanico -> nombreMecanico, emailMecanico

CC & PK : <codigoSucursal, codigoFosa, patenteAuto,dniMecanico>


2FN:

/* Se toma la primera dF y se arma una tabla nueva*/

SUCURSAL <codSucursal , domicilioSucursal, telSucursal>

RESIDUAL1 = TALLER - { domicilioSucursal, telSucursal }

RESIDUAL1 <codigoSucursal, codigoFosa,
largoFosa, anchoFosa, patenteAuto, marcaAuto, modeloAuto, dniCliente,
nombreCliente, celularCliente, dniMecanico, nombreMecanico, emailMecanico >

/* 1FN, no cumple 2FN por tener DFs parciales */

FOSA <PK FK codSucursal , PK codFosa , largoFosa, anchoFosa>  /* cumple 1FN, 2FN, 3FN */


RESIDUAL2 = RESIDUAL1 - {largoFosa,anchoFosa}
RESIDUAL2 = 
< PK codigoSucursal, PK codigoFosa, patenteAuto, marcaAuto, modeloAuto, dniCliente,
nombreCliente, celularCliente, dniMecanico, nombreMecanico, emailMecanico >

/* cumple 1FN, no cumple 2FN*/


TOMO DF3 (arrastra DF4 por transitivdad) y resto a residual 2
 
AUTO1 < PK patente , dniCliente, marcaAuto,modeloAuto, nombreCliente, celularCliente >
/* cumple 1FN, 2FN, no cumple 3fn por que es transitiva */ 

TOMO DF4 y resto AUTO1

CLIENTE <PK dniCliente,nombreCliente, celularCliente> 1FN, 2FN, 3FN

AUTO2 < < PK patente , FK dniCliente, marcaAuto, modeloAuto > 1FN, 2FN, 3FN


RESIDUAL3 = RESIDUAL2 - {dniCliente, marcaAuto,modeloAuto, nombreCliente, celularCliente } 

RESIDUAL3 = < PK codigoSucursal, 
              PK codigoFosa, 
              patenteAuto, 
              dniCliente, 
              dniMecanico, 
              nombreMecanico, 
              emailMecanico 
              >
              /* 1FN, no vale 2FN por DF5 que es parcial*/


RESIDUAL3 - DF5

MECANICO <PK dniMecanico ,nombreMecanico, emailMecanico> 1FN, 2FN, 3FN.

RESIDUAL4 <   
              PK codigoSucursal, 
              PK codigoFosa, 
              patenteAuto, 
              dniCliente, 
            >

RELACIONES FINALES:

SUCURSAL <codSucursal , domicilioSucursal, telSucursal>
FOSA <PK FK codSucursal , PK codFosa , largoFosa, anchoFosa> 
CLIENTE <PK dniCliente,nombreCliente, celularCliente> 
AUTO2 < < PK patente , FK dniCliente, marcaAuto, modeloAuto > 
RESIDUAL4 < PK codigoSucursal,  PK codigoFosa,  patenteAuto,  dniCliente >


CREATE TABLE sucursal ( codSucursal PRIMARY KEY, domicilioSucursal VARCHAR(55), telSucursal INT );