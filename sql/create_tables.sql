/* =====================================================
   TABLAS RAW (FUENTES)
   ===================================================== */
-- 1. Horario
CREATE TABLE horario_raw(
    dni INT NOT NULL,
    nombre VARCHAR(100),
    supervisor VARCHAR(100),
    estado VARCHAR(20),
    fecha DATE NOT NULL,
    horas_programadas  DECIMAL(5,2)
   );
-- 2. Planilla
CREATE TABLE PLANILLA RAW(
    dni INT NOT NULL,
    nombre_reporte VARCHAR(100),
    nombre_real VARCHAR(100), 
    nombre_campaña VARCHAR(50), 
   );
-- 3. Semanas
CREATE TABLE semanas_raw(
    fecha DATE NOT NULL,
    nombre_dia VARCHAR(10),
    nombre_semana VARCHAR(10),
);
-- 4. Horas Extra
CREATE TABLE horas_extra_raw(
    dni INT NOT NULL,
    nombre VARCHAR(100),
    fecha DATE NOT NULL,
    horas_extra DECIMAL(5,2)
);
-- 5. Reporte Cliente
CREATE TABLE reporte_cliente_raw (
    agente VARCHAR(100),
    fecha DATE NOT NULL,
    activo DECIMAL(5,5),
    baño DECIMAL(5,5),
    capacitacion DECIMAL(5,5),
    break_t DECIMAL(5,5),
    urgencia DECIMAL(5,5),
    off_t DECIMAL(5,5)
);
/* =====================================================
   TABLA DE NEGOCIO
   ===================================================== */
CREATE TABLE horas_operativas(
    nombre VARCHAR(100),
    fecha DATE NOT NULL,
    nombre_dia VARCHAR(20),
    nombre_semana VARCHAR(50),
    horas_programadas DECIMAL(5,2),
    horas_trabajadas DECIMAL(5,2),
    horas_extra DECIMAL(5,2),
    horas_falta DECIMAL(5,2),
    horas_exceso DECIMAL(5,2),
);
