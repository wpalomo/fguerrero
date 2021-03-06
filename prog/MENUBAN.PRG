*       *********************************************************
*       *                                                         
*       * 07/04/2017            MENUBAN.PRG             16:48:20  
*       *                                                         
*       *********************************************************
*       *                                                         
*       * Nombre del autor                                        
*       *                                                         
*       * Copyright (C) 2017 Nombre de compa��a                   
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
*       *                     Establecer c�digo                   
*       *                                                         
*       *********************************************************
*

q1="update detadocb set fecha=rubdoc(code,'fecha')::date "+;
	"where fecha isnull and code in (select code from documents) "
if !sqli(q1)
	=messagebox('Ocurrio un error al confirmar las fechas',0,empresa)
endif

q1="update detadocb set isaccount=(rubdoc(code,'isaccount')='t') "+;
	" where code in (select code from documents) "
if !sqli(q1)
	=messagebox('Ocurrio un error al confirmar las contabilizaciones',0,empresa)
endif

wait 'Proceso de actualizacion exitoso' wind nowait

*       *********************************************************
*       *                                                         
*       *                    Definici�n de men�                   
*       *                                                         
*       *********************************************************
*

SET SYSMENU TO
SET SYSMENU AUTOMATIC

DEFINE PAD _4w0100q7q OF _MSYSMENU PROMPT "Ingresos" COLOR SCHEME 3 ;
	KEY ALT+I, ""
DEFINE PAD _4w0100q7r OF _MSYSMENU PROMPT "Egresos" COLOR SCHEME 3 ;
	KEY ALT+E, ""
DEFINE PAD _4w0100q7s OF _MSYSMENU PROMPT "Conciliaci�n" COLOR SCHEME 3 ;
	KEY ALT+C, ""
DEFINE PAD _4w0100q7t OF _MSYSMENU PROMPT "Cuentas" COLOR SCHEME 3 ;
	KEY ALT+C, ""
DEFINE PAD _4w0100q7u OF _MSYSMENU PROMPT "Reportes" COLOR SCHEME 3 ;
	KEY ALT+R, ""
DEFINE PAD _4w0100q7v OF _MSYSMENU PROMPT "Documentos" COLOR SCHEME 3 ;
	KEY ALT+D, ""
DEFINE PAD _4w0100q7w OF _MSYSMENU PROMPT "Salir" COLOR SCHEME 3 ;
	KEY ALT+S, ""
ON PAD _4w0100q7q OF _MSYSMENU ACTIVATE POPUP ingresos
ON PAD _4w0100q7r OF _MSYSMENU ACTIVATE POPUP egresos
ON PAD _4w0100q7s OF _MSYSMENU ACTIVATE POPUP conciliaci
ON PAD _4w0100q7t OF _MSYSMENU ACTIVATE POPUP cuentas
ON PAD _4w0100q7u OF _MSYSMENU ACTIVATE POPUP reportes
ON PAD _4w0100q7v OF _MSYSMENU ACTIVATE POPUP documentos
ON PAD _4w0100q7w OF _MSYSMENU ACTIVATE POPUP salir

DEFINE POPUP ingresos MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF ingresos PROMPT "Cuentas Por Cobrar"
DEFINE BAR 2 OF ingresos PROMPT "\-"
DEFINE BAR 3 OF ingresos PROMPT "Cancelaci�n de Saldos Iniciales"
DEFINE BAR 4 OF ingresos PROMPT "Otros Ingresos"
DEFINE BAR 5 OF ingresos PROMPT "Otros Ingresos Confirmados"
DEFINE BAR 6 OF ingresos PROMPT "Ingresos Det. Sujetos"
DEFINE BAR 7 OF ingresos PROMPT "Depositos Bancarios (Caja)"
DEFINE BAR 8 OF ingresos PROMPT "Depositos Bancarios (Cheques Clientes)"
DEFINE BAR 9 OF ingresos PROMPT "\-"
DEFINE BAR 10 OF ingresos PROMPT "Liquidaciones"
ON BAR 1 OF ingresos ACTIVATE POPUP cuentaspor
ON BAR 3 OF ingresos ACTIVATE POPUP cancelaci�
ON SELECTION BAR 4 OF ingresos do form ban0102
ON SELECTION BAR 5 OF ingresos do form ban0102a
ON SELECTION BAR 6 OF ingresos do form ban0105
ON SELECTION BAR 7 OF ingresos do form ban0103
ON SELECTION BAR 8 OF ingresos do form ban0108
ON SELECTION BAR 10 OF ingresos do form fac0112

