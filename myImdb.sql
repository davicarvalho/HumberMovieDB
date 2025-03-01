PGDMP     6    /                x           my_imdb    12.2 (Debian 12.2-2.pgdg100+1)    12.0 +    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    my_imdb    DATABASE     w   CREATE DATABASE my_imdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE my_imdb;
                postgres    false            �            1259    16550    episode    TABLE     �   CREATE TABLE public.episode (
    id integer NOT NULL,
    episode_number integer,
    title character varying(255) NOT NULL,
    seasonid integer
);
    DROP TABLE public.episode;
       public         heap    postgres    false            �            1259    16548    episode_id_seq    SEQUENCE     �   CREATE SEQUENCE public.episode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.episode_id_seq;
       public          postgres    false    211            �           0    0    episode_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.episode_id_seq OWNED BY public.episode.id;
          public          postgres    false    210            �            1259    16503    genre    TABLE     a   CREATE TABLE public.genre (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.genre;
       public         heap    postgres    false            �            1259    16501    genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.genre_id_seq;
       public          postgres    false    203            �           0    0    genre_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.genre_id_seq OWNED BY public.genre.id;
          public          postgres    false    202            �            1259    16511    movie    TABLE     �   CREATE TABLE public.movie (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    year integer,
    genreid integer
);
    DROP TABLE public.movie;
       public         heap    postgres    false            �            1259    16509    movie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.movie_id_seq;
       public          postgres    false    205            �           0    0    movie_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.movie_id_seq OWNED BY public.movie.id;
          public          postgres    false    204            �            1259    16537    season    TABLE     �   CREATE TABLE public.season (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    year integer NOT NULL,
    showid integer
);
    DROP TABLE public.season;
       public         heap    postgres    false            �            1259    16535    season_id_seq    SEQUENCE     �   CREATE SEQUENCE public.season_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.season_id_seq;
       public          postgres    false    209            �           0    0    season_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.season_id_seq OWNED BY public.season.id;
          public          postgres    false    208            �            1259    16524    tv_show    TABLE     �   CREATE TABLE public.tv_show (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    year_start integer NOT NULL,
    year_end integer,
    genreid integer
);
    DROP TABLE public.tv_show;
       public         heap    postgres    false            �            1259    16522    tv_show_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tv_show_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tv_show_id_seq;
       public          postgres    false    207            �           0    0    tv_show_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tv_show_id_seq OWNED BY public.tv_show.id;
          public          postgres    false    206            �
           2604    16553 
   episode id    DEFAULT     h   ALTER TABLE ONLY public.episode ALTER COLUMN id SET DEFAULT nextval('public.episode_id_seq'::regclass);
 9   ALTER TABLE public.episode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    16506    genre id    DEFAULT     d   ALTER TABLE ONLY public.genre ALTER COLUMN id SET DEFAULT nextval('public.genre_id_seq'::regclass);
 7   ALTER TABLE public.genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    16514    movie id    DEFAULT     d   ALTER TABLE ONLY public.movie ALTER COLUMN id SET DEFAULT nextval('public.movie_id_seq'::regclass);
 7   ALTER TABLE public.movie ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    16540 	   season id    DEFAULT     f   ALTER TABLE ONLY public.season ALTER COLUMN id SET DEFAULT nextval('public.season_id_seq'::regclass);
 8   ALTER TABLE public.season ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    16527 
   tv_show id    DEFAULT     h   ALTER TABLE ONLY public.tv_show ALTER COLUMN id SET DEFAULT nextval('public.tv_show_id_seq'::regclass);
 9   ALTER TABLE public.tv_show ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �          0    16550    episode 
   TABLE DATA           F   COPY public.episode (id, episode_number, title, seasonid) FROM stdin;
    public          postgres    false    211   �,       �          0    16503    genre 
   TABLE DATA           )   COPY public.genre (id, name) FROM stdin;
    public          postgres    false    203   ).       �          0    16511    movie 
   TABLE DATA           9   COPY public.movie (id, title, year, genreid) FROM stdin;
    public          postgres    false    205   d.       �          0    16537    season 
   TABLE DATA           9   COPY public.season (id, title, year, showid) FROM stdin;
    public          postgres    false    209   �.       �          0    16524    tv_show 
   TABLE DATA           K   COPY public.tv_show (id, title, year_start, year_end, genreid) FROM stdin;
    public          postgres    false    207   T/       �           0    0    episode_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.episode_id_seq', 22, true);
          public          postgres    false    210            �           0    0    genre_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.genre_id_seq', 12, true);
          public          postgres    false    202            �           0    0    movie_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.movie_id_seq', 17, true);
          public          postgres    false    204            �           0    0    season_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.season_id_seq', 11, true);
          public          postgres    false    208            �           0    0    tv_show_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tv_show_id_seq', 4, true);
          public          postgres    false    206            �
           2606    16555    episode episode_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.episode
    ADD CONSTRAINT episode_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.episode DROP CONSTRAINT episode_pkey;
       public            postgres    false    211            �
           2606    16508    genre genre_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    203            �
           2606    16516    movie movie_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_pkey;
       public            postgres    false    205            �
           2606    16542    season season_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.season
    ADD CONSTRAINT season_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.season DROP CONSTRAINT season_pkey;
       public            postgres    false    209            �
           2606    16529    tv_show tv_show_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tv_show
    ADD CONSTRAINT tv_show_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tv_show DROP CONSTRAINT tv_show_pkey;
       public            postgres    false    207                       2606    16556    episode episode_seasonid_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.episode
    ADD CONSTRAINT episode_seasonid_fkey FOREIGN KEY (seasonid) REFERENCES public.season(id);
 G   ALTER TABLE ONLY public.episode DROP CONSTRAINT episode_seasonid_fkey;
       public          postgres    false    209    2813    211                        2606    16517    movie movie_genreid_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_genreid_fkey FOREIGN KEY (genreid) REFERENCES public.genre(id);
 B   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_genreid_fkey;
       public          postgres    false    203    2807    205                       2606    16543    season season_showid_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.season
    ADD CONSTRAINT season_showid_fkey FOREIGN KEY (showid) REFERENCES public.tv_show(id);
 C   ALTER TABLE ONLY public.season DROP CONSTRAINT season_showid_fkey;
       public          postgres    false    2811    209    207                       2606    16530    tv_show tv_show_genreid_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.tv_show
    ADD CONSTRAINT tv_show_genreid_fkey FOREIGN KEY (genreid) REFERENCES public.genre(id);
 F   ALTER TABLE ONLY public.tv_show DROP CONSTRAINT tv_show_genreid_fkey;
       public          postgres    false    203    207    2807            �   $  x�=��n�0Dϛ��H�C�rL@��.�zY��caٕqh��wM��vfg��U�`o����JXQ��q{ƆtQ���d�]���g��A"T�u���3��&�(2�GdsX���L����í��I�,���������O�'��J�IH�|c��ބ8�e��M0�r+JM�1�#R��0��ĵ�JU
]�.�����/t�>�Jh����7��M�����\��x�_K�pM�wCL��b�#B��MZ�����}�ٙo�����yMs��Zk�d�E�e?4j�      �   +   x�3�t)J�M�2�tL)K�+)-J�24���/*�/����� �2	�      �   �   x�Mͽ
1�z�)�	�6�����K���]G"�����V��03�(t*�Z��F��sё�D��5����GY��1=�Cp]��p����&&�ml��g}� �.��)�`M���{+�W���|&�      �   P   x�=̹�0C�Z&�#�i������ ��DZFl�7Ѐt��B�	f���@��i�}�2�N-��u/w� �#&      �   R   x�3�t*JM���KWpJL�420� �Ɯ�\F���%��E9 qC3�?��	�Sb^�B~��SQ~IFjQ1H�!�0����� �n�     