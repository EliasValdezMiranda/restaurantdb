--
-- PostgreSQL database dump
--

\restrict fhM7cKfWsvSlfa3YgPSvfBTKHEbwKANPsDpMSegejXCqhCEHdCdhy31dmRAmgzb

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-06 13:50:19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5016 (class 1262 OID 17498)
-- Name: restaurantdb; Type: DATABASE; Schema: -; Owner: developer
--

CREATE DATABASE restaurantdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';


ALTER DATABASE restaurantdb OWNER TO developer;

\unrestrict fhM7cKfWsvSlfa3YgPSvfBTKHEbwKANPsDpMSegejXCqhCEHdCdhy31dmRAmgzb
\connect restaurantdb
\restrict fhM7cKfWsvSlfa3YgPSvfBTKHEbwKANPsDpMSegejXCqhCEHdCdhy31dmRAmgzb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 17499)
-- Name: booking; Type: TABLE; Schema: public; Owner: developer
--

CREATE TABLE public.booking (
    booking_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    number_in_party integer NOT NULL,
    customer_id integer CONSTRAINT booking_costumer_id_not_null NOT NULL,
    table_number integer NOT NULL
);


ALTER TABLE public.booking OWNER TO developer;

--
-- TOC entry 220 (class 1259 OID 17507)
-- Name: customer; Type: TABLE; Schema: public; Owner: developer
--

CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    customer_first_name character varying(35) NOT NULL,
    customer_surname character varying(71) NOT NULL,
    phone_number character varying(14) NOT NULL,
    cellphone_number character varying(14) NOT NULL,
    email_address character varying(50) NOT NULL,
    physical_address character varying(70) NOT NULL,
    tier character varying(12) DEFAULT 'Regular'::character varying NOT NULL,
    debt money DEFAULT (0)::money NOT NULL
);


ALTER TABLE public.customer OWNER TO developer;

--
-- TOC entry 221 (class 1259 OID 17521)
-- Name: customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: developer
--

ALTER TABLE public.customer ALTER COLUMN customer_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customer_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 17522)
-- Name: ingredient; Type: TABLE; Schema: public; Owner: developer
--

CREATE TABLE public.ingredient (
    ingredient_id integer CONSTRAINT ingredients_ingredient_id_not_null NOT NULL,
    ingredient_name character varying(35) CONSTRAINT ingredients_ingredient_name_not_null NOT NULL,
    ingredient_type_code integer CONSTRAINT ingredients_ingredient_type_code_not_null NOT NULL
);


ALTER TABLE public.ingredient OWNER TO developer;

--
-- TOC entry 223 (class 1259 OID 17528)
-- Name: ingredient_measurement; Type: TABLE; Schema: public; Owner: developer
--

CREATE TABLE public.ingredient_measurement (
    measurement_id integer NOT NULL,
    ingredient_id integer NOT NULL
);


ALTER TABLE public.ingredient_measurement OWNER TO developer;

--
-- TOC entry 224 (class 1259 OID 17533)
-- Name: ingredient_type; Type: TABLE; Schema: public; Owner: developer
--

CREATE TABLE public.ingredient_type (
    ingredient_type_code integer NOT NULL,
    ingredient_type_name character varying(35) NOT NULL,
    ingredient_type_description character varying(50) NOT NULL
);


ALTER TABLE public.ingredient_type OWNER TO developer;

--
-- TOC entry 225 (class 1259 OID 17539)
-- Name: ingredient_type_ingredient_type_code_seq; Type: SEQUENCE; Schema: public; Owner: developer
--

ALTER TABLE public.ingredient_type ALTER COLUMN ingredient_type_code ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ingredient_type_ingredient_type_code_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 17540)
-- Name: ingredients_ingredient_id_seq; Type: SEQUENCE; Schema: public; Owner: developer
--

ALTER TABLE public.ingredient ALTER COLUMN ingredient_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ingredients_ingredient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 227 (class 1259 OID 17541)
-- Name: measurement; Type: TABLE; Schema: public; Owner: developer
--

