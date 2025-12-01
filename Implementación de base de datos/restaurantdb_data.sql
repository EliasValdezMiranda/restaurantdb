--
-- PostgreSQL database dump
--

\restrict SVckUfcYQma8ZBmpxYIY4bH7VmQ1pxsQYkcW9ZeEcJhseHRKH0wqcwnAslMfOt6

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-11-06 11:42:27

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
-- TOC entry 5000 (class 0 OID 16800)
-- Dependencies: 223
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: developer
--

INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (1, 'Elias', 'Valdez', '6624214504', '6624214504', 'eliasvaldezmiranda14@gmail.com', 'La casa blanca', 'Platino', '$0.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (2, 'Luis', 'García', '5551010', '551234001', 'luis.garcia@email.com', 'Av. Reforma 123', 'Oro', '$0.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (3, 'Ana', 'Martínez', '5551020', '551234002', 'ana.martinez@email.com', 'Calle Hidalgo 45', 'Plata', '$200.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (4, 'Carlos', 'Hernández', '5551030', '551234003', 'carlos.hernandez@email.com', 'Col. Centro 67', 'Regular', '$0.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (5, 'María', 'López', '5551040', '551234004', 'maria.lopez@email.com', 'Av. Juárez 89', 'Oro', '$150.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (6, 'José', 'Pérez', '5551050', '551234005', 'jose.perez@email.com', 'Calle Norte 32', 'Plata', '$0.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (7, 'Laura', 'Sánchez', '5551060', '551234006', 'laura.sanchez@email.com', 'Av. Sur 100', 'Regular', '$50.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (8, 'Miguel', 'Flores', '5551070', '551234007', 'miguel.flores@email.com', 'Calle Morelos 78', 'Oro', '$0.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (9, 'Lucía', 'Torres', '5551080', '551234008', 'lucia.torres@email.com', 'Calle del Sol 21', 'Plata', '$75.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (10, 'Fernando', 'Gómez', '5551090', '551234009', 'fernando.gomez@email.com', 'Av. Insurgentes 56', 'Regular', '$0.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (11, 'Sofía', 'Ramírez', '5551100', '551234010', 'sofia.ramirez@email.com', 'Calle Luna 9', 'Oro', '$0.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (12, 'Raúl', 'Castillo', '5551110', '551234011', 'raul.castillo@email.com', 'Col. Roma 15', 'Regular', '$300.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (13, 'Isabel', 'Mendoza', '5551120', '551234012', 'isabel.mendoza@email.com', 'Calle Jardín 8', 'Plata', '$0.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (14, 'Héctor', 'Ruiz', '5551130', '551234013', 'hector.ruiz@email.com', 'Calle Sur 76', 'Oro', '$0.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (15, 'Claudia', 'Jiménez', '5551140', '551234014', 'claudia.jimenez@email.com', 'Av. Central 44', 'Regular', '$120.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (16, 'Diego', 'Ortiz', '5551150', '551234015', 'diego.ortiz@email.com', 'Calle Pino 5', 'Plata', '$0.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (17, 'Valeria', 'Cruz', '5551160', '551234016', 'valeria.cruz@email.com', 'Col. Juárez 12', 'Oro', '$0.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (18, 'Adrián', 'Navarro', '5551170', '551234017', 'adrian.navarro@email.com', 'Calle Palma 98', 'Plata', '$0.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (19, 'Patricia', 'Reyes', '5551180', '551234018', 'patricia.reyes@email.com', 'Calle del Río 10', 'Regular', '$80.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (20, 'Jorge', 'Domínguez', '5551190', '551234019', 'jorge.dominguez@email.com', 'Col. del Valle 23', 'Oro', '$0.00');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (21, 'Elena', 'Morales', '5551200', '551234020', 'elena.morales@email.com', 'Av. Norte 90', 'Plata', '$0.00');


--
-- TOC entry 5002 (class 0 OID 16831)
-- Dependencies: 225
-- Data for Name: table; Type: TABLE DATA; Schema: public; Owner: developer
--

INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (1, 2, '$150.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (2, 4, '$250.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (3, 6, '$400.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (4, 8, '$600.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (5, 10, '$800.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (6, 2, '$120.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (7, 4, '$220.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (8, 6, '$350.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (9, 8, '$550.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (10, 10, '$700.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (11, 2, '$130.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (12, 4, '$210.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (13, 6, '$360.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (14, 8, '$560.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (15, 10, '$750.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (16, 2, '$140.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (17, 4, '$230.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (18, 6, '$370.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (19, 8, '$580.00');
INSERT INTO public."table" OVERRIDING SYSTEM VALUE VALUES (20, 10, '$770.00');


--
-- TOC entry 4996 (class 0 OID 16690)
-- Dependencies: 219
-- Data for Name: booking; Type: TABLE DATA; Schema: public; Owner: developer
--

INSERT INTO public.booking VALUES ('2025-11-06 19:00:00', 4, 1, 2);
INSERT INTO public.booking VALUES ('2025-11-06 20:00:00', 2, 5, 1);
INSERT INTO public.booking VALUES ('2025-11-07 18:30:00', 6, 6, 3);
INSERT INTO public.booking VALUES ('2025-11-07 21:00:00', 8, 7, 4);
INSERT INTO public.booking VALUES ('2025-11-08 19:15:00', 2, 8, 1);
INSERT INTO public.booking VALUES ('2025-11-08 20:45:00', 10, 9, 5);
INSERT INTO public.booking VALUES ('2025-11-09 17:00:00', 4, 10, 2);
INSERT INTO public.booking VALUES ('2025-11-09 21:00:00', 6, 11, 3);
INSERT INTO public.booking VALUES ('2025-11-10 19:30:00', 2, 12, 1);
INSERT INTO public.booking VALUES ('2025-11-10 20:15:00', 8, 13, 4);
INSERT INTO public.booking VALUES ('2025-11-11 18:00:00', 4, 14, 2);
INSERT INTO public.booking VALUES ('2025-11-11 21:30:00', 6, 15, 3);
INSERT INTO public.booking VALUES ('2025-11-12 19:45:00', 2, 16, 1);
INSERT INTO public.booking VALUES ('2025-11-12 20:00:00', 8, 17, 4);
INSERT INTO public.booking VALUES ('2025-11-13 19:00:00', 10, 18, 5);
INSERT INTO public.booking VALUES ('2025-11-13 21:00:00', 4, 19, 2);
INSERT INTO public.booking VALUES ('2025-11-14 20:30:00', 2, 20, 1);
INSERT INTO public.booking VALUES ('2025-11-14 19:30:00', 6, 21, 3);
INSERT INTO public.booking VALUES ('2025-11-15 18:45:00', 8, 21, 4);
INSERT INTO public.booking VALUES ('2025-11-15 20:00:00', 10, 20, 5);


--
-- TOC entry 5016 (class 0 OID 16951)
-- Dependencies: 239
-- Data for Name: ingredient_type; Type: TABLE DATA; Schema: public; Owner: developer
--

INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (1, 'Vegetales', 'Ingredientes de origen vegetal');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (2, 'Carnes', 'Cortes de carne');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (3, 'Lácteos', 'Productos derivados de la leche');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (4, 'Granos', 'Cereales y legumbres');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (5, 'Frutas', 'Frutas frescas o secas');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (6, 'Bebidas', 'Líquidos para consumo');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (7, 'Especias', 'Condimentos aromáticos');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (8, 'Mariscos', 'Productos del mar');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (9, 'Salsas', 'Preparaciones líquidas o semilíquidas');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (10, 'Panadería', 'Productos horneados');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (11, 'Huevos', 'Productos derivados de huevos de ave');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (12, 'Frutos secos', 'Nueces, almendras, avellanas, etc.');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (13, 'Hierbas', 'Plantas aromáticas utilizadas para sazonar');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (14, 'Endulzantes', 'Sustancias utilizadas para dar sabor dulce');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (15, 'Aceites', 'Grasas empleadas para cocinar, freír o aderezar');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (16, 'Vinagres', 'Líquidos ácidos usados como condimento');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (17, 'Pastas', 'Alimentos elaborados a base de harina y agua');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (18, 'Legumbres', 'Semillas comestibles');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (19, 'Conservas', 'Alimentos preservados y listos para consumo');
INSERT INTO public.ingredient_type OVERRIDING SYSTEM VALUE VALUES (20, 'Suplementos', 'Aportan nutrientes adicionales o funcionales');


--
-- TOC entry 5012 (class 0 OID 16916)
-- Dependencies: 235
-- Data for Name: ingredient; Type: TABLE DATA; Schema: public; Owner: developer
--

INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (1, 'Tomate', 1);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (2, 'Lechuga', 1);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (3, 'Res', 2);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (4, 'Pollo', 2);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (5, 'Queso', 3);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (6, 'Arroz', 4);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (7, 'Manzana', 5);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (8, 'Naranja', 5);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (9, 'Cerveza', 6);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (10, 'Sal', 7);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (11, 'Pimienta', 7);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (12, 'Camarón', 8);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (13, 'Pulpo', 8);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (14, 'Kétchup', 9);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (15, 'Pan', 10);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (16, 'Ajo', 7);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (17, 'Cebolla', 1);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (18, 'Carne molida', 2);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (19, 'Leche', 3);
INSERT INTO public.ingredient OVERRIDING SYSTEM VALUE VALUES (20, 'Aceite de oliva', 15);


--
-- TOC entry 5018 (class 0 OID 17058)
-- Dependencies: 241
-- Data for Name: measurement; Type: TABLE DATA; Schema: public; Owner: developer
--

INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (1, 'Gramo', 'g');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (2, 'Kilogramo', 'kg');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (3, 'Litro', 'l');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (4, 'Mililitro', 'ml');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (5, 'Pieza', 'pz');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (6, 'Cucharada', 'cda');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (7, 'Cucharadita', 'cdta');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (8, 'Taza', 'tz');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (9, 'Rebanada', 'reb');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (10, 'Unidad', 'unid');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (11, 'Porción', 'porc');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (12, 'Botella', 'bot');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (13, 'Lata', 'lat');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (14, 'Vaso', 'vaso');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (15, 'Paquete', 'paq');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (16, 'Racimo', 'rac');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (17, 'Filete', 'fil');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (18, 'Rodaja', 'rod');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (19, 'Cubito', 'cub');
INSERT INTO public.measurement OVERRIDING SYSTEM VALUE VALUES (20, 'Pizca', 'pzc');


--
-- TOC entry 5019 (class 0 OID 17066)
-- Dependencies: 242
-- Data for Name: ingredient_measurement; Type: TABLE DATA; Schema: public; Owner: developer
--

INSERT INTO public.ingredient_measurement VALUES (1, 1);
INSERT INTO public.ingredient_measurement VALUES (1, 2);
INSERT INTO public.ingredient_measurement VALUES (1, 17);
INSERT INTO public.ingredient_measurement VALUES (2, 3);
INSERT INTO public.ingredient_measurement VALUES (2, 4);
INSERT INTO public.ingredient_measurement VALUES (2, 18);
INSERT INTO public.ingredient_measurement VALUES (5, 5);
INSERT INTO public.ingredient_measurement VALUES (4, 19);
INSERT INTO public.ingredient_measurement VALUES (1, 6);
INSERT INTO public.ingredient_measurement VALUES (5, 7);
INSERT INTO public.ingredient_measurement VALUES (5, 8);
INSERT INTO public.ingredient_measurement VALUES (12, 9);
INSERT INTO public.ingredient_measurement VALUES (20, 10);
INSERT INTO public.ingredient_measurement VALUES (20, 11);
INSERT INTO public.ingredient_measurement VALUES (20, 16);
INSERT INTO public.ingredient_measurement VALUES (6, 20);
INSERT INTO public.ingredient_measurement VALUES (5, 12);
INSERT INTO public.ingredient_measurement VALUES (5, 13);
INSERT INTO public.ingredient_measurement VALUES (4, 14);
INSERT INTO public.ingredient_measurement VALUES (5, 15);


--
-- TOC entry 5010 (class 0 OID 16899)
-- Dependencies: 233
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: developer
--

INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (1, '2025-11-01 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (2, '2025-11-02 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (3, '2025-11-03 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (4, '2025-11-04 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (5, '2025-11-05 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (6, '2025-11-06 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (7, '2025-11-07 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (8, '2025-11-08 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (9, '2025-11-09 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (10, '2025-11-10 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (11, '2025-11-11 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (12, '2025-11-12 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (13, '2025-11-13 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (14, '2025-11-14 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (15, '2025-11-15 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (16, '2025-11-16 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (17, '2025-11-17 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (18, '2025-11-18 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (19, '2025-11-19 00:00:00');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (20, '2025-11-20 00:00:00');


--
-- TOC entry 5006 (class 0 OID 16865)
-- Dependencies: 229
-- Data for Name: menu_item; Type: TABLE DATA; Schema: public; Owner: developer
--

INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (1, 'Hamburguesa clásica', '$120.00', 1);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (2, 'Pizza margarita', '$150.00', 1);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (3, 'Ensalada César', '$90.00', 2);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (4, 'Taco de pollo', '$45.00', 2);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (5, 'Sopa de tomate', '$70.00', 3);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (6, 'Filete de res', '$220.00', 3);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (7, 'Pasta Alfredo', '$130.00', 4);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (8, 'Camarones al ajillo', '$180.00', 4);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (9, 'Pulpo a la parrilla', '$250.00', 5);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (10, 'Arroz con leche', '$60.00', 5);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (11, 'Sandwich club', '$110.00', 6);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (12, 'Tostadas de atún', '$100.00', 6);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (13, 'Panini de jamón', '$95.00', 7);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (14, 'Jugo de naranja', '$40.00', 8);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (15, 'Cerveza artesanal', '$70.00', 8);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (16, 'Tarta de manzana', '$85.00', 9);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (17, 'Café espresso', '$35.00', 9);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (18, 'Helado de vainilla', '$50.00', 10);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (19, 'Filete de pescado', '$200.00', 10);
INSERT INTO public.menu_item OVERRIDING SYSTEM VALUE VALUES (20, 'Pizza pepperoni', '$160.00', 11);


--
-- TOC entry 4997 (class 0 OID 16736)
-- Dependencies: 220
-- Data for Name: menu_item_ingredient; Type: TABLE DATA; Schema: public; Owner: developer
--

INSERT INTO public.menu_item_ingredient VALUES (2.00, 1, 1, 10);
INSERT INTO public.menu_item_ingredient VALUES (1.00, 1, 2, 10);
INSERT INTO public.menu_item_ingredient VALUES (3.00, 2, 3, 2);
INSERT INTO public.menu_item_ingredient VALUES (2.00, 2, 4, 15);
INSERT INTO public.menu_item_ingredient VALUES (1.00, 3, 5, 11);
INSERT INTO public.menu_item_ingredient VALUES (2.00, 4, 6, 6);
INSERT INTO public.menu_item_ingredient VALUES (1.00, 5, 7, 11);
INSERT INTO public.menu_item_ingredient VALUES (3.00, 6, 8, 11);
INSERT INTO public.menu_item_ingredient VALUES (2.00, 7, 9, 6);
INSERT INTO public.menu_item_ingredient VALUES (3.00, 8, 10, 20);
INSERT INTO public.menu_item_ingredient VALUES (1.00, 9, 11, 20);
INSERT INTO public.menu_item_ingredient VALUES (1.00, 10, 6, 2);
INSERT INTO public.menu_item_ingredient VALUES (2.00, 11, 1, 10);
INSERT INTO public.menu_item_ingredient VALUES (2.00, 12, 14, 11);
INSERT INTO public.menu_item_ingredient VALUES (2.00, 13, 15, 10);
INSERT INTO public.menu_item_ingredient VALUES (1.00, 14, 10, 20);
INSERT INTO public.menu_item_ingredient VALUES (1.00, 15, 10, 20);
INSERT INTO public.menu_item_ingredient VALUES (1.00, 16, 7, 2);
INSERT INTO public.menu_item_ingredient VALUES (1.00, 17, 19, 14);
INSERT INTO public.menu_item_ingredient VALUES (2.00, 20, 5, 2);


--
-- TOC entry 5014 (class 0 OID 16936)
-- Dependencies: 237
-- Data for Name: staff_role; Type: TABLE DATA; Schema: public; Owner: developer
--

INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (1, 'Mesero');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (2, 'Cocinero');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (3, 'Gerente');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (4, 'Hostess');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (5, 'Cajero');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (6, 'Bartender');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (7, 'Limpieza');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (8, 'Supervisor');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (9, 'Seguridad');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (10, 'Ayudante de cocina');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (11, 'Chef principal');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (12, 'Administrador');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (13, 'Repartidor');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (14, 'Sommelier');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (15, 'Barback');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (16, 'Encargado de turno');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (17, 'Mantenimiento');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (18, 'Lavaloza');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (19, 'Capitán de meseros');
INSERT INTO public.staff_role OVERRIDING SYSTEM VALUE VALUES (20, 'Subgerente');


--
-- TOC entry 5008 (class 0 OID 16882)
-- Dependencies: 231
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: developer
--

INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (1, 'Luis', 'Pérez', 1);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (2, 'Ana', 'González', 2);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (3, 'Carlos', 'Ramírez', 3);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (4, 'María', 'Torres', 4);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (5, 'Jorge', 'Martínez', 5);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (6, 'Laura', 'Sánchez', 6);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (7, 'Miguel', 'Flores', 7);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (8, 'Lucía', 'Gómez', 8);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (9, 'Héctor', 'Reyes', 9);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (10, 'Valeria', 'Ortiz', 10);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (11, 'Fernando', 'Jiménez', 11);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (12, 'Paula', 'Navarro', 12);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (13, 'Sofía', 'Cruz', 13);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (14, 'Raúl', 'Mendoza', 14);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (15, 'Elena', 'Domínguez', 15);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (16, 'Adrián', 'Ruiz', 16);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (17, 'Claudia', 'Morales', 17);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (18, 'Patricia', 'Castillo', 18);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (19, 'Diego', 'Luna', 19);
INSERT INTO public.staff OVERRIDING SYSTEM VALUE VALUES (20, 'Ricardo', 'Vega', 20);


--
-- TOC entry 5004 (class 0 OID 16848)
-- Dependencies: 227
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: developer
--

INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (1, '2025-11-05 19:10:00', 1, 1);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (2, '2025-11-05 20:10:00', 2, 2);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (3, '2025-11-06 18:45:00', 3, 3);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (4, '2025-11-06 21:05:00', 4, 4);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (5, '2025-11-07 19:25:00', 5, 5);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (6, '2025-11-07 21:00:00', 6, 6);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (7, '2025-11-08 19:15:00', 7, 7);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (8, '2025-11-08 21:10:00', 8, 8);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (9, '2025-11-09 19:40:00', 9, 9);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (10, '2025-11-09 20:20:00', 10, 10);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (11, '2025-11-10 18:30:00', 11, 11);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (12, '2025-11-10 21:15:00', 12, 12);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (13, '2025-11-11 19:50:00', 13, 13);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (14, '2025-11-11 20:10:00', 14, 14);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (15, '2025-11-12 19:05:00', 15, 15);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (16, '2025-11-12 21:05:00', 16, 16);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (17, '2025-11-13 20:20:00', 17, 17);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (18, '2025-11-13 19:40:00', 18, 18);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (19, '2025-11-14 18:55:00', 19, 19);
INSERT INTO public."order" OVERRIDING SYSTEM VALUE VALUES (20, '2025-11-14 20:05:00', 20, 20);


--
-- TOC entry 4998 (class 0 OID 16749)
-- Dependencies: 221
-- Data for Name: order_menu_item; Type: TABLE DATA; Schema: public; Owner: developer
--

INSERT INTO public.order_menu_item VALUES (2, 'Sin cebolla', 1, 1);
INSERT INTO public.order_menu_item VALUES (1, 'Extra queso', 2, 2);
INSERT INTO public.order_menu_item VALUES (3, 'Bien cocido', 3, 3);
INSERT INTO public.order_menu_item VALUES (2, 'Sin sal', 4, 4);
INSERT INTO public.order_menu_item VALUES (1, 'Agregar picante', 5, 5);
INSERT INTO public.order_menu_item VALUES (2, 'Corte medio', 6, 6);
INSERT INTO public.order_menu_item VALUES (1, 'Sin tomate', 7, 7);
INSERT INTO public.order_menu_item VALUES (2, 'Extra aderezo', 8, 8);
INSERT INTO public.order_menu_item VALUES (1, 'Sin ajo', 9, 9);
INSERT INTO public.order_menu_item VALUES (1, 'Doble queso', 10, 10);
INSERT INTO public.order_menu_item VALUES (2, 'Con extra arroz', 11, 11);
INSERT INTO public.order_menu_item VALUES (3, 'Agregar salsa', 12, 12);
INSERT INTO public.order_menu_item VALUES (1, 'Helado aparte', 13, 13);
INSERT INTO public.order_menu_item VALUES (1, 'Servir caliente', 14, 14);
INSERT INTO public.order_menu_item VALUES (2, 'Sin azúcar', 15, 15);
INSERT INTO public.order_menu_item VALUES (1, 'Extra pepperoni', 16, 16);
INSERT INTO public.order_menu_item VALUES (2, 'Pan tostado', 17, 17);
INSERT INTO public.order_menu_item VALUES (3, 'Cerveza fría', 18, 18);
INSERT INTO public.order_menu_item VALUES (1, 'Agregar limón', 19, 19);
INSERT INTO public.order_menu_item VALUES (2, 'Sin sal', 20, 20);


--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 222
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: developer
--

SELECT pg_catalog.setval('public.customer_customer_id_seq', 21, true);


--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 238
-- Name: ingredient_type_ingredient_type_code_seq; Type: SEQUENCE SET; Schema: public; Owner: developer
--

SELECT pg_catalog.setval('public.ingredient_type_ingredient_type_code_seq', 20, true);


--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 234
-- Name: ingredients_ingredient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: developer
--

SELECT pg_catalog.setval('public.ingredients_ingredient_id_seq', 20, true);


--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 240
-- Name: measurement_measurement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: developer
--

SELECT pg_catalog.setval('public.measurement_measurement_id_seq', 20, true);


--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 228
-- Name: menu_item_menu_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: developer
--

SELECT pg_catalog.setval('public.menu_item_menu_item_id_seq', 20, true);


--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 232
-- Name: menu_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: developer
--

SELECT pg_catalog.setval('public.menu_menu_id_seq', 20, true);


--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 226
-- Name: order_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: developer
--

SELECT pg_catalog.setval('public.order_order_id_seq', 20, true);


--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 236
-- Name: staff_role_staff_role_code_seq; Type: SEQUENCE SET; Schema: public; Owner: developer
--

SELECT pg_catalog.setval('public.staff_role_staff_role_code_seq', 20, true);


--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 230
-- Name: staff_staff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: developer
--

SELECT pg_catalog.setval('public.staff_staff_id_seq', 20, true);


--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 224
-- Name: table_table_number_seq; Type: SEQUENCE SET; Schema: public; Owner: developer
--

SELECT pg_catalog.setval('public.table_table_number_seq', 20, true);


-- Completed on 2025-11-06 11:42:27

--
-- PostgreSQL database dump complete
--

\unrestrict SVckUfcYQma8ZBmpxYIY4bH7VmQ1pxsQYkcW9ZeEcJhseHRKH0wqcwnAslMfOt6

