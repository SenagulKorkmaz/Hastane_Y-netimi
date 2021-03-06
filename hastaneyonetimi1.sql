PGDMP     $                    x            hastaneyonetimi    13.0    13.0 "    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33327    hastaneyonetimi    DATABASE     l   CREATE DATABASE hastaneyonetimi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE hastaneyonetimi;
                postgres    false            �            1259    33328    doktor1    TABLE     �   CREATE TABLE public.doktor1 (
    isim character varying(30) NOT NULL,
    soyisim character varying(30),
    "calisacakHemsire" character varying(50),
    "calisacakStajyer" character varying(50),
    "nobetGünü" character varying(30)
);
    DROP TABLE public.doktor1;
       public         heap    postgres    false            �            1259    33333    doktor2    TABLE     �   CREATE TABLE public.doktor2 (
    isim character varying(30) NOT NULL,
    soyisim character varying(30),
    "calisacakHemsire" character varying(50),
    "calisacakStajyer" character varying(50),
    "nobetGünü" character varying(30)
);
    DROP TABLE public.doktor2;
       public         heap    postgres    false            �            1259    33338    doktor3    TABLE     �   CREATE TABLE public.doktor3 (
    isim character varying(30) NOT NULL,
    soyisim character varying(30),
    "calisacakHemsire" character varying(50),
    "calisacakStajyer" character varying(50),
    "nobetGünü" character varying(30)
);
    DROP TABLE public.doktor3;
       public         heap    postgres    false            �            1259    33343    hasta    TABLE     �   CREATE TABLE public.hasta (
    id integer NOT NULL,
    isim character varying(15),
    soyisim character varying(15),
    bolum character varying(50),
    sikayet character varying(100)
);
    DROP TABLE public.hasta;
       public         heap    postgres    false            �            1259    33348    hastabakici    TABLE     �   CREATE TABLE public.hastabakici (
    isim character varying(30) NOT NULL,
    soyisim character varying(30),
    bakilacakodalar character varying(50),
    "nöbetgünü" character varying(30)
);
    DROP TABLE public.hastabakici;
       public         heap    postgres    false            �            1259    33353    hemsire1    TABLE     �   CREATE TABLE public.hemsire1 (
    isim character varying(30) NOT NULL,
    soyisim character varying(30),
    "calisacakDoktor" character varying(50),
    "calisacakStajyer" character varying(50),
    "nobetGünü" character varying(30)
);
    DROP TABLE public.hemsire1;
       public         heap    postgres    false            �            1259    33358    hemsire2    TABLE     �   CREATE TABLE public.hemsire2 (
    isim character varying(30) NOT NULL,
    soyisim character varying(30),
    "calisacakDoktor" character varying(50),
    "calisacakStajyer" character varying(50),
    "nobetGünü" character varying(30)
);
    DROP TABLE public.hemsire2;
       public         heap    postgres    false            �            1259    33363    hemsire3    TABLE     �   CREATE TABLE public.hemsire3 (
    isim character varying(30) NOT NULL,
    soyisim character varying(30),
    "calisacakDoktor" character varying(50),
    "calisacakStajyer" character varying(50),
    "nobetGünü" character varying(30)
);
    DROP TABLE public.hemsire3;
       public         heap    postgres    false            �            1259    33368    stajyer    TABLE     �   CREATE TABLE public.stajyer (
    isim character varying(30) NOT NULL,
    soyisim character varying(30),
    calisacakdoktor character varying(50),
    calisacakhemsire character varying(50)
);
    DROP TABLE public.stajyer;
       public         heap    postgres    false            �            1259    33373    temizlikpersoneli    TABLE     �   CREATE TABLE public.temizlikpersoneli (
    isim character varying(30) NOT NULL,
    soyisim character varying(30),
    bakilacakkatlar character varying(50)
);
 %   DROP TABLE public.temizlikpersoneli;
       public         heap    postgres    false            �          0    33328    doktor1 
   TABLE DATA           g   COPY public.doktor1 (isim, soyisim, "calisacakHemsire", "calisacakStajyer", "nobetGünü") FROM stdin;
    public          postgres    false    200   g'       �          0    33333    doktor2 
   TABLE DATA           g   COPY public.doktor2 (isim, soyisim, "calisacakHemsire", "calisacakStajyer", "nobetGünü") FROM stdin;
    public          postgres    false    201   �'       �          0    33338    doktor3 
   TABLE DATA           g   COPY public.doktor3 (isim, soyisim, "calisacakHemsire", "calisacakStajyer", "nobetGünü") FROM stdin;
    public          postgres    false    202   (       �          0    33343    hasta 
   TABLE DATA           B   COPY public.hasta (id, isim, soyisim, bolum, sikayet) FROM stdin;
    public          postgres    false    203   e(       �          0    33348    hastabakici 
   TABLE DATA           U   COPY public.hastabakici (isim, soyisim, bakilacakodalar, "nöbetgünü") FROM stdin;
    public          postgres    false    204   2*       �          0    33353    hemsire1 
   TABLE DATA           g   COPY public.hemsire1 (isim, soyisim, "calisacakDoktor", "calisacakStajyer", "nobetGünü") FROM stdin;
    public          postgres    false    205   �*       �          0    33358    hemsire2 
   TABLE DATA           g   COPY public.hemsire2 (isim, soyisim, "calisacakDoktor", "calisacakStajyer", "nobetGünü") FROM stdin;
    public          postgres    false    206   <+       �          0    33363    hemsire3 
   TABLE DATA           g   COPY public.hemsire3 (isim, soyisim, "calisacakDoktor", "calisacakStajyer", "nobetGünü") FROM stdin;
    public          postgres    false    207   �+       �          0    33368    stajyer 
   TABLE DATA           S   COPY public.stajyer (isim, soyisim, calisacakdoktor, calisacakhemsire) FROM stdin;
    public          postgres    false    208   �+       �          0    33373    temizlikpersoneli 
   TABLE DATA           K   COPY public.temizlikpersoneli (isim, soyisim, bakilacakkatlar) FROM stdin;
    public          postgres    false    209   t,       E           2606    33332    doktor1 doktor1_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.doktor1
    ADD CONSTRAINT doktor1_pkey PRIMARY KEY (isim);
 >   ALTER TABLE ONLY public.doktor1 DROP CONSTRAINT doktor1_pkey;
       public            postgres    false    200            G           2606    33337    doktor2 doktor2_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.doktor2
    ADD CONSTRAINT doktor2_pkey PRIMARY KEY (isim);
 >   ALTER TABLE ONLY public.doktor2 DROP CONSTRAINT doktor2_pkey;
       public            postgres    false    201            I           2606    33342    doktor3 doktor3_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.doktor3
    ADD CONSTRAINT doktor3_pkey PRIMARY KEY (isim);
 >   ALTER TABLE ONLY public.doktor3 DROP CONSTRAINT doktor3_pkey;
       public            postgres    false    202            K           2606    33347    hasta hasta_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT hasta_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.hasta DROP CONSTRAINT hasta_pkey;
       public            postgres    false    203            M           2606    33352    hastabakici hastabakici_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.hastabakici
    ADD CONSTRAINT hastabakici_pkey PRIMARY KEY (isim);
 F   ALTER TABLE ONLY public.hastabakici DROP CONSTRAINT hastabakici_pkey;
       public            postgres    false    204            O           2606    33357    hemsire1 hemsire1_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.hemsire1
    ADD CONSTRAINT hemsire1_pkey PRIMARY KEY (isim);
 @   ALTER TABLE ONLY public.hemsire1 DROP CONSTRAINT hemsire1_pkey;
       public            postgres    false    205            Q           2606    33362    hemsire2 hemsire2_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.hemsire2
    ADD CONSTRAINT hemsire2_pkey PRIMARY KEY (isim);
 @   ALTER TABLE ONLY public.hemsire2 DROP CONSTRAINT hemsire2_pkey;
       public            postgres    false    206            S           2606    33367    hemsire3 hemsire3_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.hemsire3
    ADD CONSTRAINT hemsire3_pkey PRIMARY KEY (isim);
 @   ALTER TABLE ONLY public.hemsire3 DROP CONSTRAINT hemsire3_pkey;
       public            postgres    false    207            U           2606    33372    stajyer stajyer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.stajyer
    ADD CONSTRAINT stajyer_pkey PRIMARY KEY (isim);
 >   ALTER TABLE ONLY public.stajyer DROP CONSTRAINT stajyer_pkey;
       public            postgres    false    208            W           2606    33377 (   temizlikpersoneli temizlikpersoneli_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.temizlikpersoneli
    ADD CONSTRAINT temizlikpersoneli_pkey PRIMARY KEY (isim);
 R   ALTER TABLE ONLY public.temizlikpersoneli DROP CONSTRAINT temizlikpersoneli_pkey;
       public            postgres    false    209            �   F   x�s�9��3��͑����HG�HO?N_נHW_G� � �(Ǡ��#t�;���������� f�D      �   F   x�v�st?<Ǉ��?���1���5��Q�p���g�c��y�
�AN�G�q;�x���|�\�b���� �k�      �   B   x�s��u�t�	��sr<:��128�O��(gG?N�P_G����>G6x�9� "(�5���=... ���      �   �  x�}�Ϯ�0�קO�0F�?uyf�����0qC��"L�|�����-l\���^�����=���|ߩ;6�� u�n�-���U�,\svUܵ�P���>,� 3P٧�x��KS���L_�e���By��r�x,��iB@�O��zP�H�=E��zl�H����f��{��M-NJ=��Vz���9v �y!�`�$?)�ɗ�� ���  ��G���������إMF^�ϔԃL�<�6:����-�UU�6-��3���k����aZd�W微
bY��XL��<�z���tP�A�p�@邟nӆ�I]�Q�&5��,�]2��FU��6�X����^���|샕�4o��UI�+0z�0�+���	ͺb�ϊ��4n�!i������A٫��Ȕ��?��؍�.�t'#1�?�����)!�'"U��      �   �   x�]�;
�@��z�9�b|[N�a�l"lZ)"^!7������e�X�_��dlrx4HE�<'Sq����]���@I-U5[����N5��"���%U��;�]COR��E�˱���Ig�T�������*����:c$�
 5�M��dl�G��?!rJ�      �   F   x��8<�'ґ�1��ӏ�����0W7GN_נHW_G� � �(Ǡ��#t�;���������� e�D      �   F   x��q��q�<���������~x�������c�c��y�
�AN�G�q;�x���|�\�b���� �Z�      �   B   x�s���<<-��я����5D��'������<N�P_G����>G6x�9� "(�5���=... �!�      �   �   x����0ϻUl��-���$#��N(5�;}��aN3�Q���H�Y�?,��k��	�9軼�F=6%�������}D��~.Ծ:KX�f��&\��T�R5�iE�������3���+�      �   f   x����0���Y���?8:ª��Trȁ�}X��ف�{Z5�o��t�ӱ�������'���b6H�%��O�j�V|&3^<P������]i��	���     