CREATE TABLE public.measurement (
    measurement_id integer NOT NULL,
    measurement_name character varying(20) NOT NULL,
    measurement_abbreviation character varying(5) NOT NULL
);


ALTER TABLE public.measurement OWNER TO developer;

--
-- TOC entry 228 (class 1259 OID 17547)
-- Name: measurement_measurement_id_seq; Type: SEQUENCE; Schema: public; Owner: developer
--

ALTER TABLE public.measurement ALTER COLUMN measurement_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.measurement_measurement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 229 (class 1259 OID 17548)
-- Name: menu; Type: TABLE; Schema: public; Owner: developer
--

CREATE TABLE public.menu (
    menu_id integer NOT NULL,
    menu_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.menu OWNER TO developer;

--
-- TOC entry 230 (class 1259 OID 17554)
-- Name: menu_item; Type: TABLE; Schema: public; Owner: developer
--

CREATE TABLE public.menu_item (
    menu_item_id integer NOT NULL,
    menu_item_description character varying(50) NOT NULL,
    menu_item_price money NOT NULL,
    menu_id integer NOT NULL
);


ALTER TABLE public.menu_item OWNER TO developer;

--
-- TOC entry 231 (class 1259 OID 17561)
-- Name: menu_item_ingredient; Type: TABLE; Schema: public; Owner: developer
--

CREATE TABLE public.menu_item_ingredient (
    item_quantity numeric(5,2) CONSTRAINT menu_item_ingredients_item_quantity_not_null NOT NULL,
    menu_item_id integer CONSTRAINT menu_item_ingredients_menu_item_id_not_null NOT NULL,
    ingredient_id integer CONSTRAINT menu_item_ingredients_ingredient_id_not_null NOT NULL,
    measurement_id integer NOT NULL
);


ALTER TABLE public.menu_item_ingredient OWNER TO developer;

--
-- TOC entry 232 (class 1259 OID 17567)
-- Name: menu_item_menu_item_id_seq; Type: SEQUENCE; Schema: public; Owner: developer
--

ALTER TABLE public.menu_item ALTER COLUMN menu_item_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.menu_item_menu_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 233 (class 1259 OID 17568)
-- Name: menu_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: developer
--

ALTER TABLE public.menu ALTER COLUMN menu_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.menu_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 234 (class 1259 OID 17569)
-- Name: order; Type: TABLE; Schema: public; Owner: developer
--

CREATE TABLE public."order" (
    order_id integer NOT NULL,
    order_date_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    table_number integer NOT NULL,
    staff_id integer NOT NULL
);


ALTER TABLE public."order" OWNER TO developer;

--
-- TOC entry 235 (class 1259 OID 17577)
-- Name: order_menu_item; Type: TABLE; Schema: public; Owner: developer
--

CREATE TABLE public.order_menu_item (
    order_menu_item_quantity integer NOT NULL,
    order_menu_item_coments character varying(50) NOT NULL,
    order_id integer NOT NULL,
    menu_item_id integer NOT NULL
);


ALTER TABLE public.order_menu_item OWNER TO developer;

--
-- TOC entry 236 (class 1259 OID 17584)
-- Name: order_order_id_seq; Type: SEQUENCE; Schema: public; Owner: developer
--

ALTER TABLE public."order" ALTER COLUMN order_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 237 (class 1259 OID 17585)
-- Name: staff; Type: TABLE; Schema: public; Owner: developer
--

CREATE TABLE public.staff (
    staff_id integer NOT NULL,
    staff_first_name character varying(35) NOT NULL,
    staff_last_name character varying(71) NOT NULL,
    staff_role_code integer NOT NULL
);


ALTER TABLE public.staff OWNER TO developer;

--
-- TOC entry 238 (class 1259 OID 17592)
-- Name: staff_role; Type: TABLE; Schema: public; Owner: developer
--

CREATE TABLE public.staff_role (
    staff_role_code integer NOT NULL,
    staff_role_description character varying(50) NOT NULL
);


ALTER TABLE public.staff_role OWNER TO developer;

--
-- TOC entry 239 (class 1259 OID 17597)
-- Name: staff_role_staff_role_code_seq; Type: SEQUENCE; Schema: public; Owner: developer
--

ALTER TABLE public.staff_role ALTER COLUMN staff_role_code ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.staff_role_staff_role_code_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 240 (class 1259 OID 17598)
-- Name: staff_staff_id_seq; Type: SEQUENCE; Schema: public; Owner: developer
--

ALTER TABLE public.staff ALTER COLUMN staff_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.staff_staff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 241 (class 1259 OID 17599)
-- Name: table; Type: TABLE; Schema: public; Owner: developer
--

CREATE TABLE public."table" (
    table_number integer NOT NULL,
    table_seats_number integer NOT NULL,
    table_price money NOT NULL
);


ALTER TABLE public."table" OWNER TO developer;

--
-- TOC entry 242 (class 1259 OID 17605)
-- Name: table_table_number_seq; Type: SEQUENCE; Schema: public; Owner: developer
--

ALTER TABLE public."table" ALTER COLUMN table_number ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.table_table_number_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4821 (class 2606 OID 17606)
-- Name: booking check_booking_date; Type: CHECK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE public.booking
    ADD CONSTRAINT check_booking_date CHECK ((booking_date >= CURRENT_TIMESTAMP)) NOT VALID;


--
-- TOC entry 4823 (class 2606 OID 17607)
-- Name: customer check_customer_tier; Type: CHECK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE public.customer
    ADD CONSTRAINT check_customer_tier CHECK (((tier)::text = ANY (ARRAY[('Regular'::character varying)::text, ('Plata'::character varying)::text, ('Oro'::character varying)::text, ('Platino'::character varying)::text]))) NOT VALID;


--
-- TOC entry 4826 (class 2606 OID 17608)
-- Name: menu_item_ingredient check_item_quantity; Type: CHECK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE public.menu_item_ingredient
    ADD CONSTRAINT check_item_quantity CHECK ((item_quantity > (0)::numeric)) NOT VALID;


--
-- TOC entry 4825 (class 2606 OID 17609)
-- Name: menu_item check_menu_item_price; Type: CHECK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE public.menu_item
    ADD CONSTRAINT check_menu_item_price CHECK ((menu_item_price >= (10)::money)) NOT VALID;


--
-- TOC entry 4827 (class 2606 OID 17610)
-- Name: order_menu_item check_menu_item_quantity; Type: CHECK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE public.order_menu_item
    ADD CONSTRAINT check_menu_item_quantity CHECK ((order_menu_item_quantity > 0)) NOT VALID;


--
-- TOC entry 4822 (class 2606 OID 17611)
-- Name: booking check_number_in_party; Type: CHECK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE public.booking
    ADD CONSTRAINT check_number_in_party CHECK ((number_in_party >= 1)) NOT VALID;


--
-- TOC entry 4824 (class 2606 OID 17612)
-- Name: customer check_positive_debt; Type: CHECK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE public.customer
    ADD CONSTRAINT check_positive_debt CHECK ((debt >= (0)::money)) NOT VALID;


--
-- TOC entry 4828 (class 2606 OID 17613)
-- Name: table check_table_price; Type: CHECK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE public."table"
    ADD CONSTRAINT check_table_price CHECK ((table_price >= (100)::money)) NOT VALID;


--
-- TOC entry 4829 (class 2606 OID 17614)
-- Name: table check_table_seats_num; Type: CHECK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE public."table"
    ADD CONSTRAINT check_table_seats_num CHECK ((table_seats_number >= 1)) NOT VALID;


--
-- TOC entry 4831 (class 2606 OID 17616)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4835 (class 2606 OID 17618)
-- Name: ingredient_type ingredient_type_pkey; Type: CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.ingredient_type
    ADD CONSTRAINT ingredient_type_pkey PRIMARY KEY (ingredient_type_code);


--
-- TOC entry 4833 (class 2606 OID 17620)
-- Name: ingredient ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.ingredient
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (ingredient_id);


--
-- TOC entry 4837 (class 2606 OID 17622)
-- Name: measurement measurement_pkey; Type: CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.measurement
    ADD CONSTRAINT measurement_pkey PRIMARY KEY (measurement_id);


--
-- TOC entry 4841 (class 2606 OID 17624)
-- Name: menu_item menu_item_pkey; Type: CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.menu_item
    ADD CONSTRAINT menu_item_pkey PRIMARY KEY (menu_item_id);


--
-- TOC entry 4839 (class 2606 OID 17626)
-- Name: menu menu_pkey; Type: CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (menu_id);


--
-- TOC entry 4843 (class 2606 OID 17628)
-- Name: order order_pkey; Type: CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (order_id);


--
-- TOC entry 4845 (class 2606 OID 17630)
-- Name: staff staff_pkey; Type: CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_id);


