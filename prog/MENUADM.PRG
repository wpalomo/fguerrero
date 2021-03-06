*       *********************************************************
*       *                                                         
*       * 20/12/2016            MENUADM.PRG             07:43:55  
*       *                                                         
*       *********************************************************
*       *                                                         
*       * Nombre del autor                                        
*       *                                                         
*       * Copyright (C) 2016 Nombre de compa��a                   
*       * Direcci�n                                               
*       * Ciudad,     C�digo pos                                  
*       * Pa�s                                              
*       *                                                         
*       * Descripci�n:                                            
*       * Este PROGRAMA lo ha generado autom�ticamente GENMENU.    
*       *                                                         
*       *********************************************************


*       *********************************************************
*       *                                                         
*       *                    Definici�n de men�                   
*       *                                                         
*       *********************************************************
*

SET SYSMENU TO
SET SYSMENU AUTOMATIC

DEFINE PAD _4sz0gkm1s OF _MSYSMENU PROMPT "Contable" COLOR SCHEME 3 ;
	KEY ALT+C, ""
DEFINE PAD _4sz0gkm1t OF _MSYSMENU PROMPT "Finanzas" COLOR SCHEME 3 ;
	KEY ALT+F, ""
DEFINE PAD _4sz0gkm1u OF _MSYSMENU PROMPT "Datos Generales" COLOR SCHEME 3 ;
	KEY ALT+D, ""
DEFINE PAD _4sz0gkm1v OF _MSYSMENU PROMPT "Reportes" COLOR SCHEME 3 ;
	KEY ALT+R, ""
DEFINE PAD _4sz0gkm1w OF _MSYSMENU PROMPT "Documentos" COLOR SCHEME 3 ;
	KEY ALT+D, ""
DEFINE PAD _4sz0gkm1x OF _MSYSMENU PROMPT "Salir" COLOR SCHEME 3 ;
	KEY ALT+S, ""
ON PAD _4sz0gkm1s OF _MSYSMENU ACTIVATE POPUP contable
ON PAD _4sz0gkm1t OF _MSYSMENU ACTIVATE POPUP finanzas
ON PAD _4sz0gkm1u OF _MSYSMENU ACTIVATE POPUP datosgener
ON PAD _4sz0gkm1v OF _MSYSMENU ACTIVATE POPUP _2aq15zs3d
ON PAD _4sz0gkm1w OF _MSYSMENU ACTIVATE POPUP documentos
ON PAD _4sz0gkm1x OF _MSYSMENU ACTIVATE POPUP salir

DEFINE POPUP contable MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF contable PROMPT "Rubros"
DEFINE BAR 2 OF contable PROMPT "\-"
DEFINE BAR 3 OF contable PROMPT "Definici�n Documentos"
DEFINE BAR 4 OF contable PROMPT "Grupo de documentos"
DEFINE BAR 5 OF contable PROMPT "Tipos de Reportes"
DEFINE BAR 6 OF contable PROMPT "\-"
DEFINE BAR 7 OF contable PROMPT "Contabilizacion de Roles"
DEFINE BAR 8 OF contable PROMPT "Contabilizacion de Items"
DEFINE BAR 9 OF contable PROMPT "\-"
DEFINE BAR 10 OF contable PROMPT "Plan de Cuentas"
DEFINE BAR 11 OF contable PROMPT "Consulta"
DEFINE BAR 12 OF contable PROMPT "\-"
DEFINE BAR 13 OF contable PROMPT "Importar Confg. Documentos."
ON SELECTION BAR 1 OF contable do form adm0101
ON SELECTION BAR 3 OF contable do form adm0102b
ON SELECTION BAR 4 OF contable do form adm0105
ON SELECTION BAR 5 OF contable do form adm0104b
ON SELECTION BAR 7 OF contable do form rol0102
ON SELECTION BAR 8 OF contable do form contitem
ON SELECTION BAR 10 OF contable do form con0201
ON SELECTION BAR 11 OF contable do form adm0106
ON SELECTION BAR 13 OF contable do form adm0107

DEFINE POPUP finanzas MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF finanzas PROMPT "Monedas"
DEFINE BAR 2 OF finanzas PROMPT "Bloqueos Cuentas Grupos"
DEFINE BAR 3 OF finanzas PROMPT "Administracion de Bloqueos"
ON SELECTION BAR 1 OF finanzas do form adm0202
ON SELECTION BAR 2 OF finanzas do form adm0203
ON SELECTION BAR 3 OF finanzas do form adm0203a

