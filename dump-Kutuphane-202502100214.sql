PGDMP              
        }         	   Kutuphane    17.2    17.2 >    e           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            f           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            g           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            h           1262    17660 	   Kutuphane    DATABASE     �   CREATE DATABASE "Kutuphane" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Kutuphane";
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            i           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            m           1247    17862    harekettipi    TYPE     m   CREATE TYPE public.harekettipi AS ENUM (
    'Giris',
    'Cikis',
    'Kayip',
    'Hibe',
    'Calinti'
);
    DROP TYPE public.harekettipi;
       public               postgres    false    4            �            1259    17874    kitap_hareket    TABLE     &  CREATE TABLE public.kitap_hareket (
    id integer NOT NULL,
    personel_id integer NOT NULL,
    uye_id integer,
    "alıs_tarihi" timestamp without time zone DEFAULT now(),
    teslim_tarihi timestamp without time zone,
    hareket_tipi public.harekettipi,
    kitap_id integer NOT NULL
);
 !   DROP TABLE public.kitap_hareket;
       public         heap r       postgres    false    4    877            �            1259    17873    hareketler_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hareketler_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.hareketler_id_seq;
       public               postgres    false    230    4            j           0    0    hareketler_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE public.hareketler_id_seq OWNED BY public.kitap_hareket.id;
          public               postgres    false    229            �            1259    17819    kitap_turleri    TABLE     �   CREATE TABLE public.kitap_turleri (
    id integer NOT NULL,
    tur_adi character varying(50),
    create_date timestamp without time zone
);
 !   DROP TABLE public.kitap_turleri;
       public         heap r       postgres    false    4            �            1259    17818    kitap_turleri_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kitap_turleri_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.kitap_turleri_id_seq;
       public               postgres    false    222    4            k           0    0    kitap_turleri_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.kitap_turleri_id_seq OWNED BY public.kitap_turleri.id;
          public               postgres    false    221            �            1259    17670    kitaplar    TABLE     �   CREATE TABLE public.kitaplar (
    idserial integer NOT NULL,
    kitapadi character varying(50) NOT NULL,
    yazar_id integer NOT NULL,
    kitap_tur_id integer,
    basim_tarihi date,
    "sayfa_sayısı" smallint,
    "yayın_evi_id" integer
);
    DROP TABLE public.kitaplar;
       public         heap r       postgres    false    4            �            1259    17669    kitaplar_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kitaplar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.kitaplar_id_seq;
       public               postgres    false    4    220            l           0    0    kitaplar_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.kitaplar_id_seq OWNED BY public.kitaplar.idserial;
          public               postgres    false    219            �            1259    17855    personeller    TABLE     {  CREATE TABLE public.personeller (
    id integer NOT NULL,
    ad character varying(50),
    soyad character varying(50),
    tcno character varying(11),
    gsm character varying(20),
    email character varying(50),
    cinsiyet boolean,
    sehir character varying(50),
    ilce character varying(50),
    cadde_sokak character varying(50),
    sifre character varying(50)
);
    DROP TABLE public.personeller;
       public         heap r       postgres    false    4            �            1259    17854    personel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.personel_id_seq;
       public               postgres    false    228    4            m           0    0    personel_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.personel_id_seq OWNED BY public.personeller.id;
          public               postgres    false    227            �            1259    17848    uyeler    TABLE     v  CREATE TABLE public.uyeler (
    id integer NOT NULL,
    ad character varying(50),
    soyad character varying(50),
    tcno character varying(11),
    gsm character varying(20),
    email character varying(50),
    cinsiyet boolean,
    sehir character varying(50),
    ilce character varying(50),
    cadde_sokak character varying(50),
    sifre character varying(50)
);
    DROP TABLE public.uyeler;
       public         heap r       postgres    false    4            �            1259    17847    uyeler_id_seq    SEQUENCE     �   CREATE SEQUENCE public.uyeler_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.uyeler_id_seq;
       public               postgres    false    4    226            n           0    0    uyeler_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.uyeler_id_seq OWNED BY public.uyeler.id;
          public               postgres    false    225            �            1259    17826 	   yayin_evi    TABLE     L  CREATE TABLE public.yayin_evi (
    id integer NOT NULL,
    "yayın_evi_adi" character varying(50) NOT NULL,
    sehir character varying(50),
    ilce character varying(50),
    cadde_sokak character varying(50),
    vergi_dairesi character varying(50),
    vergi_no character varying(20),
    ilgili_kisi character varying(50)
);
    DROP TABLE public.yayin_evi;
       public         heap r       postgres    false    4            �            1259    17825    yayin_evi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.yayin_evi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.yayin_evi_id_seq;
       public               postgres    false    4    224            o           0    0    yayin_evi_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.yayin_evi_id_seq OWNED BY public.yayin_evi.id;
          public               postgres    false    223            �            1259    17662    yazarlar    TABLE       CREATE TABLE public.yazarlar (
    id integer NOT NULL,
    ad character varying(50) NOT NULL,
    soyad character varying(50) NOT NULL,
    email character varying(50),
    tcno character varying(11),
    cinsiyet boolean,
    createdate timestamp without time zone DEFAULT now()
);
    DROP TABLE public.yazarlar;
       public         heap r       postgres    false    4            �            1259    17661    yazar_id_seq    SEQUENCE     �   CREATE SEQUENCE public.yazar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.yazar_id_seq;
       public               postgres    false    218    4            p           0    0    yazar_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.yazar_id_seq OWNED BY public.yazarlar.id;
          public               postgres    false    217            �           2604    17877    kitap_hareket id    DEFAULT     q   ALTER TABLE ONLY public.kitap_hareket ALTER COLUMN id SET DEFAULT nextval('public.hareketler_id_seq'::regclass);
 ?   ALTER TABLE public.kitap_hareket ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    230    229    230            �           2604    17822    kitap_turleri id    DEFAULT     t   ALTER TABLE ONLY public.kitap_turleri ALTER COLUMN id SET DEFAULT nextval('public.kitap_turleri_id_seq'::regclass);
 ?   ALTER TABLE public.kitap_turleri ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    222    222            �           2604    17673    kitaplar idserial    DEFAULT     p   ALTER TABLE ONLY public.kitaplar ALTER COLUMN idserial SET DEFAULT nextval('public.kitaplar_id_seq'::regclass);
 @   ALTER TABLE public.kitaplar ALTER COLUMN idserial DROP DEFAULT;
       public               postgres    false    219    220    220            �           2604    17858    personeller id    DEFAULT     m   ALTER TABLE ONLY public.personeller ALTER COLUMN id SET DEFAULT nextval('public.personel_id_seq'::regclass);
 =   ALTER TABLE public.personeller ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    228    227    228            �           2604    17851 	   uyeler id    DEFAULT     f   ALTER TABLE ONLY public.uyeler ALTER COLUMN id SET DEFAULT nextval('public.uyeler_id_seq'::regclass);
 8   ALTER TABLE public.uyeler ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    226    226            �           2604    17829    yayin_evi id    DEFAULT     l   ALTER TABLE ONLY public.yayin_evi ALTER COLUMN id SET DEFAULT nextval('public.yayin_evi_id_seq'::regclass);
 ;   ALTER TABLE public.yayin_evi ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    223    224    224            �           2604    17665    yazarlar id    DEFAULT     g   ALTER TABLE ONLY public.yazarlar ALTER COLUMN id SET DEFAULT nextval('public.yazar_id_seq'::regclass);
 :   ALTER TABLE public.yazarlar ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            b          0    17874    kitap_hareket 
   TABLE DATA           w   COPY public.kitap_hareket (id, personel_id, uye_id, "alıs_tarihi", teslim_tarihi, hareket_tipi, kitap_id) FROM stdin;
    public               postgres    false    230   !J       Z          0    17819    kitap_turleri 
   TABLE DATA           A   COPY public.kitap_turleri (id, tur_adi, create_date) FROM stdin;
    public               postgres    false    222   >J       X          0    17670    kitaplar 
   TABLE DATA              COPY public.kitaplar (idserial, kitapadi, yazar_id, kitap_tur_id, basim_tarihi, "sayfa_sayısı", "yayın_evi_id") FROM stdin;
    public               postgres    false    220   [J       `          0    17855    personeller 
   TABLE DATA           q   COPY public.personeller (id, ad, soyad, tcno, gsm, email, cinsiyet, sehir, ilce, cadde_sokak, sifre) FROM stdin;
    public               postgres    false    228   FK       ^          0    17848    uyeler 
   TABLE DATA           l   COPY public.uyeler (id, ad, soyad, tcno, gsm, email, cinsiyet, sehir, ilce, cadde_sokak, sifre) FROM stdin;
    public               postgres    false    226   �K       \          0    17826 	   yayin_evi 
   TABLE DATA           y   COPY public.yayin_evi (id, "yayın_evi_adi", sehir, ilce, cadde_sokak, vergi_dairesi, vergi_no, ilgili_kisi) FROM stdin;
    public               postgres    false    224   hL       V          0    17662    yazarlar 
   TABLE DATA           T   COPY public.yazarlar (id, ad, soyad, email, tcno, cinsiyet, createdate) FROM stdin;
    public               postgres    false    218   �L       q           0    0    hareketler_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.hareketler_id_seq', 2, true);
          public               postgres    false    229            r           0    0    kitap_turleri_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.kitap_turleri_id_seq', 1, false);
          public               postgres    false    221            s           0    0    kitaplar_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.kitaplar_id_seq', 11, true);
          public               postgres    false    219            t           0    0    personel_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.personel_id_seq', 2, true);
          public               postgres    false    227            u           0    0    uyeler_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.uyeler_id_seq', 1, true);
          public               postgres    false    225            v           0    0    yayin_evi_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.yayin_evi_id_seq', 1, false);
          public               postgres    false    223            w           0    0    yazar_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.yazar_id_seq', 12, true);
          public               postgres    false    217            �           2606    17880    kitap_hareket hareketler_pk 
   CONSTRAINT     Y   ALTER TABLE ONLY public.kitap_hareket
    ADD CONSTRAINT hareketler_pk PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.kitap_hareket DROP CONSTRAINT hareketler_pk;
       public                 postgres    false    230            �           2606    17824    kitap_turleri kitap_turleri_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.kitap_turleri
    ADD CONSTRAINT kitap_turleri_pk PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.kitap_turleri DROP CONSTRAINT kitap_turleri_pk;
       public                 postgres    false    222            �           2606    17675    kitaplar kitaplar_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.kitaplar
    ADD CONSTRAINT kitaplar_pk PRIMARY KEY (idserial);
 >   ALTER TABLE ONLY public.kitaplar DROP CONSTRAINT kitaplar_pk;
       public                 postgres    false    220            �           2606    17860    personeller personel_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.personeller
    ADD CONSTRAINT personel_pk PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.personeller DROP CONSTRAINT personel_pk;
       public                 postgres    false    228            �           2606    17853    uyeler uyeler_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.uyeler
    ADD CONSTRAINT uyeler_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.uyeler DROP CONSTRAINT uyeler_pk;
       public                 postgres    false    226            �           2606    17831    yayin_evi yayin_evi_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.yayin_evi
    ADD CONSTRAINT yayin_evi_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.yayin_evi DROP CONSTRAINT yayin_evi_pk;
       public                 postgres    false    224            �           2606    17668    yazarlar yazar_pk 
   CONSTRAINT     O   ALTER TABLE ONLY public.yazarlar
    ADD CONSTRAINT yazar_pk PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.yazarlar DROP CONSTRAINT yazar_pk;
       public                 postgres    false    218            �           2606    17901 '   kitap_hareket kitap_hareket_kitaplar_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.kitap_hareket
    ADD CONSTRAINT kitap_hareket_kitaplar_fk FOREIGN KEY (kitap_id) REFERENCES public.kitaplar(idserial);
 Q   ALTER TABLE ONLY public.kitap_hareket DROP CONSTRAINT kitap_hareket_kitaplar_fk;
       public               postgres    false    4787    220    230            �           2606    17906 *   kitap_hareket kitap_hareket_personeller_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.kitap_hareket
    ADD CONSTRAINT kitap_hareket_personeller_fk FOREIGN KEY (personel_id) REFERENCES public.personeller(id);
 T   ALTER TABLE ONLY public.kitap_hareket DROP CONSTRAINT kitap_hareket_personeller_fk;
       public               postgres    false    230    228    4795            �           2606    17911 %   kitap_hareket kitap_hareket_uyeler_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.kitap_hareket
    ADD CONSTRAINT kitap_hareket_uyeler_fk FOREIGN KEY (uye_id) REFERENCES public.uyeler(id);
 O   ALTER TABLE ONLY public.kitap_hareket DROP CONSTRAINT kitap_hareket_uyeler_fk;
       public               postgres    false    226    230    4793            �           2606    17837 "   kitaplar kitaplar_kitap_turleri_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.kitaplar
    ADD CONSTRAINT kitaplar_kitap_turleri_fk FOREIGN KEY (kitap_tur_id) REFERENCES public.kitap_turleri(id);
 L   ALTER TABLE ONLY public.kitaplar DROP CONSTRAINT kitaplar_kitap_turleri_fk;
       public               postgres    false    220    4789    222            �           2606    17842    kitaplar kitaplar_yayin_evi_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.kitaplar
    ADD CONSTRAINT kitaplar_yayin_evi_fk FOREIGN KEY ("yayın_evi_id") REFERENCES public.yayin_evi(id);
 H   ALTER TABLE ONLY public.kitaplar DROP CONSTRAINT kitaplar_yayin_evi_fk;
       public               postgres    false    224    4791    220            �           2606    17832    kitaplar kitaplar_yazarlar_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.kitaplar
    ADD CONSTRAINT kitaplar_yazarlar_fk FOREIGN KEY (yazar_id) REFERENCES public.yazarlar(id);
 G   ALTER TABLE ONLY public.kitaplar DROP CONSTRAINT kitaplar_yazarlar_fk;
       public               postgres    false    218    4785    220            b      x������ � �      Z      x������ � �      X   �   x�]��j�@�g�)��N����R(���!�E�09_@���ѳ���W/K�
��|�?���3Ha���d
�Y{�_�J0��>�k���a��4�gP�ͅ�� Y�a�Bƍ�������?�J��~{�^�������a��|�U��c*����U�;�\psr��a{c���3��k�O�a��*����mU�5�1��gq��`*"d��$�/��l�      `   �   x�M�K�0���0D�-e�c���n~�jS(�V=�\A�@�e5���df��s�=v�zsAʧ3!3����Y��g3?�d��ljx��'W�*,��6���r��H0��v�=PA�zD5�ξt�d�8J��?���ӄ�2��V;?��>a���8�      ^   h   x�3��M-*QP�/�M��t-�L���411225����0�405�43�0712��*uH�M���K���L�<���$1/�4�3)�2;��3;�,1���lNC#c�=... o�W      \      x������ � �      V   ~  x�}�]j�0���U�FX��i��mȄ��})��oƎ5V�5�zI]G7V�Sh F��+��5��F=��5Cc<���T�٣9��D*�u*�i��|�曼fY�"K.�V݀+Z]�s�P�d�e�M��Ld2��?ը,vtPS�}�o��E�eU˪~�q�=�˲*�$�g2vO�j_Ik����ܶ�L�[�^q����R�2)�i2���2�3�ƾ��<b��Ѣ,�r����n 4���?�[�u|���NP�F~@vZԳ�^�:j��tk��BY��V�N�atX�N̝�UD-�ke�V�$�sd�hQ*��x��c�3���x�=�E��c�cw��5����`mX3�E����v����ڌ#uC�~���QE�Y�$��     