--
-- TOC entry 4847 (class 2606 OID 17632)
-- Name: staff_role staff_role_pkey; Type: CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.staff_role
    ADD CONSTRAINT staff_role_pkey PRIMARY KEY (staff_role_code);


--
-- TOC entry 4849 (class 2606 OID 17634)
-- Name: table table_pkey; Type: CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public."table"
    ADD CONSTRAINT table_pkey PRIMARY KEY (table_number);


--
-- TOC entry 4850 (class 2606 OID 17635)
-- Name: booking booking_customer_fk; Type: FK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_customer_fk FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 5018 (class 0 OID 0)
-- Dependencies: 4850
-- Name: CONSTRAINT booking_customer_fk ON booking; Type: COMMENT; Schema: public; Owner: developer
--

COMMENT ON CONSTRAINT booking_customer_fk ON public.booking IS 'Clave foránea de la tabla "customer".
ON UPDATE - Se previene la actualización de la ID primara del cliente.
ON DELETE - Se eliminan todas las reservaciones del cliente asociado.';


--
-- TOC entry 4851 (class 2606 OID 17640)
-- Name: booking booking_table_fk; Type: FK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_table_fk FOREIGN KEY (table_number) REFERENCES public."table"(table_number) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 5019 (class 0 OID 0)
-- Dependencies: 4851
-- Name: CONSTRAINT booking_table_fk ON booking; Type: COMMENT; Schema: public; Owner: developer
--

