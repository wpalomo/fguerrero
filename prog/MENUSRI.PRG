*       *********************************************************
*       *                                                         
*       * 16/09/2016            MENUSRI.PRG             01:52:22  
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

DEFINE PAD _4qc040ix1 OF _MSYSMENU PROMPT "SRI" COLOR SCHEME 3 ;
	KEY ALT+S, ""
DEFINE PAD _4qc040ix2 OF _MSYSMENU PROMPT "Extracontables" COLOR SCHEME 3 ;
	KEY ALT+E, ""
DEFINE PAD _4qc040ix3 OF _MSYSMENU PROMPT "Requerimientos Generales" COLOR SCHEME 3 ;
	KEY ALT+R, ""
DEFINE PAD _4qc040ix4 OF _MSYSMENU PROMPT "Requerimientos" COLOR SCHEME 3 ;
	KEY ALT+R, ""
DEFINE PAD _4qc040ix5 OF _MSYSMENU PROMPT "Reportes" COLOR SCHEME 3 ;
	KEY ALT+R, ""
DEFINE PAD _4qc040ix6 OF _MSYSMENU PROMPT "Documentos" COLOR SCHEME 3 ;
	KEY ALT+D, ""
DEFINE PAD _4qc040ix7 OF _MSYSMENU PROMPT "Salir" COLOR SCHEME 3 ;
	KEY ALT+S, ""
ON PAD _4qc040ix1 OF _MSYSMENU ACTIVATE POPUP sri
ON PAD _4qc040ix2 OF _MSYSMENU ACTIVATE POPUP extraconta
ON PAD _4qc040ix3 OF _MSYSMENU ACTIVATE POPUP requerimie
ON PAD _4qc040ix4 OF _MSYSMENU ACTIVATE POPUP _1bx0w7oil
ON PAD _4qc040ix5 OF _MSYSMENU ACTIVATE POPUP reportes
ON PAD _4qc040ix6 OF _MSYSMENU ACTIVATE POPUP documentos
ON PAD _4qc040ix7 OF _MSYSMENU ACTIVATE POPUP salir

DEFINE POPUP sri MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF sri PROMPT "Tabla de Datos"
DEFINE BAR 2 OF sri PROMPT "Autorizaciones"
ON SELECTION BAR 1 OF sri do form sri0101
ON SELECTION BAR 2 OF sri do form autosri

DEFINE POPUP extraconta MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF extraconta PROMPT "Modificar Anexos de Iva"
DEFINE BAR 2 OF extraconta PROMPT "Modificar Anexos de Iva 2013"
DEFINE BAR 3 OF extraconta PROMPT "Modificar Anexos Notas de Credito"
DEFINE BAR 4 OF extraconta PROMPT "\-"
DEFINE BAR 5 OF extraconta PROMPT "Comprobantes de Retencion"
ON SELECTION BAR 1 OF extraconta do form sri0303b
ON SELECTION BAR 2 OF extraconta do form sri0303
ON SELECTION BAR 3 OF extraconta do form sri0302
ON SELECTION BAR 5 OF extraconta do form comprete

DEFINE POPUP requerimie MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF requerimie PROMPT "Anexo Transaccional 2016"
DEFINE BAR 2 OF requerimie PROMPT "Anexo Transaccional 2015"
DEFINE BAR 3 OF requerimie PROMPT "Anexo Transaccional Simplificado 2013"
DEFINE BAR 4 OF requerimie PROMPT "Retenci�n de Imp. Renta"
DEFINE BAR 5 OF requerimie PROMPT "Generar Anexo Relaci�n de Dependencia"
ON SELECTION BAR 1 OF requerimie do form sri0301e
ON SELECTION BAR 2 OF requerimie do form sri0301d
ON SELECTION BAR 3 OF requerimie do form sri0301c
ON SELECTION BAR 5 OF requerimie do form sri0307

DEFINE POPUP _1bx0w7oil MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF _1bx0w7oil PROMPT "Tabla de Rangos"
ON SELECTION BAR 1 OF _1bx0w7oil do form sri0501

