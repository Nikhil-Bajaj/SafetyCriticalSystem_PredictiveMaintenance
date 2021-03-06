
-- SET search_path TO myschema,public; -- FOR KEEPING DEFAULT SEARCHPATH AS PUBLIC NAMESPACE

-- ******************************** SENSOR INITIAL DATA ******************************** 
-- Table: public.sensor_data
-- DROP TABLE IF EXISTS public.sensor_data;

CREATE TABLE IF NOT EXISTS public.sensor_data
(
    ce double precision,
    cp double precision,
    eps1 double precision,
    fs1 double precision,
    fs2 double precision,
    ps1 double precision,
    ps2 double precision,
    ps3 double precision,
    ps4 double precision,
    ps5 double precision,
    ps6 double precision,
    se double precision,
    ts1 double precision,
    ts2 double precision,
    ts3 double precision,
    ts4 double precision,
    vs1 double precision,
    "timestamp" bigint
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sensor_data
    OWNER to postgres;


-- ******************************** SENSOR'S CONDITION******************************** 
-- Table: public.metrics
-- DROP TABLE IF EXISTS public.metrics;

CREATE TABLE IF NOT EXISTS public.metrics
(
    coolercondition integer,
    valvecondition integer,
    internalpumpleakage integer,
    hydraulicaccumulator integer,
    stableflag integer,
    "timestamp" bigint
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.metrics
    OWNER to postgres;


-- ******************************** PRED AFTER 15MINS ******************************** 
-- Table: public.metrics_predict15
-- DROP TABLE IF EXISTS public.metrics_predict15;

CREATE TABLE IF NOT EXISTS public.metrics_predict15
(
    coolercondition integer,
    valvecondition integer,
    internalpumpleakage integer,
    hydraulicaccumulator integer,
    stableflag integer,
    "timestamp" bigint
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.metrics_predict15
    OWNER to postgres;



