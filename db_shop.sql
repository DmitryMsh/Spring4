--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-10 21:48:10 MSK

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- TOC entry 215 (class 1259 OID 16614)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16613)
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.category ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 16620)
-- Name: image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);


ALTER TABLE public.image OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16619)
-- Name: image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.image ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16626)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp without time zone,
    number character varying(255),
    price real NOT NULL,
    status integer,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16625)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 16632)
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(50),
    password character varying(255),
    role character varying(255)
);


ALTER TABLE public.person OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16631)
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.person ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 16640)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    date_time_of_created timestamp without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16649)
-- Name: product_cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);


ALTER TABLE public.product_cart OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16648)
-- Name: product_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_cart ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.product_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 16639)
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3650 (class 0 OID 16614)
-- Dependencies: 215
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.category (id, name) VALUES (1, '????????????');
INSERT INTO public.category (id, name) VALUES (2, '????????????');
INSERT INTO public.category (id, name) VALUES (3, '?????????????? ??????????????');


--
-- TOC entry 3652 (class 0 OID 16620)
-- Dependencies: 217
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.image (id, file_name, product_id) VALUES (1, 'd43bf747-3279-4567-92fe-387387fdfaf2.verstak_wt160_1.jpeg', 1);
INSERT INTO public.image (id, file_name, product_id) VALUES (2, '8c2181c1-0290-496a-928e-62efd7eed15e.verstak_wt160_2.jpeg', 1);
INSERT INTO public.image (id, file_name, product_id) VALUES (3, '8437f124-50fb-48dc-bebe-20c754b3d13d.verstak_wt160_3.jpeg', 1);
INSERT INTO public.image (id, file_name, product_id) VALUES (4, 'e737fe84-9091-4b60-9f2c-b35403394b52.verstak_wt160_4.jpeg', 1);
INSERT INTO public.image (id, file_name, product_id) VALUES (5, 'b4cd104b-58bc-4645-9c5c-e8c3e2a18897.verstak_wt160_5.jpeg', 1);
INSERT INTO public.image (id, file_name, product_id) VALUES (6, '7d6f9bab-5445-4756-8f5d-e9ad31ffd2ca.1.jpg', 2);
INSERT INTO public.image (id, file_name, product_id) VALUES (7, 'bdd6aa9c-a6ee-45c9-8437-0d7b9b823bcd.2.jpg', 2);
INSERT INTO public.image (id, file_name, product_id) VALUES (8, '1108964d-dcc6-4c67-9468-ecede44276c1.3.jpg', 2);
INSERT INTO public.image (id, file_name, product_id) VALUES (9, '6d720a6a-0929-438a-b1a9-ad058bd2d7e8.4.jpg', 2);
INSERT INTO public.image (id, file_name, product_id) VALUES (10, 'f60e3861-4a37-4d3d-9044-ab6e1fdaa1a5.5.jpg', 2);
INSERT INTO public.image (id, file_name, product_id) VALUES (11, 'e43ee13c-a753-4f08-930d-91355f324eb5.stol1.jpeg', 3);
INSERT INTO public.image (id, file_name, product_id) VALUES (12, '5c902b0f-75ef-41bd-8c68-e38f0ff06580.stol2.jpg', 3);
INSERT INTO public.image (id, file_name, product_id) VALUES (13, '581921fd-8251-48b6-8566-d6e548baec60.stol3.jpg', 3);
INSERT INTO public.image (id, file_name, product_id) VALUES (14, 'a88ee2f3-1d56-4cb5-8af5-25a3f11c8222.stol4.jpg', 3);
INSERT INTO public.image (id, file_name, product_id) VALUES (15, '859332da-1fda-4260-a546-956564b18c51.stol5.jpg', 3);
INSERT INTO public.image (id, file_name, product_id) VALUES (16, '05d12616-5455-40a9-9757-d4ab81af6011.jeans1.jpg', 4);
INSERT INTO public.image (id, file_name, product_id) VALUES (17, 'e2e3e16d-2c6f-456c-a892-f5ee8bdb8ad2.jeans2.jpg', 4);
INSERT INTO public.image (id, file_name, product_id) VALUES (18, 'e154520f-d25d-475a-9cea-120b07fe9913.jeans3.jpg', 4);
INSERT INTO public.image (id, file_name, product_id) VALUES (19, '42647570-c0bd-4aa9-b931-2997a99e57de.jeans4.jpg', 4);
INSERT INTO public.image (id, file_name, product_id) VALUES (20, '1e8df3dd-e90c-4ad6-b37b-61c5fed70fcc.jeans5.jpg', 4);
INSERT INTO public.image (id, file_name, product_id) VALUES (21, '494f95cf-03a2-4562-a412-59aba5988d58.tshirt1 .webp', 5);
INSERT INTO public.image (id, file_name, product_id) VALUES (22, '95077b3e-9915-4537-8a5b-5cb4f389a012.tshirt2.jpg', 5);
INSERT INTO public.image (id, file_name, product_id) VALUES (23, 'ed93c3e9-2a60-4202-928b-c9d96cdeb12d.tshirt3.jpg', 5);
INSERT INTO public.image (id, file_name, product_id) VALUES (24, 'd00edad0-2b7f-48ab-9ada-dadbdfb976b1.tshirt4.jpg', 5);
INSERT INTO public.image (id, file_name, product_id) VALUES (25, '5f22dc65-ac44-4a45-adcc-b2ab26a9366d.tshirt5.jpg', 5);
INSERT INTO public.image (id, file_name, product_id) VALUES (26, '511f704e-5325-4a2b-b583-b23e2cb2a6b8.kurtk1.jpg', 6);
INSERT INTO public.image (id, file_name, product_id) VALUES (27, '5fa7e795-6eec-46f0-9906-56db523fe037.rurtk2.jpg', 6);
INSERT INTO public.image (id, file_name, product_id) VALUES (28, '5333fb27-c814-446c-a59c-cc7eecb297ef.kurtk3.jpg', 6);
INSERT INTO public.image (id, file_name, product_id) VALUES (29, 'd3fe31c2-1f2d-4116-96af-fd7f9779c98b.rurtk4.jpg', 6);
INSERT INTO public.image (id, file_name, product_id) VALUES (30, '885d57db-676f-4303-86c1-c6d2bce39605.kurtk5.jpg', 6);
INSERT INTO public.image (id, file_name, product_id) VALUES (31, 'c7023368-23db-428a-8e49-3b9f718f8057.coffee_1.jpeg', 7);
INSERT INTO public.image (id, file_name, product_id) VALUES (32, '9c3acdeb-5362-4d83-9904-d118ffb17f37.coffee_2.jpeg', 7);
INSERT INTO public.image (id, file_name, product_id) VALUES (33, '47df9960-d4a2-4cb6-9127-f421b4f16c17.coffee_3.jpeg', 7);
INSERT INTO public.image (id, file_name, product_id) VALUES (34, 'c8baf667-530e-47e2-9e4f-8caaeaf7e5ff.coffee_4.jpeg', 7);
INSERT INTO public.image (id, file_name, product_id) VALUES (35, '19d6895c-0d17-4ed5-a58c-765c039fd2d7.coffee_5.jpeg', 7);
INSERT INTO public.image (id, file_name, product_id) VALUES (36, '44d5bcb2-c230-4505-808a-5c72f7b40c93.coff_1.jpeg', 8);
INSERT INTO public.image (id, file_name, product_id) VALUES (37, '034873ed-df69-4ec3-a47a-c25e10164763.coff_2.jpeg', 8);
INSERT INTO public.image (id, file_name, product_id) VALUES (38, '7c21234d-9436-4d56-a51e-cdce100cf7fe.coff_3.jpeg', 8);
INSERT INTO public.image (id, file_name, product_id) VALUES (39, 'ced6b864-f1e6-43c6-98ed-685288f68039.coff_4.jpeg', 8);
INSERT INTO public.image (id, file_name, product_id) VALUES (40, '3cd56707-420d-478f-8654-32a0621ca16c.coff_5.jpeg', 8);