DEFINE POPUP reportes MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF reportes PROMPT "Comprobante de Retencion"
DEFINE BAR 2 OF reportes PROMPT "Anexo Transaccional"
DEFINE BAR 3 OF reportes PROMPT "\-"
DEFINE BAR 4 OF reportes PROMPT "Retenciones por Registrar"
DEFINE BAR 5 OF reportes PROMPT "Retenciones sin codigo de Imp. Renta"
DEFINE BAR 6 OF reportes PROMPT "Retenciones del Imp. Renta no incluido en Anexos de Compra"
DEFINE BAR 7 OF reportes PROMPT "Retenciones sin Base de calculo"
DEFINE BAR 8 OF reportes PROMPT "\-"
DEFINE BAR 9 OF reportes PROMPT "Por Tipo de Retencion"
DEFINE BAR 10 OF reportes PROMPT "Por Porcentaje de Retencion"
DEFINE BAR 11 OF reportes PROMPT "Retenciones Emitidas"
DEFINE BAR 12 OF reportes PROMPT "Retenciones Recibidas"
DEFINE BAR 13 OF reportes PROMPT "\-"
DEFINE BAR 14 OF reportes PROMPT "Doc por Tipo"
DEFINE BAR 15 OF reportes PROMPT "Doc por Sustento Tributario"
DEFINE BAR 16 OF reportes PROMPT "\-"
DEFINE BAR 17 OF reportes PROMPT "Retenciones Anuladas"
ON SELECTION BAR 1 OF reportes do form sri0203
ON SELECTION BAR 2 OF reportes do form sri0304
ON SELECTION BAR 4 OF reportes do form sri0305
ON SELECTION BAR 5 OF reportes do form sri0305b
ON SELECTION BAR 6 OF reportes do form sri0305c
ON SELECTION BAR 7 OF reportes do form sri0305d
ON SELECTION BAR 9 OF reportes do form sri0307
ON SELECTION BAR 10 OF reportes do form sri0307a
ON SELECTION BAR 11 OF reportes do form sri0306
ON SELECTION BAR 12 OF reportes do form retenfac
ON SELECTION BAR 14 OF reportes do form sri0308
ON SELECTION BAR 15 OF reportes do form sri0310
ON SELECTION BAR 17 OF reportes do form sri0311

DEFINE POPUP documentos MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF documentos PROMPT "Consulta"
DEFINE BAR 2 OF documentos PROMPT "\-"
DEFINE BAR 3 OF documentos PROMPT "Formas de Pago/Cobro"
DEFINE BAR 4 OF documentos PROMPT "Correccion"
DEFINE BAR 5 OF documentos PROMPT "Contabilizaci�n"
DEFINE BAR 6 OF documentos PROMPT "\-"
DEFINE BAR 7 OF documentos PROMPT "Anulaci�n"
ON SELECTION BAR 1 OF documentos do form adq0705b
ON SELECTION BAR 3 OF documentos do form adq0701b
ON SELECTION BAR 4 OF documentos do form adq0706
ON SELECTION BAR 5 OF documentos do form adq0703b
ON SELECTION BAR 7 OF documentos do form adq0704

DEFINE POPUP salir MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF salir PROMPT "Regresar al Men� Princ."
DEFINE BAR 2 OF salir PROMPT "Abandonar el sistema"
ON SELECTION BAR 1 OF salir ;
	DO _4qc040ixi ;
	IN LOCFILE("PROG\MENUSRI" ,"MPX;MPR|FXP;PRG" ,"D�NDE est� MENUSRI?")
ON SELECTION BAR 2 OF salir ;
	DO _4qc040ixk ;
	IN LOCFILE("PROG\MENUSRI" ,"MPX;MPR|FXP;PRG" ,"D�NDE est� MENUSRI?")


*       *********************************************************
*       *                                                         
*       *              Limpiar C�digo y Procedimientos            
*       *                                                         
*       *********************************************************
*

read event

*       *********************************************************
*       *                                                         
*       * _4QC040IXI  ON SELECTION BAR 1 OF POPUP salir           
*       *                                                         
*       * Procedure Origin:                                       
*       *                                                         
*       * From Menu:  MENUSRI.PRG,            Record:   60        
*       * Called By:  ON SELECTION BAR 1 OF POPUP salir           
*       * Prompt:     Regresar al Men� Princ.                     
*       * Snippet:    1                                           
*       *                                                         
*       *********************************************************
*
PROCEDURE _4qc040ixi
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
*       * _4QC040IXK  ON SELECTION BAR 2 OF POPUP salir           
*       *                                                         
*       * Procedure Origin:                                       
*       *                                                         
*       * From Menu:  MENUSRI.PRG,            Record:   61        
*       * Called By:  ON SELECTION BAR 2 OF POPUP salir           
*       * Prompt:     Abandonar el sistema                        
*       * Snippet:    2                                           
*       *                                                         
*       *********************************************************
*
PROCEDURE _4qc040ixk
deactivate menu _msysmenu
clea even
clea read
final=1
return

