PGDMP                      |            patient    16.3    16.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16540    patient    DATABASE     z   CREATE DATABASE patient WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE patient;
                postgres    false                        3079    16541    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false                       0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    2            �            1259    16590    verification    TABLE     �   CREATE TABLE public.verification (
    user_id integer NOT NULL,
    user_name text NOT NULL,
    aadhar_id bigint NOT NULL,
    pass_hash character varying NOT NULL
);
     DROP TABLE public.verification;
       public         heap    postgres    false            �            1259    16589    verification_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.verification_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.verification_user_id_seq;
       public          postgres    false    217                       0    0    verification_user_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.verification_user_id_seq OWNED BY public.verification.user_id;
          public          postgres    false    216            u           2604    16593    verification user_id    DEFAULT     |   ALTER TABLE ONLY public.verification ALTER COLUMN user_id SET DEFAULT nextval('public.verification_user_id_seq'::regclass);
 C   ALTER TABLE public.verification ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    216    217    217            
          0    16590    verification 
   TABLE DATA           P   COPY public.verification (user_id, user_name, aadhar_id, pass_hash) FROM stdin;
    public          postgres    false    217   >                  0    0    verification_user_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.verification_user_id_seq', 10, true);
          public          postgres    false    216            w           2606    16599 '   verification verification_aadhar_id_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.verification
    ADD CONSTRAINT verification_aadhar_id_key UNIQUE (aadhar_id);
 Q   ALTER TABLE ONLY public.verification DROP CONSTRAINT verification_aadhar_id_key;
       public            postgres    false    217            y           2606    16597    verification verification_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.verification
    ADD CONSTRAINT verification_pkey PRIMARY KEY (user_id);
 H   ALTER TABLE ONLY public.verification DROP CONSTRAINT verification_pkey;
       public            postgres    false    217            
   �  x�]�ɒ�@��5<��Zc2$ò@��5z�@2� �O�DU��/�ŉ�^�p��a�V��@�  h�� 'B�A��@�K���5U��Hݕ�v��=D�����.��;�C �(#H��d��6�2]i}աY�D A�-��q�ܷ���,9_��r���M<�"��Z��)�s6S��xL��"Y�ؤ]_>д��2N�m��D�ط��&R�$]�-�2N�f��� ��W�:�`[I��~�L�N�"|6H��/�JNԤ?.Y������5�"�wU7�!���ǦI�M�/^=˷&��Cy�n�aO�%t��|e/p�S�e9����C=憑��3�|M��mCE?��;(��-�ژ�N���3�#&y���3A��K/���(.�Pk��b�y������"����Z2TFkr�-^EX���RR �����`���!�^[�hf�w���z�끻Қ��j]fn4!�QU[L��"�AjP�m.8�67;l�J����5��_)v���z^����_��CyLx?�(�$�4CJ�`����֕�,q�g3�3�^���8S�yo�u�ԬS>���ŴS�`�$�
GI���G���{1H��#�d%#�ۅ���v+�a�;�AEm�sb����\u�C����+$�'?@Ծƚ�E�$���v     