--
-- TOC entry 3654 (class 0 OID 16626)
-- Dependencies: 219
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders (id, count, date_time, number, price, status, person_id, product_id) VALUES (1, 1, '2022-12-10 21:23:33.877415', '6894c75c-9082-4938-b098-31634f02bd81', 25420, 1, 2, 1);


--
-- TOC entry 3656 (class 0 OID 16632)
-- Dependencies: 221
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person (id, login, password, role) VALUES (2, 'User12345', '$2a$10$iwuYefjraLOzX81ChLHD6.3zARuDtJSrjMs07KbNQtcYnOIGGk4qG', 'ROLE_USER');
INSERT INTO public.person (id, login, password, role) VALUES (1, 'Admin12345', '$2a$10$T07K.8HRju/lq9.Pr7/l7OkDkFp1EPTpUAu52dokpM6r8q.E7fmOS', 'ROLE_ADMIN');


--
-- TOC entry 3658 (class 0 OID 16640)
-- Dependencies: 223
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (1, '2022-12-10 21:02:14.827719', '???????????????????????? ?????? ?????????????? ?????????????????????? ???????????????? ?????????? ?? ???????????????? ?????????????????? ??????????????????, ????????????????????????, ?????????????? ?? ?????????????????????????? ????????????????????????, ?????????????? ?????????????? ???????????????? ?? ???????????????? ?????????????????? ?????????????????? ?????? ??????????????.', 25420, '??????????????', '?????????????? ?????????????? Profi WT160', '??????????', 1);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (2, '2022-12-10 21:03:54.411992', '?????????????? (??????????): 60??25,6??75 ???????????? ???????????????? ???????????? ???????????? ???????????????????? ???????????????? ?????? ???????????????? ???????????????? ?????????? ?? ????????????????, ???????????? ?????????????? ?? ?????????????? ?? ?????????? ????????. ???????????????? ???????????????????????? ???????????? ???????????? - ???? ???????????????????? ??????????????, ?????????????????????? ???????????????????? ?????????????????? ???????????????????? ???????????? ???????? ???????????????? ???????? ?????????????????? ????????????????, ?????????????? ?????????? ???????????????? ?????? ???????????????? ??????????????, ?????????????? ?? ?????????????? ??????????. ?????????????????? ?????????????????????????? ??????????????, ?????????????????????????????? ?? ???????????????????? ???????????????? ???????????????? ???????????????? ?????? ?????????? ?????????????? ???????????????? ?????? ???????????????? ???????????? ???????????? ??????????. ???????????????? ?? ???????????????? ?????? ?????? ???? ?????? ????????????????, ?????????????????? ???????????????? ?????????????????????????? ???????????????? ?????? ????????????????????, ?????????????? ???????????? ?????????????????????? ?????? ???????????????? ??????????????, ????????????, ????????????????, ??????????, ???????????? ?????? ?????????????????? ???? ?????????? ???? ????????????. ?? ???????????????? ?????????????????? ?????????????????????? ????, ?????????? ?????????????????? ?????????????? ?????? ??????????, ???????????????? ????????. ???????????????? ??????????, ?????? ?? ???????????? ?????????? ?????????? ?????? ?????????????????? ?????????? ?????? ?????????? ?? ???????????????? ?????????? ???????????????????????? ???? 9 ?????? ??????????. ???????????????? ?????? ?????????? ?????????????? ???? ?????????????????????????????????? ?? ???????????????????????????????????? ????????, ?????????????? ?????? ?????????????????? ?????? ???? ???????? ??????. ?????????????? ?????????? ?????? ?????????? ?????????? ?? ???????????????? ????????????????. ?? ???????????? ?????????????????????? ?????????????????? ???????????????????? ???? ????????????. ???????????????????? ?????????????? ???????????????? (??????????) 60??25,6??75 ????. ?????? ???? ???????????????????? ???????????? ???????? ???????????? ???????????? ??????????????????????: ?????????????? ???????????? ?????????????? 73452816, ???????????????? ???????? ?????????????? 73474145, ?????????????? ????????????-2 ?????????????? 112396129.', 2520, '?????????????????????? - ?????????????? ????????????', '?????????????????????? ???????????????? ???????????? ??????, ?????????? ?????? ??????????', '????????????????', 1);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (3, '2022-12-10 21:05:17.553662', '?????????????? (??????????): 100??38,6??74,6 ???? ???????????????????????? ???????? ???????? ???????????????????? ?????????? ??????????????????????????????????, ?????????????? ???????????????? ?? ?????????????? ?????????????? ??????????????????. ?????? ???????? ???????????????? ?? ???????? ???????????? ?????????????? ?????? ???????? ???????????????? ?????????? ?? ?????????? ?????????????? ???????????? ????????. ?????????? ???????????????????????????? ?????? ??????????????, ???????????????????????? ???????????? ?????? ?????????? ?? ???????????? ?????? ?? ?????????????? ?? ???????????????????????? ?????? ?????? ?????????????? ????????. ???? ???????????? ???????????????????? ???? ???????? ?????????????????? ?? ???????????????????????? ?????? ?????????????????? ???????????? ?? ??????????????. ?? ???????????????? ?????????????? ?????????? ???????????????? ???? ???????????? ?????????????? ?????????? ?? ??????????????, ???? ?? ?????????????????? ???????????? ?????? ????????. ?????? ???? ???????? ?????????????? ???????????????? ?? ?????????? ???????? ?? ???????????? ?????????????? ?????????????? ???????????? ?????? ????????????????????. ???????????? ???????????????? ?????????????????????? ??????????????, ?????????????? ?????????????????? ?????? ?? ???????????? ?????????????? ???????????????????? ??????????????. ?????? ?????????? ???????????????????????? ??????????????????????????????????, ???????????????????????????????????? ????????, ?????????????? ???????? ???????????? ?????????????????? ?????? ???? ???????? ??????. ?? ???????????? ?????????????????????? ?????????????????? ???????????????????? ???? ????????????.', 3000, '?????????????????????? - ?????????????? ????????????', '?????????????????????? ???????? ???????????????????? ???????? ??????, ????????????????????????', '????????????????', 1);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (4, '2022-12-10 21:07:45.028734', '???????????? ???????????????????? ???? ???????? ?? ?????????? - ?????????????????????? ???????? ???????????????????????? ?????????????? ???????????????? ???????????????? ??????????????????. ?????????????? ?? ???????????????????????????? - ?????? ?????????? ?????????? ???????????????????????? ?? ???????????????? ?????????????? ????????????, ?????? ????????, ?????? ????????????, ?????? ????????. ???????????????????????? ?????????????? ?????????????????? ???????? ??????????????: ??????????, ????????????, ??????????????????, ????????????????, slim, ????????????, ????????????????????. ???????????? ?????????????????????????? ???????????????????? ???????????? ?? ?????????????????? ?? ???????? ???????????????????????? ???????????? ???? ?????????????? ?? ?????????????? ????????????????. ?? ?????????????????? ???????????? EREMES ???????????????????????? ?????????? ?????????????? ???????????? ?????? ???????????? ???????????????? ?????????? ( ???? 190 ????), ?????????????? ???????????????????? ?? ????????????????, ????????????????????, ????????, ???????????????? ?? ????????????????????. ???????????? ???????????? ?????????????????????????? ?????????????? ????????, ???????????????? ???????????? ?? ?????????????????? ????????????????, ?????????????????? ?????????????? ??????????, ?????????? ???? ??????????????????, ?????? ??????????. ?????????????????? ?????????????? ???????????????????? ???? ???????? ???????????? ?????????? ?? ???????????? ????????????. ?????????? ???????????????? ?????????????????????? ?????????????? ???????????????? ?? ?????????????? ?????????????????? ????????????????????. ?? ?????? ???????????? ???????????? ???????????????????? ?? ????????????????. ?????????????? ?????????? ?????????????????? ???????????? ?? ???????????? ????????????. ?????????????? ???????????????? ?????????? ????????. ???????????????? ???????????? ?????????????? ???????????? ?????????????? ?????????? ???????????????? ?????????? ?????? ?????????????????? ?????????????? ???????????? ?????? ?????????????????? ???????????? ???????????????????? ?????????? ?? ?????????????????? ?????? ?????????????????? ???????????? ?????????? ???????? casual ???????????? ???????? ???? ???????????????? ???????????? skinny ?? ???????????????????????? ?????????????????? ???????????????? ???????????? ?????????????? ?????????? ???????????????????? ???????? ?????????????? ???????????? ???????????????? ???? ?????????? ?????????????? ???????????????? ???????????? ??????????', 1450, 'EREMES', 'Eremes ???????????? ?????????????? ???????????? ????????????????????????', '????????????????', 2);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (5, '2022-12-10 21:09:59.890089', '???????????????? ?????????????? ???????????? ???????????????????? ???????????????????? ?????????????? ???????????? ?????????????????? ?????????????? ?? ???????????????? ??????????????. ???????????????? ?????????????????? ???????????????? ?????????????????????????? ???????? - ?????? ???????? ??????????????, ?????????????? ???????????????? ?? ????????????????, ?? ????????????????. ????????????: ???????????? 100% ?????????????????? 180 ????/???? ??. ???????????????????? ?????????????? ?? ?????????????? ???????????????? ?????????????????? ???? ?????????????? ?????????????????? ?????????? ?? ?????????? ?????????????? ?????????? ??????????????????. ???????????????????? ???????????????? ???????????????? ?????? ????????????, ?????????????? ?? ?????????????? ??????????????: ??????????????, ????????, ???????? ?? ???????????????????? ?? ????????. ?? ?????? ?????????? ?????????????????????? ???? ???????????????? ?? ??????????. ?????????????? ???????????????? ?????????????????????? ?? ???????????????? ?????????? ?? ?????????????? ??????????. ???? ?????????? ???????????? ???????? ?????? ???????????? ?? ?????????? ?? ???? ???????????? ?? ???????? ?????? ????????????. ?????????????????????? ???????????????? ???????????????????? ?????? ?????????? ??????????. ?????? ???????????????? ?????????????? ?????????? ?? ?????????? ?????????????????? ???????????????????? ???? ?????????? ???????????? ?? ?????????? ??????????????????, ?? ?????? ?????????? ?? ?????????? ????????????????. ???????????????? ???????????????? ???????????????? ???????????? ?? ???????????????? ???????????? ?????????? - ?????????????? ?? ??????????????????. ???? ?????????? ???????????? ???????????????? ?? ??????????????????. ?? ???????????????????????? ?????????????? ?????????? ?????????? ????????????. ???? ???????????? ???????????????? ???? ???? ???????? ???????????????? ???????????????? ????????, ????????, ?????????? ?????? ????????. ?? ?????? ???????? ?????????? ?? ????????????????????, ???? ???????????? ???????????? ???????? ???????????? ?? ?????????????? ???? ??????????????!', 338, 'UZcotton', 'UZcotton ???????????????? ?????????????? ???????????? ???????????????????? ???????????????????? ', '????????????????', 2);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (6, '2022-12-10 21:11:49.66702', '?????????????? ???????????????????? ???????????? ?????? ???????????????????? ?? ???????????????????? ????????????. ???????????????????? ???????????? ?????????????????? ?????????????????? ?????????????????? ???? ?????????????????? ?? ??????????????. ???????????????? ???? ???????????? ?? ???????????????? ?????????????????????? ??????????????. ?????????????????????? ?????????????????????? ????????.', 11249, '??????????????????????', 'adidas ????????????', '????????????????', 2);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (7, '2022-12-10 21:13:22.815202', '3 ?? 1 ???????????????????????????????????????? ???????????????????? ?????????????????? ???????????????????? ?? ?????????????????? Nespresso ?? Dolce-Gusto, ?????????? ???????????????? ?? ?????????????? ????????. **????????????????: 20 ??????. ???????????????????? ???????????? - ???????????????? ?????? ????????????????.** ?????????????????????? ???????????????? ?????????????????? ?? ?????????????? ?????????? ????????. ???????????? ???? ??????????????????. ?????????????? ?????????????? ?????? ????????????. ?????????????? ???????????? ?????? ???????????????? ????????.?????????????? ?????????????????? ?????? ???????? 0,80 ??. ?????????????????????? ???????????? ????????????????????. ?????????????????? ????????????. ???????????? ???? ?????????????????????? ??????????. ?????????????????????????? ??????????. ????????????????: 1450 ????. ????????????????????: 220-240 ????.', 8084, '??????????????????????', '?????????????????? POLARIS PCM 2020 3-in-1', '??????????', 3);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (8, '2022-12-10 21:15:02.942024', '?????????????????????????? ?????????????????????????????? ???????????? ????????, ???? ???????????? ???? ???????????????????????? ????????, ?? ???????????????????? De''Longhi Magnifica Evo. ?????????????????????? ?????????????????? ???????????????? ???? ???????????????????????? ?????????? ???? ???????????? ???? 4 ????????????????, ?????????????????? ?????????? ???????????????? ????????????. ?????????? ???????????????????? ???????????????? ?????????????????? ?????????????? ?? ???????????????? ???????????????? ?????? ?????????????? ??????????????. ?????? ???????????????? ???????????? ?????????????? ???????????? ?????????????????? ?????????????????????? ?????????? ?????????????????????? ??????????.', 38499, '????????????????????', 'Delonghi/???????????????????? ECAM290.22.B', '??????????', 3);