DEFINE POPUP cuentaspor MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF cuentaspor PROMPT "Normal"
DEFINE BAR 2 OF cuentaspor PROMPT "Creditos Empresariales"
DEFINE BAR 3 OF cuentaspor PROMPT "Depositos Confirmados"
ON SELECTION BAR 1 OF cuentaspor do form ban0101
ON SELECTION BAR 2 OF cuentaspor do form ban0101c
ON SELECTION BAR 3 OF cuentaspor do form ban0101b

DEFINE POPUP cancelaci� MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF cancelaci� PROMPT "Normal"
DEFINE BAR 2 OF cancelaci� PROMPT "Depositos Cofirmados"
ON SELECTION BAR 1 OF cancelaci� do form ban0104
ON SELECTION BAR 2 OF cancelaci� do form ban0104a

DEFINE POPUP egresos MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF egresos PROMPT "Impresi�n de Cheques"
DEFINE BAR 2 OF egresos PROMPT "Canc. de Cuentas por Pagar"
DEFINE BAR 3 OF egresos PROMPT "Canc. de Ctas por Pagar Saldo Inic."
DEFINE BAR 4 OF egresos PROMPT "Cancelaci�n de Saldos Iniciales (Ctas Detalle)"
DEFINE BAR 5 OF egresos PROMPT "Retiros"
DEFINE BAR 6 OF egresos PROMPT "Gastos Bancarios"
DEFINE BAR 7 OF egresos PROMPT "\-"
DEFINE BAR 8 OF egresos PROMPT "Pago de Chesques Posfechados"
DEFINE BAR 9 OF egresos PROMPT "\-"
DEFINE BAR 10 OF egresos PROMPT "Otros Egresos"
DEFINE BAR 11 OF egresos PROMPT "\-"
DEFINE BAR 12 OF egresos PROMPT "Cheques de Otros Periodos"
ON SELECTION BAR 1 OF egresos do form ban0201
ON SELECTION BAR 2 OF egresos do form ban0202
ON SELECTION BAR 3 OF egresos do form ban0203
ON SELECTION BAR 4 OF egresos do form ban0209
ON SELECTION BAR 5 OF egresos do form ban0204
ON SELECTION BAR 6 OF egresos do form ban0205
ON SELECTION BAR 8 OF egresos do form ban0206
ON SELECTION BAR 10 OF egresos do form ban0207
ON SELECTION BAR 12 OF egresos do form adq0608

DEFINE POPUP conciliaci MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF conciliaci PROMPT "Confirmacion de Cheques"
DEFINE BAR 2 OF conciliaci PROMPT "\-"
DEFINE BAR 3 OF conciliaci PROMPT "Transferir Cheques a Otro periodo"
DEFINE BAR 4 OF conciliaci PROMPT "Improtar Cheques otro periodo"
ON SELECTION BAR 1 OF conciliaci do form ban0301
ON SELECTION BAR 3 OF conciliaci do form ban0304
ON SELECTION BAR 4 OF conciliaci do form ban0304a

DEFINE POPUP cuentas MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF cuentas PROMPT "Cuentas bancarias"
DEFINE BAR 2 OF cuentas PROMPT "Saldos Iniciales"
ON SELECTION BAR 1 OF cuentas do form ban0401
ON SELECTION BAR 2 OF cuentas do form ban0402

DEFINE POPUP reportes MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF reportes PROMPT "Conciliacion"
DEFINE BAR 2 OF reportes PROMPT "Cheques Pendientes"
DEFINE BAR 3 OF reportes PROMPT "Estado de Cuenta"
DEFINE BAR 4 OF reportes PROMPT "Estado de Cuenta General"
DEFINE BAR 5 OF reportes PROMPT "Documentos Bancarios"
DEFINE BAR 6 OF reportes PROMPT "Cheques posfechados"
DEFINE BAR 7 OF reportes PROMPT "Documentos Anulados"
DEFINE BAR 8 OF reportes PROMPT "Montos Totales (Grupos Doc)"
ON BAR 1 OF reportes ACTIVATE POPUP _22b0yjdyg
ON SELECTION BAR 2 OF reportes do form ban0502
ON SELECTION BAR 3 OF reportes do form ban0503
ON SELECTION BAR 4 OF reportes do form ban0504
ON SELECTION BAR 5 OF reportes do form ban0505
ON SELECTION BAR 6 OF reportes do form ban0507
ON SELECTION BAR 7 OF reportes do form ban0508
ON SELECTION BAR 8 OF reportes do form fac0303a

