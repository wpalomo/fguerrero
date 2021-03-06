*       *********************************************************
*       *                                                         
*       * 25/04/2017            MENUROL.PRG             10:37:51  
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
*       *                    Definici�n de men�                   
*       *                                                         
*       *********************************************************
*

SET SYSMENU TO
SET SYSMENU AUTOMATIC

DEFINE PAD _4wi0msaa9 OF _MSYSMENU PROMPT "Ingreso de Datos" COLOR SCHEME 3 ;
	KEY ALT+I, ""
DEFINE PAD _4wi0msaaa OF _MSYSMENU PROMPT "Registro Rol" COLOR SCHEME 3 ;
	KEY ALT+R, ""
DEFINE PAD _4wi0msaab OF _MSYSMENU PROMPT "Reportes" COLOR SCHEME 3 ;
	KEY ALT+R, ""
DEFINE PAD _4wi0msaac OF _MSYSMENU PROMPT "Documentos" COLOR SCHEME 3 ;
	KEY ALT+D, ""
DEFINE PAD _4wi0msaad OF _MSYSMENU PROMPT "Configuracion" COLOR SCHEME 3 ;
	KEY ALT+C, ""
DEFINE PAD _4wi0msaae OF _MSYSMENU PROMPT "Salir" COLOR SCHEME 3 ;
	KEY ALT+S, ""
ON PAD _4wi0msaa9 OF _MSYSMENU ACTIVATE POPUP ingresoded
ON PAD _4wi0msaaa OF _MSYSMENU ACTIVATE POPUP registroro
ON PAD _4wi0msaab OF _MSYSMENU ACTIVATE POPUP reportes
ON PAD _4wi0msaac OF _MSYSMENU ACTIVATE POPUP documentos
ON PAD _4wi0msaad OF _MSYSMENU ACTIVATE POPUP configurac
ON PAD _4wi0msaae OF _MSYSMENU ACTIVATE POPUP salir

DEFINE POPUP ingresoded MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF ingresoded PROMPT "Creaci�n de Personas"
DEFINE BAR 2 OF ingresoded PROMPT "\-"
DEFINE BAR 3 OF ingresoded PROMPT "Generar Rol"
DEFINE BAR 4 OF ingresoded PROMPT "\-"
DEFINE BAR 5 OF ingresoded PROMPT "Rol 2da Forma"
DEFINE BAR 6 OF ingresoded PROMPT "\-"
DEFINE BAR 7 OF ingresoded PROMPT "Liquidacion de Sueldo"
DEFINE BAR 8 OF ingresoded PROMPT "Liquidacion de Quincena"
ON BAR 1 OF ingresoded ACTIVATE POPUP creaci�nde
ON SELECTION BAR 3 OF ingresoded do form rol0104
ON SELECTION BAR 5 OF ingresoded do form rol0108
ON SELECTION BAR 7 OF ingresoded do form rol0107
ON SELECTION BAR 8 OF ingresoded do form rol0107a

DEFINE POPUP creaci�nde MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF creaci�nde PROMPT "Datos Generales Sujetos"
DEFINE BAR 2 OF creaci�nde PROMPT "Agregar Datos de Empleados"
ON SELECTION BAR 1 OF creaci�nde do form adm0303
ON SELECTION BAR 2 OF creaci�nde do form rol0101b

DEFINE POPUP registroro MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF registroro PROMPT "Anticipos/Haberes"
DEFINE BAR 2 OF registroro PROMPT "Quincena - Decimos"
DEFINE BAR 3 OF registroro PROMPT "\-"
DEFINE BAR 4 OF registroro PROMPT "Multas/Descuentos"
DEFINE BAR 5 OF registroro PROMPT "\-"
DEFINE BAR 6 OF registroro PROMPT "Asistencia y Horas Extras"
DEFINE BAR 7 OF registroro PROMPT "Feriados"
DEFINE BAR 8 OF registroro PROMPT "Alimentaci�n"
DEFINE BAR 9 OF registroro PROMPT "\-"
DEFINE BAR 10 OF registroro PROMPT "Cancelacion de Comisiones X Pagar"
DEFINE BAR 11 OF registroro PROMPT "\-"
DEFINE BAR 12 OF registroro PROMPT "Recalculo de Rol"
ON SELECTION BAR 1 OF registroro do form rol0302
ON SELECTION BAR 2 OF registroro do form rol0303
ON SELECTION BAR 4 OF registroro do form rol0310
ON SELECTION BAR 6 OF registroro do form rol0315
ON SELECTION BAR 7 OF registroro do form rol0316
ON SELECTION BAR 8 OF registroro do form rol0430a
ON SELECTION BAR 10 OF registroro do form rol0301
ON SELECTION BAR 12 OF registroro do form rol0315e1

