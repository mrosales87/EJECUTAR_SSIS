/* para ejecutar un paquete de ssis desde una direccion */
DECLARE @SQLQuery AS VARCHAR(2000)
SET @SQLQuery = 'DTExec /FILE ^"C:\SSIS_PLANIFICACION\Planificacion_SSIS\Planificacion_SSIS\Planificacion_SSIS\READ_IDENTIFICADOR_GESTION.dtsx^"'
EXEC master..xp_cmdshell @SQLQuery



/* para ejecutar un paquete de ssis desde file system de integration services */
DECLARE @SQLQuery AS VARCHAR(2000)
SET @SQLQuery = 'dtexec /dts "\File System\SSIS_PLANI\READ_IDENTIFICADOR_GESTION"'
EXEC master..xp_cmdshell @SQLQuery


/* para ejecutar un paquete de ssis desde file system de integration services con una variable */
DECLARE @SQLQuery AS VARCHAR(2000)
SET @SQLQuery = 'dtexec /dts "\File System\SSIS_PLANI\READ_IDENTIFICADOR_GESTION" /set "\package.variables[ID_SOLICITUD].Value;56"'
EXEC master..xp_cmdshell @SQLQuery