COMMENT ON CONSTRAINT booking_table_fk ON public.booking IS 'Clave foránea de la tabla "table".
ON UPDATE - Se actualiza la nueva tabla asignada.
ON DELETE - Se configura la tabla reservada como NULL.';


--
-- TOC entry 4853 (class 2606 OID 17645)
-- Name: ingredient_measurement ingredient_measurement_ingredient_fk; Type: FK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.ingredient_measurement
    ADD CONSTRAINT ingredient_measurement_ingredient_fk FOREIGN KEY (ingredient_id) REFERENCES public.ingredient(ingredient_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 4853
-- Name: CONSTRAINT ingredient_measurement_ingredient_fk ON ingredient_measurement; Type: COMMENT; Schema: public; Owner: developer
--

COMMENT ON CONSTRAINT ingredient_measurement_ingredient_fk ON public.ingredient_measurement IS 'Clave foránea de la tabla "ingredient".
ON UPDATE - Se actualizan los cambios del ingrediente.
ON DELETE - Se eliminan las mediciones relacionadas al ingrediente.';


--
-- TOC entry 4854 (class 2606 OID 17650)
-- Name: ingredient_measurement ingredient_measurement_measurement_fk; Type: FK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.ingredient_measurement
    ADD CONSTRAINT ingredient_measurement_measurement_fk FOREIGN KEY (measurement_id) REFERENCES public.measurement(measurement_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 5021 (class 0 OID 0)
-- Dependencies: 4854
-- Name: CONSTRAINT ingredient_measurement_measurement_fk ON ingredient_measurement; Type: COMMENT; Schema: public; Owner: developer
--

COMMENT ON CONSTRAINT ingredient_measurement_measurement_fk ON public.ingredient_measurement IS 'Clave foránea de la tabla "measurement".
ON UPDATE - Se actualizan los cambios de la unidad de medida
ON DELETE - Se eliminan los registros relacionados a la unidad de medida.';


--
-- TOC entry 4852 (class 2606 OID 17655)
-- Name: ingredient ingredients_ingredient_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.ingredient
    ADD CONSTRAINT ingredients_ingredient_type_fk FOREIGN KEY (ingredient_type_code) REFERENCES public.ingredient_type(ingredient_type_code) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 5022 (class 0 OID 0)
-- Dependencies: 4852
-- Name: CONSTRAINT ingredients_ingredient_type_fk ON ingredient; Type: COMMENT; Schema: public; Owner: developer
--

COMMENT ON CONSTRAINT ingredients_ingredient_type_fk ON public.ingredient IS 'Clave foránea de la tabla "ingredient_type".
ON UPDATE - Se actualiza el tipo de ingrediente al que pertenece.
ON DELETE - Se previene la eliminación del tipo de ingrediente.';


--
-- TOC entry 4856 (class 2606 OID 17701)
-- Name: menu_item_ingredient menu_item_ingredient_measurement_fk; Type: FK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.menu_item_ingredient
    ADD CONSTRAINT menu_item_ingredient_measurement_fk FOREIGN KEY (measurement_id) REFERENCES public.measurement(measurement_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 5023 (class 0 OID 0)
-- Dependencies: 4856
-- Name: CONSTRAINT menu_item_ingredient_measurement_fk ON menu_item_ingredient; Type: COMMENT; Schema: public; Owner: developer
--

COMMENT ON CONSTRAINT menu_item_ingredient_measurement_fk ON public.menu_item_ingredient IS 'Clave foránea de la tabla "measurement".
ON UPDATE - Se actualiza la unidad de medición a la que referencia.
ON DELETE - Se bloquea la eliminación de la unidad de medición a la que referencia.';


--
-- TOC entry 4857 (class 2606 OID 17660)
-- Name: menu_item_ingredient menu_item_ingredients_ingredients_fk; Type: FK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.menu_item_ingredient
    ADD CONSTRAINT menu_item_ingredients_ingredients_fk FOREIGN KEY (ingredient_id) REFERENCES public.ingredient(ingredient_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 5024 (class 0 OID 0)
-- Dependencies: 4857
-- Name: CONSTRAINT menu_item_ingredients_ingredients_fk ON menu_item_ingredient; Type: COMMENT; Schema: public; Owner: developer
--

COMMENT ON CONSTRAINT menu_item_ingredients_ingredients_fk ON public.menu_item_ingredient IS 'Clave foránea de la tabla "ingredients".
ON UPDATE - Se actualiza la información del ingrediente utilizado.
ON DELETE - Se previene la eliminación del ingrediente utilizado.';


--
-- TOC entry 4858 (class 2606 OID 17665)
-- Name: menu_item_ingredient menu_item_ingredients_menu_item_fk; Type: FK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.menu_item_ingredient
    ADD CONSTRAINT menu_item_ingredients_menu_item_fk FOREIGN KEY (menu_item_id) REFERENCES public.menu_item(menu_item_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 4858
-- Name: CONSTRAINT menu_item_ingredients_menu_item_fk ON menu_item_ingredient; Type: COMMENT; Schema: public; Owner: developer
--

COMMENT ON CONSTRAINT menu_item_ingredients_menu_item_fk ON public.menu_item_ingredient IS 'Clave foránea de la tabla "menu_item".
ON UPDATE - Se actualiza el objeto del menú al que referencia.
ON DELETE - Se elimina el ingrediente del objeto del menú al que referencia.';


--
-- TOC entry 4855 (class 2606 OID 17670)
-- Name: menu_item menu_item_menu_fk; Type: FK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.menu_item
    ADD CONSTRAINT menu_item_menu_fk FOREIGN KEY (menu_id) REFERENCES public.menu(menu_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 4855
-- Name: CONSTRAINT menu_item_menu_fk ON menu_item; Type: COMMENT; Schema: public; Owner: developer
--

COMMENT ON CONSTRAINT menu_item_menu_fk ON public.menu_item IS 'Clave foránea de la tabla "menu".
ON UPDATE - Se actualiza el menú al que pertenece el objeto.
ON DELETE - Se previene la eliminación del menú al que pertenece el objeto.';


--
-- TOC entry 4861 (class 2606 OID 17675)
-- Name: order_menu_item order_menu_item_menu_item_fk; Type: FK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.order_menu_item
    ADD CONSTRAINT order_menu_item_menu_item_fk FOREIGN KEY (menu_item_id) REFERENCES public.menu_item(menu_item_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 4861
-- Name: CONSTRAINT order_menu_item_menu_item_fk ON order_menu_item; Type: COMMENT; Schema: public; Owner: developer
--

COMMENT ON CONSTRAINT order_menu_item_menu_item_fk ON public.order_menu_item IS 'Clave foránea de la tabla "menu_item".
ON UPDATE - Se previenen los cambios al menú de la orden.
ON DELETE - Se previene la eliminación del menú de la orden.';


--
-- TOC entry 4862 (class 2606 OID 17680)
-- Name: order_menu_item order_menu_item_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.order_menu_item
    ADD CONSTRAINT order_menu_item_order_fk FOREIGN KEY (order_id) REFERENCES public."order"(order_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 4862
-- Name: CONSTRAINT order_menu_item_order_fk ON order_menu_item; Type: COMMENT; Schema: public; Owner: developer
--

COMMENT ON CONSTRAINT order_menu_item_order_fk ON public.order_menu_item IS 'Clave foránea de la tabla "order".
ON UPDATE - Se previenen los cambios a los objetos de la orden.
ON DELETE - Se previene la eliminación de objetos en la orden.';


--
-- TOC entry 4859 (class 2606 OID 17685)
-- Name: order order_staff_fk; Type: FK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_staff_fk FOREIGN KEY (staff_id) REFERENCES public.staff(staff_id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 4859
-- Name: CONSTRAINT order_staff_fk ON "order"; Type: COMMENT; Schema: public; Owner: developer
--

COMMENT ON CONSTRAINT order_staff_fk ON public."order" IS 'Clave foránea de la tabla "staff".
ON UPDATE - Se actualiza el personal encargado de la orden.
ON DELETE - Se configura el personal de la orden como NULL.';


--
-- TOC entry 4860 (class 2606 OID 17690)
-- Name: order order_table_fk; Type: FK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_table_fk FOREIGN KEY (table_number) REFERENCES public."table"(table_number) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 4860
-- Name: CONSTRAINT order_table_fk ON "order"; Type: COMMENT; Schema: public; Owner: developer
--

COMMENT ON CONSTRAINT order_table_fk ON public."order" IS 'Clave foránea de la tabla "table".
ON UPDATE - Se previene el cambio de la mesa perteneciente a la orden.
ON DELETE - Se previene la eliminación de la mesa perteneciente a la orden.';


--
-- TOC entry 4863 (class 2606 OID 17695)
-- Name: staff staff_staff_role_fk; Type: FK CONSTRAINT; Schema: public; Owner: developer
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_staff_role_fk FOREIGN KEY (staff_role_code) REFERENCES public.staff_role(staff_role_code) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 4863
-- Name: CONSTRAINT staff_staff_role_fk ON staff; Type: COMMENT; Schema: public; Owner: developer
--

COMMENT ON CONSTRAINT staff_staff_role_fk ON public.staff IS 'Clave foránea de la tabla "staff_role".
ON UPDATE - Se actualiza el rol al que pertenecen los empleados.
ON DELETE - Se remplaza el rol del empleado a NULL.';


--
-- TOC entry 5017 (class 0 OID 0)
-- Dependencies: 5016
-- Name: DATABASE restaurantdb; Type: ACL; Schema: -; Owner: developer
--

REVOKE ALL ON DATABASE restaurantdb FROM developer;
GRANT CREATE,CONNECT ON DATABASE restaurantdb TO developer;
GRANT TEMPORARY ON DATABASE restaurantdb TO developer WITH GRANT OPTION;


-- Completed on 2025-11-06 13:50:19

--
-- PostgreSQL database dump complete
--

\unrestrict fhM7cKfWsvSlfa3YgPSvfBTKHEbwKANPsDpMSegejXCqhCEHdCdhy31dmRAmgzb