--
-- TOC entry 3660 (class 0 OID 16649)
-- Dependencies: 225
-- Data for Name: product_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3666 (class 0 OID 0)
-- Dependencies: 214
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 3, true);


--
-- TOC entry 3667 (class 0 OID 0)
-- Dependencies: 216
-- Name: image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.image_id_seq', 40, true);


--
-- TOC entry 3668 (class 0 OID 0)
-- Dependencies: 218
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, true);


--
-- TOC entry 3669 (class 0 OID 0)
-- Dependencies: 220
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_id_seq', 2, true);


--
-- TOC entry 3670 (class 0 OID 0)
-- Dependencies: 224
-- Name: product_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_cart_id_seq', 2, true);


--
-- TOC entry 3671 (class 0 OID 0)
-- Dependencies: 222
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 8, true);


--
-- TOC entry 3488 (class 2606 OID 16618)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- TOC entry 3490 (class 2606 OID 16624)
-- Name: image image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);


--
-- TOC entry 3492 (class 2606 OID 16630)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3494 (class 2606 OID 16638)
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- TOC entry 3500 (class 2606 OID 16653)
-- Name: product_cart product_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);


--
-- TOC entry 3496 (class 2606 OID 16647)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 3498 (class 2606 OID 16655)
-- Name: product uk_qka6vxqdy1dprtqnx9trdd47c; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);


--
-- TOC entry 3502 (class 2606 OID 16661)
-- Name: orders fk1b0m4muwx1t377w9if3w6wwqn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);


--
-- TOC entry 3504 (class 2606 OID 16671)
-- Name: product fk1mtsbur82frn64de7balymq9s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);


--
-- TOC entry 3503 (class 2606 OID 16666)
-- Name: orders fk787ibr3guwp6xobrpbofnv7le; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- TOC entry 3501 (class 2606 OID 16656)
-- Name: image fkgpextbyee3uk9u6o2381m7ft1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- TOC entry 3505 (class 2606 OID 16681)
-- Name: product_cart fkhpnrxdy3jhujameyod08ilvvw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- TOC entry 3506 (class 2606 OID 16676)
-- Name: product_cart fksgnkc1ko2i1o9yr2p63ysq3rn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);


-- Completed on 2022-12-10 21:48:10 MSK

--
-- PostgreSQL database dump complete
--

