PGDMP                         |            rawat inap bedah & syaraf    15.2    15.2 4    P           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            R           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            S           1262    16407    rawat inap bedah & syaraf    DATABASE     �   CREATE DATABASE "rawat inap bedah & syaraf" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
 +   DROP DATABASE "rawat inap bedah & syaraf";
                postgres    false            �            1259    17682    admin    TABLE     #  CREATE TABLE public.admin (
    id_admin character varying(100) NOT NULL,
    nama character(100) NOT NULL,
    alamat character varying(100) NOT NULL,
    kecamatan character varying(100) NOT NULL,
    kabupaten character varying(100) NOT NULL,
    no_hp character varying(100) NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    17842    administrasi    TABLE     �  CREATE TABLE public.administrasi (
    id_administrasi character varying(100) NOT NULL,
    tgl_keluar date NOT NULL,
    pasien_no_rm integer NOT NULL,
    admin_id_admin character varying(100) NOT NULL,
    biaya_kamar integer NOT NULL,
    total_obat integer NOT NULL,
    total_tindakan integer NOT NULL,
    pembayaran_id_pembayaran character varying(100) NOT NULL,
    "no_bpjs/no_rek" character varying(100)
);
     DROP TABLE public.administrasi;
       public         heap    postgres    false            �            1259    17889    detail_obat    TABLE     �   CREATE TABLE public.detail_obat (
    id_detail_obat character varying(100) NOT NULL,
    pasien_no_rm integer NOT NULL,
    obat_id_obat character varying(100) NOT NULL
);
    DROP TABLE public.detail_obat;
       public         heap    postgres    false            �            1259    17862    detail_tindakan    TABLE     P  CREATE TABLE public.detail_tindakan (
    id_det_tdkn character varying(100) NOT NULL,
    pasien_no_rm integer NOT NULL,
    dokter_id_dokter character varying(100) NOT NULL,
    perawat_id_perawat character varying(100) NOT NULL,
    tindakan_id_tindakan character varying(100) NOT NULL,
    banyak character varying(100) NOT NULL
);
 #   DROP TABLE public.detail_tindakan;
       public         heap    postgres    false            �            1259    17719    dokter    TABLE     %  CREATE TABLE public.dokter (
    id_dokter character varying(100) NOT NULL,
    nama character(100) NOT NULL,
    alamat character varying(100) NOT NULL,
    kecamatan character varying(100) NOT NULL,
    kabupaten character varying(100) NOT NULL,
    no_hp character varying(100) NOT NULL
);
    DROP TABLE public.dokter;
       public         heap    postgres    false            �            1259    17765    obat    TABLE     �   CREATE TABLE public.obat (
    id_obat character varying(100) NOT NULL,
    nama_obat character varying(100) NOT NULL,
    harga character varying(100) NOT NULL
);
    DROP TABLE public.obat;
       public         heap    postgres    false            �            1259    17675    pasien    TABLE     /  CREATE TABLE public.pasien (
    no_rm integer NOT NULL,
    nama character(100) NOT NULL,
    tgl_lahir date NOT NULL,
    alamat character varying(100) NOT NULL,
    kecamatan character varying(100) NOT NULL,
    kabupaten character varying(100) NOT NULL,
    no_hp character varying(100) NOT NULL
);
    DROP TABLE public.pasien;
       public         heap    postgres    false            �            1259    17714 
   pembayaran    TABLE     w   CREATE TABLE public.pembayaran (
    id_pembayaran character varying(100) NOT NULL,
    via character(100) NOT NULL
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            �            1259    17726    perawat    TABLE     '  CREATE TABLE public.perawat (
    id_perawat character varying(100) NOT NULL,
    nama character(100) NOT NULL,
    alamat character varying(100) NOT NULL,
    kecamatan character varying(100) NOT NULL,
    kabupaten character varying(100) NOT NULL,
    no_hp character varying(100) NOT NULL
);
    DROP TABLE public.perawat;
       public         heap    postgres    false            �            1259    17822 
   registrasi    TABLE     )  CREATE TABLE public.registrasi (
    id_registrasi character varying(100) NOT NULL,
    tgl_masuk date NOT NULL,
    pasien_no_rm integer NOT NULL,
    admin_id_admin character varying(100) NOT NULL,
    ruangan_id_ruangan character varying(100) NOT NULL,
    keterangan character varying(100)
);
    DROP TABLE public.registrasi;
       public         heap    postgres    false            �            1259    17689    ruangan    TABLE     �   CREATE TABLE public.ruangan (
    id_ruangan character varying(100) NOT NULL,
    nama_ruangan character varying(100) NOT NULL,
    harga character varying(100) NOT NULL
);
    DROP TABLE public.ruangan;
       public         heap    postgres    false            �            1259    17733    tindakan    TABLE     �   CREATE TABLE public.tindakan (
    id_tindakan character varying(100) NOT NULL,
    nama_tindakan character(100) NOT NULL,
    harga character varying(100) NOT NULL
);
    DROP TABLE public.tindakan;
       public         heap    postgres    false            C          0    17682    admin 
   TABLE DATA           T   COPY public.admin (id_admin, nama, alamat, kecamatan, kabupaten, no_hp) FROM stdin;
    public          postgres    false    215   FD       K          0    17842    administrasi 
   TABLE DATA           �   COPY public.administrasi (id_administrasi, tgl_keluar, pasien_no_rm, admin_id_admin, biaya_kamar, total_obat, total_tindakan, pembayaran_id_pembayaran, "no_bpjs/no_rek") FROM stdin;
    public          postgres    false    223   �D       M          0    17889    detail_obat 
   TABLE DATA           Q   COPY public.detail_obat (id_detail_obat, pasien_no_rm, obat_id_obat) FROM stdin;
    public          postgres    false    225   �E       L          0    17862    detail_tindakan 
   TABLE DATA           �   COPY public.detail_tindakan (id_det_tdkn, pasien_no_rm, dokter_id_dokter, perawat_id_perawat, tindakan_id_tindakan, banyak) FROM stdin;
    public          postgres    false    224   �F       F          0    17719    dokter 
   TABLE DATA           V   COPY public.dokter (id_dokter, nama, alamat, kecamatan, kabupaten, no_hp) FROM stdin;
    public          postgres    false    218   H       I          0    17765    obat 
   TABLE DATA           9   COPY public.obat (id_obat, nama_obat, harga) FROM stdin;
    public          postgres    false    221   ?I       B          0    17675    pasien 
   TABLE DATA           ]   COPY public.pasien (no_rm, nama, tgl_lahir, alamat, kecamatan, kabupaten, no_hp) FROM stdin;
    public          postgres    false    214   J       E          0    17714 
   pembayaran 
   TABLE DATA           8   COPY public.pembayaran (id_pembayaran, via) FROM stdin;
    public          postgres    false    217   �K       G          0    17726    perawat 
   TABLE DATA           X   COPY public.perawat (id_perawat, nama, alamat, kecamatan, kabupaten, no_hp) FROM stdin;
    public          postgres    false    219   �K       J          0    17822 
   registrasi 
   TABLE DATA           |   COPY public.registrasi (id_registrasi, tgl_masuk, pasien_no_rm, admin_id_admin, ruangan_id_ruangan, keterangan) FROM stdin;
    public          postgres    false    222   �L       D          0    17689    ruangan 
   TABLE DATA           B   COPY public.ruangan (id_ruangan, nama_ruangan, harga) FROM stdin;
    public          postgres    false    216   �M       H          0    17733    tindakan 
   TABLE DATA           E   COPY public.tindakan (id_tindakan, nama_tindakan, harga) FROM stdin;
    public          postgres    false    220   �M       �           2606    17688    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id_admin);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    215            �           2606    17846    administrasi administrasi_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.administrasi
    ADD CONSTRAINT administrasi_pkey PRIMARY KEY (id_administrasi);
 H   ALTER TABLE ONLY public.administrasi DROP CONSTRAINT administrasi_pkey;
       public            postgres    false    223            �           2606    17893    detail_obat detail_obat_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.detail_obat
    ADD CONSTRAINT detail_obat_pkey PRIMARY KEY (id_detail_obat);
 F   ALTER TABLE ONLY public.detail_obat DROP CONSTRAINT detail_obat_pkey;
       public            postgres    false    225            �           2606    17868 $   detail_tindakan detail_tindakan_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.detail_tindakan
    ADD CONSTRAINT detail_tindakan_pkey PRIMARY KEY (id_det_tdkn);
 N   ALTER TABLE ONLY public.detail_tindakan DROP CONSTRAINT detail_tindakan_pkey;
       public            postgres    false    224            �           2606    17725    dokter dokter_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.dokter
    ADD CONSTRAINT dokter_pkey PRIMARY KEY (id_dokter);
 <   ALTER TABLE ONLY public.dokter DROP CONSTRAINT dokter_pkey;
       public            postgres    false    218            �           2606    17769    obat obat_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.obat
    ADD CONSTRAINT obat_pkey PRIMARY KEY (id_obat);
 8   ALTER TABLE ONLY public.obat DROP CONSTRAINT obat_pkey;
       public            postgres    false    221            �           2606    17681    pasien pasien_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.pasien
    ADD CONSTRAINT pasien_pkey PRIMARY KEY (no_rm);
 <   ALTER TABLE ONLY public.pasien DROP CONSTRAINT pasien_pkey;
       public            postgres    false    214            �           2606    17718    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    217            �           2606    17732    perawat perawat_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.perawat
    ADD CONSTRAINT perawat_pkey PRIMARY KEY (id_perawat);
 >   ALTER TABLE ONLY public.perawat DROP CONSTRAINT perawat_pkey;
       public            postgres    false    219            �           2606    17826    registrasi registrasi_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.registrasi
    ADD CONSTRAINT registrasi_pkey PRIMARY KEY (id_registrasi);
 D   ALTER TABLE ONLY public.registrasi DROP CONSTRAINT registrasi_pkey;
       public            postgres    false    222            �           2606    17693    ruangan ruangan_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ruangan
    ADD CONSTRAINT ruangan_pkey PRIMARY KEY (id_ruangan);
 >   ALTER TABLE ONLY public.ruangan DROP CONSTRAINT ruangan_pkey;
       public            postgres    false    216            �           2606    17737    tindakan tindakan_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tindakan
    ADD CONSTRAINT tindakan_pkey PRIMARY KEY (id_tindakan);
 @   ALTER TABLE ONLY public.tindakan DROP CONSTRAINT tindakan_pkey;
       public            postgres    false    220            �           2606    17852 "   administrasi administrasi_admin_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrasi
    ADD CONSTRAINT administrasi_admin_fk FOREIGN KEY (admin_id_admin) REFERENCES public.admin(id_admin);
 L   ALTER TABLE ONLY public.administrasi DROP CONSTRAINT administrasi_admin_fk;
       public          postgres    false    3219    215    223            �           2606    17847 #   administrasi administrasi_pasien_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrasi
    ADD CONSTRAINT administrasi_pasien_fk FOREIGN KEY (pasien_no_rm) REFERENCES public.pasien(no_rm);
 M   ALTER TABLE ONLY public.administrasi DROP CONSTRAINT administrasi_pasien_fk;
       public          postgres    false    223    214    3217            �           2606    17857 '   administrasi administrasi_pembayaran_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrasi
    ADD CONSTRAINT administrasi_pembayaran_fk FOREIGN KEY (pembayaran_id_pembayaran) REFERENCES public.pembayaran(id_pembayaran);
 Q   ALTER TABLE ONLY public.administrasi DROP CONSTRAINT administrasi_pembayaran_fk;
       public          postgres    false    223    217    3223            �           2606    17894    detail_obat detail_obat_obat_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_obat
    ADD CONSTRAINT detail_obat_obat_fk FOREIGN KEY (obat_id_obat) REFERENCES public.obat(id_obat);
 I   ALTER TABLE ONLY public.detail_obat DROP CONSTRAINT detail_obat_obat_fk;
       public          postgres    false    3231    221    225            �           2606    17899 !   detail_obat detail_obat_pasien_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_obat
    ADD CONSTRAINT detail_obat_pasien_fk FOREIGN KEY (pasien_no_rm) REFERENCES public.pasien(no_rm);
 K   ALTER TABLE ONLY public.detail_obat DROP CONSTRAINT detail_obat_pasien_fk;
       public          postgres    false    225    3217    214            �           2606    17869 )   detail_tindakan detail_tindakan_dokter_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_tindakan
    ADD CONSTRAINT detail_tindakan_dokter_fk FOREIGN KEY (dokter_id_dokter) REFERENCES public.dokter(id_dokter);
 S   ALTER TABLE ONLY public.detail_tindakan DROP CONSTRAINT detail_tindakan_dokter_fk;
       public          postgres    false    218    224    3225            �           2606    17874 )   detail_tindakan detail_tindakan_pasien_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_tindakan
    ADD CONSTRAINT detail_tindakan_pasien_fk FOREIGN KEY (pasien_no_rm) REFERENCES public.pasien(no_rm);
 S   ALTER TABLE ONLY public.detail_tindakan DROP CONSTRAINT detail_tindakan_pasien_fk;
       public          postgres    false    224    3217    214            �           2606    17879 *   detail_tindakan detail_tindakan_perawat_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_tindakan
    ADD CONSTRAINT detail_tindakan_perawat_fk FOREIGN KEY (perawat_id_perawat) REFERENCES public.perawat(id_perawat);
 T   ALTER TABLE ONLY public.detail_tindakan DROP CONSTRAINT detail_tindakan_perawat_fk;
       public          postgres    false    219    224    3227            �           2606    17884 +   detail_tindakan detail_tindakan_tindakan_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_tindakan
    ADD CONSTRAINT detail_tindakan_tindakan_fk FOREIGN KEY (tindakan_id_tindakan) REFERENCES public.tindakan(id_tindakan);
 U   ALTER TABLE ONLY public.detail_tindakan DROP CONSTRAINT detail_tindakan_tindakan_fk;
       public          postgres    false    3229    224    220            �           2606    17827    registrasi registrasi_admin_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.registrasi
    ADD CONSTRAINT registrasi_admin_fk FOREIGN KEY (admin_id_admin) REFERENCES public.admin(id_admin);
 H   ALTER TABLE ONLY public.registrasi DROP CONSTRAINT registrasi_admin_fk;
       public          postgres    false    215    3219    222            �           2606    17832    registrasi registrasi_pasien_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.registrasi
    ADD CONSTRAINT registrasi_pasien_fk FOREIGN KEY (pasien_no_rm) REFERENCES public.pasien(no_rm);
 I   ALTER TABLE ONLY public.registrasi DROP CONSTRAINT registrasi_pasien_fk;
       public          postgres    false    3217    222    214            �           2606    17837     registrasi registrasi_ruangan_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.registrasi
    ADD CONSTRAINT registrasi_ruangan_fk FOREIGN KEY (ruangan_id_ruangan) REFERENCES public.ruangan(id_ruangan);
 J   ALTER TABLE ONLY public.registrasi DROP CONSTRAINT registrasi_ruangan_fk;
       public          postgres    false    3221    222    216            C   �   x��ѽ
