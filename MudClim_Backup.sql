PGDMP  -                
    |            climatechange    16.4    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    climatechange    DATABASE     �   CREATE DATABASE climatechange WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE climatechange;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16454    datasus    TABLE        CREATE TABLE public.datasus (
    id integer NOT NULL,
    uf character(6),
    ano numeric(4,0),
    mes numeric(2,0),
    cep numeric(8,0),
    cod_munici numeric(7,0),
    sexo character(1),
    idade integer,
    diag_princ character(4),
    diag_sec character(4),
    dt_inter character(8),
    dt_saida character(8),
    val_sh numeric(13,2),
    val_sp numeric(13,2),
    val_sadt numeric(13,2),
    val_uti numeric(8,2),
    us_tot numeric(10,2),
    val_tot numeric(14,2),
    dias_perm numeric(5,0)
);
    DROP TABLE public.datasus;
       public         heap    postgres    false    4            �            1259    16453    datasus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datasus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.datasus_id_seq;
       public          postgres    false    4    218            �           0    0    datasus_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.datasus_id_seq OWNED BY public.datasus.id;
          public          postgres    false    217            �            1259    16447    iema    TABLE     �  CREATE TABLE public.iema (
    id integer NOT NULL,
    cod_munic numeric(7,0),
    ano numeric(4,0),
    mes numeric(2,0),
    dia numeric(2,0),
    nome_est character(20),
    num_est character(5),
    co numeric(4,2),
    mp10 numeric(4,2),
    mp25 numeric(4,2),
    n_o numeric(4,2),
    no2 numeric(4,2),
    o3 numeric(5,2),
    so2 numeric(4,2),
    fmc numeric(6,2),
    pts numeric(6,2),
    lati numeric(9,6),
    long numeric(9,6)
);
    DROP TABLE public.iema;
       public         heap    postgres    false    4            �            1259    16446    iema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.iema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.iema_id_seq;
       public          postgres    false    216    4            �           0    0    iema_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.iema_id_seq OWNED BY public.iema.id;
          public          postgres    false    215            �            1259    16468    inmet    TABLE     �  CREATE TABLE public.inmet (
    id integer NOT NULL,
    cod_munic numeric(7,0),
    ano numeric(4,0),
    mes numeric(2,0),
    temp_min numeric(5,2),
    temp_med numeric(5,2),
    temp_max numeric(5,2),
    vel_vento numeric(5,2),
    dir_vento numeric(5,2),
    raj_vento numeric(5,2),
    ur_ar numeric(5,2),
    chuva numeric(6,2),
    ps_atm numeric(7,2),
    ins numeric(6,2),
    ndc numeric(2,0)
);
    DROP TABLE public.inmet;
       public         heap    postgres    false    4            �            1259    16467    inmet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inmet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.inmet_id_seq;
       public          postgres    false    220    4            �           0    0    inmet_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.inmet_id_seq OWNED BY public.inmet.id;
          public          postgres    false    219            �            1259    16475 
   municipios    TABLE     �   CREATE TABLE public.municipios (
    cod_munic integer NOT NULL,
    uf character(2),
    lati numeric(9,6),
    long numeric(9,6),
    pop_2000 numeric(9,0),
    pop_2010 numeric(9,0),
    pop_2021 numeric(9,0)
);
    DROP TABLE public.municipios;
       public         heap    postgres    false    4            )           2604    16457 
   datasus id    DEFAULT     h   ALTER TABLE ONLY public.datasus ALTER COLUMN id SET DEFAULT nextval('public.datasus_id_seq'::regclass);
 9   ALTER TABLE public.datasus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            (           2604    16450    iema id    DEFAULT     b   ALTER TABLE ONLY public.iema ALTER COLUMN id SET DEFAULT nextval('public.iema_id_seq'::regclass);
 6   ALTER TABLE public.iema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            *           2604    16471    inmet id    DEFAULT     d   ALTER TABLE ONLY public.inmet ALTER COLUMN id SET DEFAULT nextval('public.inmet_id_seq'::regclass);
 7   ALTER TABLE public.inmet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �          0    16454    datasus 
   TABLE DATA           �   COPY public.datasus (id, uf, ano, mes, cep, cod_munici, sexo, idade, diag_princ, diag_sec, dt_inter, dt_saida, val_sh, val_sp, val_sadt, val_uti, us_tot, val_tot, dias_perm) FROM stdin;
    public          postgres    false    218   �"       �          0    16447    iema 
   TABLE DATA           �   COPY public.iema (id, cod_munic, ano, mes, dia, nome_est, num_est, co, mp10, mp25, n_o, no2, o3, so2, fmc, pts, lati, long) FROM stdin;
    public          postgres    false    216   �"       �          0    16468    inmet 
   TABLE DATA           �   COPY public.inmet (id, cod_munic, ano, mes, temp_min, temp_med, temp_max, vel_vento, dir_vento, raj_vento, ur_ar, chuva, ps_atm, ins, ndc) FROM stdin;
    public          postgres    false    220   �"       �          0    16475 
   municipios 
   TABLE DATA           ]   COPY public.municipios (cod_munic, uf, lati, long, pop_2000, pop_2010, pop_2021) FROM stdin;
    public          postgres    false    221   #       �           0    0    datasus_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.datasus_id_seq', 1, false);
          public          postgres    false    217            �           0    0    iema_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.iema_id_seq', 1, false);
          public          postgres    false    215            �           0    0    inmet_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.inmet_id_seq', 1, false);
          public          postgres    false    219            .           2606    16459    datasus datasus_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.datasus
    ADD CONSTRAINT datasus_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.datasus DROP CONSTRAINT datasus_pkey;
       public            postgres    false    218            ,           2606    16452    iema iema_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.iema
    ADD CONSTRAINT iema_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.iema DROP CONSTRAINT iema_pkey;
       public            postgres    false    216            0           2606    16473    inmet inmet_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.inmet
    ADD CONSTRAINT inmet_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.inmet DROP CONSTRAINT inmet_pkey;
       public            postgres    false    220            2           2606    16479    municipios municipios_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.municipios
    ADD CONSTRAINT municipios_pkey PRIMARY KEY (cod_munic);
 D   ALTER TABLE ONLY public.municipios DROP CONSTRAINT municipios_pkey;
       public            postgres    false    221            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     