DEFINE POPUP _22b0yjdyg MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF _22b0yjdyg PROMPT "Con Fechas doc bancario"
DEFINE BAR 2 OF _22b0yjdyg PROMPT "Con Fechas de Emisi�n"
ON SELECTION BAR 1 OF _22b0yjdyg do form ban0501
ON SELECTION BAR 2 OF _22b0yjdyg do form ban0501a

DEFINE POPUP documentos MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF documentos PROMPT "Autorizaci�n"
DEFINE BAR 2 OF documentos PROMPT "Generar Pagares"
DEFINE BAR 3 OF documentos PROMPT "Formas de Pago/Cobro"
DEFINE BAR 4 OF documentos PROMPT "Generar Doc. Bancario"
DEFINE BAR 5 OF documentos PROMPT "Contabilizaci�n"
DEFINE BAR 6 OF documentos PROMPT "\-"
DEFINE BAR 7 OF documentos PROMPT "Consulta Doc. Bancarios"
DEFINE BAR 8 OF documentos PROMPT "\-"
DEFINE BAR 9 OF documentos PROMPT "Consulta Documentos"
DEFINE BAR 10 OF documentos PROMPT "Anulacion"
DEFINE BAR 11 OF documentos PROMPT "\-"
DEFINE BAR 12 OF documentos PROMPT "Anulacion Doc. bancario"
DEFINE BAR 13 OF documentos PROMPT "Cambio de Cheque"
ON SELECTION BAR 1 OF documentos do form adq0707
ON SELECTION BAR 2 OF documentos do form tablamort
ON SELECTION BAR 3 OF documentos do form adq0701b
ON SELECTION BAR 4 OF documentos do form adq0702b
ON SELECTION BAR 5 OF documentos do form adq0703b
ON SELECTION BAR 7 OF documentos do form ban0604
ON SELECTION BAR 9 OF documentos do form adq0705b
ON SELECTION BAR 10 OF documentos do form adq0704
ON SELECTION BAR 12 OF documentos do form ban0606
ON SELECTION BAR 13 OF documentos do form ban0607

DEFINE POPUP salir MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF salir PROMPT "Regresar al Men� Princ."
DEFINE BAR 2 OF salir PROMPT "Abandonar el sistema"
ON SELECTION BAR 1 OF salir ;
	DO _4w0100q85 ;
	IN LOCFILE("PROG\MENUBAN" ,"MPX;MPR|FXP;PRG" ,"D�NDE est� MENUBAN?")
ON SELECTION BAR 2 OF salir ;
	DO _4w0100q86 ;
	IN LOCFILE("PROG\MENUBAN" ,"MPX;MPR|FXP;PRG" ,"D�NDE est� MENUBAN?")


*       *********************************************************
*       *                                                         
*       *              Limpiar C�digo y Procedimientos            
*       *                                                         
*       *********************************************************
*

read event

*       *********************************************************
*       *                                                         
*       * _4W0100Q85  ON SELECTION BAR 1 OF POPUP salir           
*       *                                                         
*       * Procedure Origin:                                       
*       *                                                         
*       * From Menu:  MENUBAN.PRG,            Record:   81        
*       * Called By:  ON SELECTION BAR 1 OF POPUP salir           
*       * Prompt:     Regresar al Men� Princ.                     
*       * Snippet:    1                                           
*       *                                                         
*       *********************************************************
*
PROCEDURE _4w0100q85
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
*       * _4W0100Q86  ON SELECTION BAR 2 OF POPUP salir           
*       *                                                         
*       * Procedure Origin:                                       
*       *                                                         
*       * From Menu:  MENUBAN.PRG,            Record:   82        
*       * Called By:  ON SELECTION BAR 2 OF POPUP salir           
*       * Prompt:     Abandonar el sistema                        
*       * Snippet:    2                                           
*       *                                                         
*       *********************************************************
*
PROCEDURE _4w0100q86
for i=1 to 15
	release windows
endfor
deactivate menu _msysmenu
clea even
clea read
final=1
return