�0����*r��mqQ�ŭ�rĠ�c
m�x�ւS��˷>�U��l�p��x�����q�������K!�Ҧ�ʰj6I�r�8)Q�Ɛ��Õ���YR)#��*_X
������05�!$Wk����ڨrQi�=]����J��l�c��1��Rr+      K   �   x�e�;n1k�]�O�\�)H���#\������7�<��$`d�ḡ����(@�X$������2ԉL%XBrۋ�+'Her&fh0�kb�_��5[�hg	;�u!���<IS���A�&��4a'�����������j�j~���E5"��b�K��\g:��p@��j0oJ�(�"A�����&N|���ՎF�,/�� ~~�0s�a���c۶_��d�      M   �   x�M�;!�z9Ld����I���#"�i����D/���z�D۽�X�Y◆��I�~�H���Xv�`q�dA�
KA�s�y������GO��T�tH�`-�݃���L�LX��ߝK�)3\�:�N9�n�2 ߝ#U��X�>���ɂY]X�����l%      L   `  x�u�Kn� �5>LDw5���.�$�"e���#6��B�]�y��r~?�(A�Z�p~�G�_?������B��"�XHꧨ��]R{_#]�����v��U8/B��Ř#U�����>R7u����.24&��IEY�f�.��[�.��Ӵ��.Wd��O��Y��E_#��Ӷ�>�c҃�P�	��6��9G���BYM�]ܝf1LI�Sc��5�XȢu�89�,V�A��r<��;͖e��[RD�8}�,���,tqON9�-D���DI1��ĂC�*��.ZGfa�[�}�!�-���^���kR+�&�W��NMX�o���,|���2�H��`��YJ�߷m�� w�8�      F     x���MN�0��s�9 ���8YYQZ��%��mLS��"��r !��'x��d��JR"L[i��P���>�[X��Vw���4�d���x&��*I�4��%K"�Y�ռ��M������^^˗e�;4�N`�	���bIM����+��Z�zj�s�n!��qi�-�����4��dEXr#�	�h�3c�����������������lj����۠�{�p��9�E�1Ƃ��{�h��2;����:���,����,�e��^�(�>���      I   �   x�%��� ����S�h��[K7]�rVJ)�������;�Se�ۧ�;�ۏ� #T)T�P�V�����ɔ��@��4n���1�`.'{��?!�fp��X�:D%<���K�G?.�I)��������^���DJ�0�{-�:<%Bʸg�-z^õ���A��f�LB?ó;�      B   m  x����j�@���)���_�B�Ek��ͱ:f��$���#�R�	!�0���?LiFY����i�5���p���YA-td��;�	�N[N�d�Li�B0�N��W���6����O���'�>@*!�k8+��j�'��s�B=Ҋ�J|G�*㩩����ؤ��B1Ǥ�C�JK��牄�
�3���˷H���([����;'�B+�B��xǏ>�B��iĭ�W���N~��`���[��eRi�5�;�����|i���k�{u�к-Y@�#������H�E��i���SG".���z��r�;����b�R	��u�#X��i������o"D�8��`��f����E�rtv      E   8   x�p�50�tN,�P�1�
 Ze���L��9C���R���ieU� hl/      G   �   x����j�@����U�+��db\F�Z����|�1N��IR��,҅7�l���˩V�h�^��Z�oס�8z���J�%Z^�û�z�ǭ��81�I�Y�j`Ū`w�5�?�se=�<�W����p�2��M�{a%���e/T�gt�*n��k�ja���|TB��a4��O�� 2�<���*-��/}��q<���>|�߲��o�$כ���e��      J   �   x�}н�0�</��^�d4�0���R�`��)������6��ww�2ˁ���=�d ��'w�EH��;O�tku��LlW����P�y��R��mL����}��S�RtT��� O=��5�f4�|T�͸��9����wl/�د�r脐h0
�Vk��I �����~C�2\1�;T�(�^w�_�      D   K   x��s70��N�I,V0�442�300�
�AE�8��PQcNK��	g�g ���)\Ĕ��9����&F��� i�      H   �   x��ӻ� ���S�j�2�5��[���E��h���������Eac�r8�l�P��%I��l������ sb�ދ�*_؇؄N�r)4�{�Z��W
#�$�����f;�O�CfP[ס�bZ�lAO�+2�\U�K����\ q�� �����~/����OQ����Y;�ĭ:�G�s��޶Ӆ�غ�VBWK_$�PFa�~��L��xBY��:����*     