DEFINE POPUP datosgener MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF datosgener PROMPT "Agrupaci�n de Datos"
DEFINE BAR 2 OF datosgener PROMPT "Talas de Datos"
DEFINE BAR 3 OF datosgener PROMPT "\-"
DEFINE BAR 4 OF datosgener PROMPT "Autorizaciones del SRI"
DEFINE BAR 5 OF datosgener PROMPT "Secuencias"
DEFINE BAR 6 OF datosgener PROMPT "\-"
DEFINE BAR 7 OF datosgener PROMPT "Sujetos"
DEFINE BAR 8 OF datosgener PROMPT "Unificar Sujetos Individual"
DEFINE BAR 9 OF datosgener PROMPT "Unificacion General"
ON SELECTION BAR 1 OF datosgener do form adm0301
ON SELECTION BAR 2 OF datosgener do form adm0302a
ON SELECTION BAR 4 OF datosgener do form autosri
ON SELECTION BAR 5 OF datosgener do form set0303
ON SELECTION BAR 7 OF datosgener do form adm0303
ON SELECTION BAR 8 OF datosgener do form cambiasuj
ON SELECTION BAR 9 OF datosgener do form cambiasuj1

DEFINE POPUP _2aq15zs3d MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF _2aq15zs3d PROMPT "Contabilizacion"
DEFINE BAR 2 OF _2aq15zs3d PROMPT "Liquidaciones"
ON SELECTION BAR 1 OF _2aq15zs3d do form impcondoc
ON SELECTION BAR 2 OF _2aq15zs3d do form impliq

DEFINE POPUP documentos MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF documentos PROMPT "Formas de Pago/Cobro"
DEFINE BAR 2 OF documentos PROMPT "Doc. Bancario"
DEFINE BAR 3 OF documentos PROMPT "Contabilizacion"
DEFINE BAR 4 OF documentos PROMPT "Correccion"
DEFINE BAR 5 OF documentos PROMPT "Correccion de Items"
DEFINE BAR 6 OF documentos PROMPT "Anulacion"
DEFINE BAR 7 OF documentos PROMPT "\-"
DEFINE BAR 8 OF documentos PROMPT "Consulta"
DEFINE BAR 9 OF documentos PROMPT "Redefinicion de doc"
ON SELECTION BAR 1 OF documentos do form adq0701b
ON SELECTION BAR 2 OF documentos do form adq0702b
ON SELECTION BAR 3 OF documentos do form adq0703b
ON SELECTION BAR 4 OF documentos do form adq0706
ON SELECTION BAR 5 OF documentos do form moditems
ON SELECTION BAR 6 OF documentos do form adq0704
ON SELECTION BAR 8 OF documentos do form adq0705b
ON SELECTION BAR 9 OF documentos do form redefine

DEFINE POPUP salir MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF salir PROMPT "Regresar al Menu Princ."
DEFINE BAR 2 OF salir PROMPT "Abandonar el Sistema"
ON SELECTION BAR 1 OF salir ;
	DO _4sz0gkm27 ;
	IN LOCFILE("PROG\MENUADM" ,"MPX;MPR|FXP;PRG" ,"D�NDE est� MENUADM?")
ON SELECTION BAR 2 OF salir ;
	DO _4sz0gkm28 ;
	IN LOCFILE("PROG\MENUADM" ,"MPX;MPR|FXP;PRG" ,"D�NDE est� MENUADM?")


*       *********************************************************
*       *                                                         
*       *              Limpiar C�digo y Procedimientos            
*       *                                                         
*       *********************************************************
*

read event

*       *********************************************************
*       *                                                         
*       * _4SZ0GKM27  ON SELECTION BAR 1 OF POPUP salir           
*       *                                                         
*       * Procedure Origin:                                       
*       *                                                         
*       * From Menu:  MENUADM.PRG,            Record:   56        
*       * Called By:  ON SELECTION BAR 1 OF POPUP salir           
*       * Prompt:     Regresar al Menu Princ.                     
*       * Snippet:    1                                           
*       *                                                         
*       *********************************************************
*
PROCEDURE _4sz0gkm27
do while type('_screen.activeform')='O'
	_screen.activeform.release
enddo	

if used('ACCESOS') then
	sele accesos
	use
endif

deactivate menu _msysmenu
clea even
clea read
return


*       *********************************************************
*       *                                                         
*       * _4SZ0GKM28  ON SELECTION BAR 2 OF POPUP salir           
*       *                                                         
*       * Procedure Origin:                                       
*       *                                                         
*       * From Menu:  MENUADM.PRG,            Record:   57        
*       * Called By:  ON SELECTION BAR 2 OF POPUP salir           
*       * Prompt:     Abandonar el Sistema                        
*       * Snippet:    2                                           
*       *                                                         
*       *********************************************************
*
PROCEDURE _4sz0gkm28
deactivate menu _msysmenu
clea even
clea read
final=1
return