DEFINE POPUP reportes MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF reportes PROMPT "Valor a Recibir"
DEFINE BAR 2 OF reportes PROMPT "Roles Mensuales"
DEFINE BAR 3 OF reportes PROMPT "Resumen mensual"
DEFINE BAR 4 OF reportes PROMPT "Decimo XIII"
DEFINE BAR 5 OF reportes PROMPT "Acumulados"
DEFINE BAR 6 OF reportes PROMPT "Reporte por Rubros"
DEFINE BAR 7 OF reportes PROMPT "Nomina"
DEFINE BAR 8 OF reportes PROMPT "Asistencia y Horas Extras"
DEFINE BAR 9 OF reportes PROMPT "Empleados por Departamento"
DEFINE BAR 10 OF reportes PROMPT "\-"
DEFINE BAR 11 OF reportes PROMPT "Montos Totales (Grupos Doc)"
ON SELECTION BAR 1 OF reportes do form rol0401
ON SELECTION BAR 2 OF reportes do form rol0402
ON SELECTION BAR 3 OF reportes do form rol0403
ON SELECTION BAR 4 OF reportes do form rol0404
ON SELECTION BAR 5 OF reportes do form rol0405
ON SELECTION BAR 6 OF reportes do form rol0406
ON SELECTION BAR 7 OF reportes do form rol0408
ON SELECTION BAR 8 OF reportes do form rol0420
ON SELECTION BAR 9 OF reportes do form rol0402a
ON SELECTION BAR 11 OF reportes do form fac0303

DEFINE POPUP documentos MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF documentos PROMPT "Multiples Valores"
DEFINE BAR 2 OF documentos PROMPT "\-"
DEFINE BAR 3 OF documentos PROMPT "Formas de Pago/Cobro"
DEFINE BAR 4 OF documentos PROMPT "Documento Bancario"
DEFINE BAR 5 OF documentos PROMPT "Correccion"
DEFINE BAR 6 OF documentos PROMPT "Contabilizaci�n"
DEFINE BAR 7 OF documentos PROMPT "\-"
DEFINE BAR 8 OF documentos PROMPT "Anulaci�n"
DEFINE BAR 9 OF documentos PROMPT "Consulta"
ON BAR 1 OF documentos ACTIVATE POPUP registrarm
ON SELECTION BAR 3 OF documentos do form adq0701b
ON SELECTION BAR 4 OF documentos do form adq0702b
ON SELECTION BAR 5 OF documentos do form adq0706
ON SELECTION BAR 6 OF documentos do form adq0703b
ON SELECTION BAR 8 OF documentos do form adq0704
ON SELECTION BAR 9 OF documentos do form adq0705b

DEFINE POPUP registrarm MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF registrarm PROMPT "Registrar"
DEFINE BAR 2 OF registrarm PROMPT "Generar Individuales"
DEFINE BAR 3 OF registrarm PROMPT "Cancelar"
DEFINE BAR 4 OF registrarm PROMPT "Contabilizar"
DEFINE BAR 5 OF registrarm PROMPT "\-"
DEFINE BAR 6 OF registrarm PROMPT "Consultar"
ON SELECTION BAR 1 OF registrarm do form docmul
ON SELECTION BAR 2 OF registrarm do form genindi
ON SELECTION BAR 3 OF registrarm do form  cancdocm
ON SELECTION BAR 4 OF registrarm do form contdocm
ON SELECTION BAR 6 OF registrarm do form consdocm

DEFINE POPUP configurac MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF configurac PROMPT "Rubros"
DEFINE BAR 2 OF configurac PROMPT "Contabilizacion de Rubros"
DEFINE BAR 3 OF configurac PROMPT "Turnos"
ON SELECTION BAR 1 OF configurac do form adm0101
ON SELECTION BAR 2 OF configurac do form rol0102
ON SELECTION BAR 3 OF configurac do form rol0103

DEFINE POPUP salir MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF salir PROMPT "Regresar al Men� Princ."
DEFINE BAR 2 OF salir PROMPT "Abandonar el sistema"
ON SELECTION BAR 1 OF salir ;
	DO _4wi0msaap ;
	IN LOCFILE("PROG\MENUROL" ,"MPX;MPR|FXP;PRG" ,"D�NDE est� MENUROL?")
ON SELECTION BAR 2 OF salir ;
	DO _4wi0msaaq ;
	IN LOCFILE("PROG\MENUROL" ,"MPX;MPR|FXP;PRG" ,"D�NDE est� MENUROL?")


*       *********************************************************
*       *                                                         
*       *              Limpiar C�digo y Procedimientos            
*       *                                                         
*       *********************************************************
*

read event

*       *********************************************************
*       *                                                         
*       * _4WI0MSAAP  ON SELECTION BAR 1 OF POPUP salir           
*       *                                                         
*       * Procedure Origin:                                       
*       *                                                         
*       * From Menu:  MENUROL.PRG,            Record:   74        
*       * Called By:  ON SELECTION BAR 1 OF POPUP salir           
*       * Prompt:     Regresar al Men� Princ.                     
*       * Snippet:    1                                           
*       *                                                         
*       *********************************************************
*
PROCEDURE _4wi0msaap
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
*       * _4WI0MSAAQ  ON SELECTION BAR 2 OF POPUP salir           
*       *                                                         
*       * Procedure Origin:                                       
*       *                                                         
*       * From Menu:  MENUROL.PRG,            Record:   75        
*       * Called By:  ON SELECTION BAR 2 OF POPUP salir           
*       * Prompt:     Abandonar el sistema                        
*       * Snippet:    2                                           
*       *                                                         
*       *********************************************************
*
PROCEDURE _4wi0msaaq
deactivate menu _msysmenu
clea even
clea read
final=1
return

