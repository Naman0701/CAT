PGDMP     4    $                z            caat    14.1    14.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24587    caat    DATABASE     h   CREATE DATABASE caat WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE caat;
                postgres    false            �            1259    32949    Home_mentor    TABLE     �   CREATE TABLE public."Home_mentor" (
    id bigint NOT NULL,
    "Points" integer NOT NULL,
    mentor_d_id character varying(10),
    "Usn_id" character varying(10) NOT NULL
);
 !   DROP TABLE public."Home_mentor";
       public         heap    postgres    false            �            1259    32948    Home_aicte_id_seq    SEQUENCE     |   CREATE SEQUENCE public."Home_aicte_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Home_aicte_id_seq";
       public          postgres    false    236            �           0    0    Home_aicte_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."Home_aicte_id_seq" OWNED BY public."Home_mentor".id;
          public          postgres    false    235            �            1259    32970    Home_aictep    TABLE     �   CREATE TABLE public."Home_aictep" (
    id bigint NOT NULL,
    "Date" date NOT NULL,
    "Point" integer NOT NULL,
    "Usn_id" character varying(10) NOT NULL,
    "Activity" character varying(50) NOT NULL
);
 !   DROP TABLE public."Home_aictep";
       public         heap    postgres    false            �            1259    32969    Home_aictep_id_seq    SEQUENCE     }   CREATE SEQUENCE public."Home_aictep_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Home_aictep_id_seq";
       public          postgres    false    238            �           0    0    Home_aictep_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Home_aictep_id_seq" OWNED BY public."Home_aictep".id;
          public          postgres    false    237            �            1259    24805    Home_attendance    TABLE     �   CREATE TABLE public."Home_attendance" (
    id bigint NOT NULL,
    "Date" date NOT NULL,
    "Sub_code_id" character varying(10) NOT NULL,
    "Usn_id" character varying(10) NOT NULL,
    "Mark" boolean NOT NULL
);
 %   DROP TABLE public."Home_attendance";
       public         heap    postgres    false            �            1259    24804    Home_attendance_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Home_attendance_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Home_attendance_id_seq";
       public          postgres    false    234            �           0    0    Home_attendance_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Home_attendance_id_seq" OWNED BY public."Home_attendance".id;
          public          postgres    false    233            �            1259    24597    Home_student    TABLE     I  CREATE TABLE public."Home_student" (
    "Usn" character varying(10) NOT NULL,
    "Fname" character varying(25) NOT NULL,
    "Lname" character varying(25) NOT NULL,
    "Email" character varying(30) NOT NULL,
    "Dept" character varying(50) NOT NULL,
    "Sem" integer NOT NULL,
    "Section" character varying(1) NOT NULL
);
 "   DROP TABLE public."Home_student";
       public         heap    postgres    false            �            1259    24756    Home_subject    TABLE     �   CREATE TABLE public."Home_subject" (
    "Sub_code" character varying(10) NOT NULL,
    "Sub_name" character varying(50) NOT NULL,
    "Dept" character varying(50) NOT NULL,
    "Sem" integer NOT NULL,
    "Credits" integer NOT NULL
);
 "   DROP TABLE public."Home_subject";
       public         heap    postgres    false            �            1259    24602    Home_teacher    TABLE        CREATE TABLE public."Home_teacher" (
    "Ssn" character varying(10) NOT NULL,
    "Fname" character varying(25) NOT NULL,
    "Lname" character varying(25) NOT NULL,
    "Email" character varying(30) NOT NULL,
    "Dept" character varying(50) NOT NULL
);
 "   DROP TABLE public."Home_teacher";
       public         heap    postgres    false            �            1259    24784    Home_teaches    TABLE       CREATE TABLE public."Home_teaches" (
    id bigint NOT NULL,
    "Dept" character varying(50) NOT NULL,
    "Sem" integer NOT NULL,
    "Sec" character varying(1) NOT NULL,
    "Sub_code_id" character varying(10),
    "Teacher_id_id" character varying(10)
);
 "   DROP TABLE public."Home_teaches";
       public         heap    postgres    false            �            1259    24783    Home_teaches_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."Home_teaches_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Home_teaches_id_seq";
       public          postgres    false    232            �           0    0    Home_teaches_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Home_teaches_id_seq" OWNED BY public."Home_teaches".id;
          public          postgres    false    231            �            1259    24626 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    24625    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    218            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    217            �            1259    24635    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    24634    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    220            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    219            �            1259    24619    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    24618    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    216            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    215            �            1259    24642 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    24651    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    24650    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    224            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    223            �            1259    24641    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    222            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    221            �            1259    24658    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    24657 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    226            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    225            �            1259    24717    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    24716    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    228            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    227            �            1259    24610    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    24609    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    214            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    213            �            1259    24589    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    24588    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            �            1259    24746    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �           2604    32973    Home_aictep id    DEFAULT     t   ALTER TABLE ONLY public."Home_aictep" ALTER COLUMN id SET DEFAULT nextval('public."Home_aictep_id_seq"'::regclass);
 ?   ALTER TABLE public."Home_aictep" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    24808    Home_attendance id    DEFAULT     |   ALTER TABLE ONLY public."Home_attendance" ALTER COLUMN id SET DEFAULT nextval('public."Home_attendance_id_seq"'::regclass);
 C   ALTER TABLE public."Home_attendance" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    32952    Home_mentor id    DEFAULT     s   ALTER TABLE ONLY public."Home_mentor" ALTER COLUMN id SET DEFAULT nextval('public."Home_aicte_id_seq"'::regclass);
 ?   ALTER TABLE public."Home_mentor" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    24787    Home_teaches id    DEFAULT     v   ALTER TABLE ONLY public."Home_teaches" ALTER COLUMN id SET DEFAULT nextval('public."Home_teaches_id_seq"'::regclass);
 @   ALTER TABLE public."Home_teaches" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    24629    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    24638    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    24622    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    24645    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    24654    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    24661    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    24720    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    24613    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    24592    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �          0    32970    Home_aictep 
   TABLE DATA           R   COPY public."Home_aictep" (id, "Date", "Point", "Usn_id", "Activity") FROM stdin;
    public          postgres    false    238   B�       �          0    24805    Home_attendance 
   TABLE DATA           X   COPY public."Home_attendance" (id, "Date", "Sub_code_id", "Usn_id", "Mark") FROM stdin;
    public          postgres    false    234   -�       �          0    32949    Home_mentor 
   TABLE DATA           L   COPY public."Home_mentor" (id, "Points", mentor_d_id, "Usn_id") FROM stdin;
    public          postgres    false    236   ��       �          0    24597    Home_student 
   TABLE DATA           d   COPY public."Home_student" ("Usn", "Fname", "Lname", "Email", "Dept", "Sem", "Section") FROM stdin;
    public          postgres    false    211   ��       �          0    24756    Home_subject 
   TABLE DATA           Z   COPY public."Home_subject" ("Sub_code", "Sub_name", "Dept", "Sem", "Credits") FROM stdin;
    public          postgres    false    230   ��       �          0    24602    Home_teacher 
   TABLE DATA           R   COPY public."Home_teacher" ("Ssn", "Fname", "Lname", "Email", "Dept") FROM stdin;
    public          postgres    false    212   �       �          0    24784    Home_teaches 
   TABLE DATA           b   COPY public."Home_teaches" (id, "Dept", "Sem", "Sec", "Sub_code_id", "Teacher_id_id") FROM stdin;
    public          postgres    false    232   Q�       �          0    24626 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    218   �       �          0    24635    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    220   ;�       �          0    24619    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    216   X�       �          0    24642 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    222   z�       �          0    24651    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    224   �       �          0    24658    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    226   "�       �          0    24717    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    228   ?�       �          0    24610    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    214   �      �          0    24589    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   �      �          0    24746    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    229   �      �           0    0    Home_aicte_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Home_aicte_id_seq"', 48, true);
          public          postgres    false    235            �           0    0    Home_aictep_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Home_aictep_id_seq"', 37, true);
          public          postgres    false    237            �           0    0    Home_attendance_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Home_attendance_id_seq"', 1486, true);
          public          postgres    false    233            �           0    0    Home_teaches_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Home_teaches_id_seq"', 30, true);
          public          postgres    false    231            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    217            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    219            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    223            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 27, true);
          public          postgres    false    221            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    225            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 244, true);
          public          postgres    false    227            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);
          public          postgres    false    213            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 68, true);
          public          postgres    false    209            �           2606    32954    Home_mentor Home_aicte_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Home_mentor"
    ADD CONSTRAINT "Home_aicte_pkey" PRIMARY KEY (id);
 I   ALTER TABLE ONLY public."Home_mentor" DROP CONSTRAINT "Home_aicte_pkey";
       public            postgres    false    236                       2606    32975    Home_aictep Home_aictep_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Home_aictep"
    ADD CONSTRAINT "Home_aictep_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Home_aictep" DROP CONSTRAINT "Home_aictep_pkey";
       public            postgres    false    238            �           2606    24810 $   Home_attendance Home_attendance_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Home_attendance"
    ADD CONSTRAINT "Home_attendance_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Home_attendance" DROP CONSTRAINT "Home_attendance_pkey";
       public            postgres    false    234            �           2606    24601    Home_student Home_student_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Home_student"
    ADD CONSTRAINT "Home_student_pkey" PRIMARY KEY ("Usn");
 L   ALTER TABLE ONLY public."Home_student" DROP CONSTRAINT "Home_student_pkey";
       public            postgres    false    211            �           2606    24760    Home_subject Home_subject_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Home_subject"
    ADD CONSTRAINT "Home_subject_pkey" PRIMARY KEY ("Sub_code");
 L   ALTER TABLE ONLY public."Home_subject" DROP CONSTRAINT "Home_subject_pkey";
       public            postgres    false    230            �           2606    24606    Home_teacher Home_teacher_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Home_teacher"
    ADD CONSTRAINT "Home_teacher_pkey" PRIMARY KEY ("Ssn");
 L   ALTER TABLE ONLY public."Home_teacher" DROP CONSTRAINT "Home_teacher_pkey";
       public            postgres    false    212            �           2606    24789    Home_teaches Home_teaches_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Home_teaches"
    ADD CONSTRAINT "Home_teaches_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Home_teaches" DROP CONSTRAINT "Home_teaches_pkey";
       public            postgres    false    232            �           2606    24744    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    218            �           2606    24674 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    220    220            �           2606    24640 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    220            �           2606    24631    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    218            �           2606    24665 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    216    216            �           2606    24624 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    216            �           2606    24656 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    224            �           2606    24689 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    224    224            �           2606    24647    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    222            �           2606    24663 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    226            �           2606    24703 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    226    226            �           2606    24739     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    222            �           2606    24725 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    228            �           2606    24617 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    214    214            �           2606    24615 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    214            �           2606    24596 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            �           2606    24752 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    229            �           1259    32965    Home_aicte_Mentor_id_5835cb38    INDEX     `   CREATE INDEX "Home_aicte_Mentor_id_5835cb38" ON public."Home_mentor" USING btree (mentor_d_id);
 3   DROP INDEX public."Home_aicte_Mentor_id_5835cb38";
       public            postgres    false    236            �           1259    32966 "   Home_aicte_Mentor_id_5835cb38_like    INDEX     y   CREATE INDEX "Home_aicte_Mentor_id_5835cb38_like" ON public."Home_mentor" USING btree (mentor_d_id varchar_pattern_ops);
 8   DROP INDEX public."Home_aicte_Mentor_id_5835cb38_like";
       public            postgres    false    236            �           1259    32967    Home_aicte_Usn_id_f2f3c378    INDEX     Z   CREATE INDEX "Home_aicte_Usn_id_f2f3c378" ON public."Home_mentor" USING btree ("Usn_id");
 0   DROP INDEX public."Home_aicte_Usn_id_f2f3c378";
       public            postgres    false    236            �           1259    32968    Home_aicte_Usn_id_f2f3c378_like    INDEX     s   CREATE INDEX "Home_aicte_Usn_id_f2f3c378_like" ON public."Home_mentor" USING btree ("Usn_id" varchar_pattern_ops);
 5   DROP INDEX public."Home_aicte_Usn_id_f2f3c378_like";
       public            postgres    false    236                        1259    32981    Home_aictep_Usn_id_9436bae4    INDEX     [   CREATE INDEX "Home_aictep_Usn_id_9436bae4" ON public."Home_aictep" USING btree ("Usn_id");
 1   DROP INDEX public."Home_aictep_Usn_id_9436bae4";
       public            postgres    false    238                       1259    32982     Home_aictep_Usn_id_9436bae4_like    INDEX     t   CREATE INDEX "Home_aictep_Usn_id_9436bae4_like" ON public."Home_aictep" USING btree ("Usn_id" varchar_pattern_ops);
 6   DROP INDEX public."Home_aictep_Usn_id_9436bae4_like";
       public            postgres    false    238            �           1259    24821 $   Home_attendance_Sub_code_id_fede1d45    INDEX     m   CREATE INDEX "Home_attendance_Sub_code_id_fede1d45" ON public."Home_attendance" USING btree ("Sub_code_id");
 :   DROP INDEX public."Home_attendance_Sub_code_id_fede1d45";
       public            postgres    false    234            �           1259    24822 )   Home_attendance_Sub_code_id_fede1d45_like    INDEX     �   CREATE INDEX "Home_attendance_Sub_code_id_fede1d45_like" ON public."Home_attendance" USING btree ("Sub_code_id" varchar_pattern_ops);
 ?   DROP INDEX public."Home_attendance_Sub_code_id_fede1d45_like";
       public            postgres    false    234            �           1259    24823    Home_attendance_Usn_id_2ec1d070    INDEX     c   CREATE INDEX "Home_attendance_Usn_id_2ec1d070" ON public."Home_attendance" USING btree ("Usn_id");
 5   DROP INDEX public."Home_attendance_Usn_id_2ec1d070";
       public            postgres    false    234            �           1259    24824 $   Home_attendance_Usn_id_2ec1d070_like    INDEX     |   CREATE INDEX "Home_attendance_Usn_id_2ec1d070_like" ON public."Home_attendance" USING btree ("Usn_id" varchar_pattern_ops);
 :   DROP INDEX public."Home_attendance_Usn_id_2ec1d070_like";
       public            postgres    false    234            �           1259    24607    Home_student_Usn_18e3998f_like    INDEX     p   CREATE INDEX "Home_student_Usn_18e3998f_like" ON public."Home_student" USING btree ("Usn" varchar_pattern_ops);
 4   DROP INDEX public."Home_student_Usn_18e3998f_like";
       public            postgres    false    211            �           1259    24761 #   Home_subject_Sub_code_e0811871_like    INDEX     z   CREATE INDEX "Home_subject_Sub_code_e0811871_like" ON public."Home_subject" USING btree ("Sub_code" varchar_pattern_ops);
 9   DROP INDEX public."Home_subject_Sub_code_e0811871_like";
       public            postgres    false    230            �           1259    24608    Home_teacher_Ssn_ca2295a7_like    INDEX     p   CREATE INDEX "Home_teacher_Ssn_ca2295a7_like" ON public."Home_teacher" USING btree ("Ssn" varchar_pattern_ops);
 4   DROP INDEX public."Home_teacher_Ssn_ca2295a7_like";
       public            postgres    false    212            �           1259    24800 !   Home_teaches_Sub_code_id_1d591d52    INDEX     g   CREATE INDEX "Home_teaches_Sub_code_id_1d591d52" ON public."Home_teaches" USING btree ("Sub_code_id");
 7   DROP INDEX public."Home_teaches_Sub_code_id_1d591d52";
       public            postgres    false    232            �           1259    24801 &   Home_teaches_Sub_code_id_1d591d52_like    INDEX     �   CREATE INDEX "Home_teaches_Sub_code_id_1d591d52_like" ON public."Home_teaches" USING btree ("Sub_code_id" varchar_pattern_ops);
 <   DROP INDEX public."Home_teaches_Sub_code_id_1d591d52_like";
       public            postgres    false    232            �           1259    24802 #   Home_teaches_Teacher_id_id_5465e15a    INDEX     k   CREATE INDEX "Home_teaches_Teacher_id_id_5465e15a" ON public."Home_teaches" USING btree ("Teacher_id_id");
 9   DROP INDEX public."Home_teaches_Teacher_id_id_5465e15a";
       public            postgres    false    232            �           1259    24803 (   Home_teaches_Teacher_id_id_5465e15a_like    INDEX     �   CREATE INDEX "Home_teaches_Teacher_id_id_5465e15a_like" ON public."Home_teaches" USING btree ("Teacher_id_id" varchar_pattern_ops);
 >   DROP INDEX public."Home_teaches_Teacher_id_id_5465e15a_like";
       public            postgres    false    232            �           1259    24745    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    218            �           1259    24685 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    220            �           1259    24686 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    220            �           1259    24671 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    216            �           1259    24701 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    224            �           1259    24700 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    224            �           1259    24715 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    226            �           1259    24714 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    226            �           1259    24740     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    222            �           1259    24736 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    228            �           1259    24737 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    228            �           1259    24754 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    229            �           1259    24753 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    229                       2606    32960 :   Home_mentor Home_aicte_Usn_id_f2f3c378_fk_Home_student_Usn    FK CONSTRAINT     �   ALTER TABLE ONLY public."Home_mentor"
    ADD CONSTRAINT "Home_aicte_Usn_id_f2f3c378_fk_Home_student_Usn" FOREIGN KEY ("Usn_id") REFERENCES public."Home_student"("Usn") DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public."Home_mentor" DROP CONSTRAINT "Home_aicte_Usn_id_f2f3c378_fk_Home_student_Usn";
       public          postgres    false    211    236    3258                       2606    32976 ;   Home_aictep Home_aictep_Usn_id_9436bae4_fk_Home_student_Usn    FK CONSTRAINT     �   ALTER TABLE ONLY public."Home_aictep"
    ADD CONSTRAINT "Home_aictep_Usn_id_9436bae4_fk_Home_student_Usn" FOREIGN KEY ("Usn_id") REFERENCES public."Home_student"("Usn") DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public."Home_aictep" DROP CONSTRAINT "Home_aictep_Usn_id_9436bae4_fk_Home_student_Usn";
       public          postgres    false    238    3258    211                       2606    24811 M   Home_attendance Home_attendance_Sub_code_id_fede1d45_fk_Home_subject_Sub_code    FK CONSTRAINT     �   ALTER TABLE ONLY public."Home_attendance"
    ADD CONSTRAINT "Home_attendance_Sub_code_id_fede1d45_fk_Home_subject_Sub_code" FOREIGN KEY ("Sub_code_id") REFERENCES public."Home_subject"("Sub_code") DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."Home_attendance" DROP CONSTRAINT "Home_attendance_Sub_code_id_fede1d45_fk_Home_subject_Sub_code";
       public          postgres    false    234    230    3309                       2606    24816 C   Home_attendance Home_attendance_Usn_id_2ec1d070_fk_Home_student_Usn    FK CONSTRAINT     �   ALTER TABLE ONLY public."Home_attendance"
    ADD CONSTRAINT "Home_attendance_Usn_id_2ec1d070_fk_Home_student_Usn" FOREIGN KEY ("Usn_id") REFERENCES public."Home_student"("Usn") DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public."Home_attendance" DROP CONSTRAINT "Home_attendance_Usn_id_2ec1d070_fk_Home_student_Usn";
       public          postgres    false    211    3258    234                       2606    41140 @   Home_mentor Home_mentor_mentor_d_id_8c6d0684_fk_Home_teacher_Ssn    FK CONSTRAINT     �   ALTER TABLE ONLY public."Home_mentor"
    ADD CONSTRAINT "Home_mentor_mentor_d_id_8c6d0684_fk_Home_teacher_Ssn" FOREIGN KEY (mentor_d_id) REFERENCES public."Home_teacher"("Ssn") DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."Home_mentor" DROP CONSTRAINT "Home_mentor_mentor_d_id_8c6d0684_fk_Home_teacher_Ssn";
       public          postgres    false    236    212    3261                       2606    24790 G   Home_teaches Home_teaches_Sub_code_id_1d591d52_fk_Home_subject_Sub_code    FK CONSTRAINT     �   ALTER TABLE ONLY public."Home_teaches"
    ADD CONSTRAINT "Home_teaches_Sub_code_id_1d591d52_fk_Home_subject_Sub_code" FOREIGN KEY ("Sub_code_id") REFERENCES public."Home_subject"("Sub_code") DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public."Home_teaches" DROP CONSTRAINT "Home_teaches_Sub_code_id_1d591d52_fk_Home_subject_Sub_code";
       public          postgres    false    232    3309    230                       2606    24795 D   Home_teaches Home_teaches_Teacher_id_id_5465e15a_fk_Home_teacher_Ssn    FK CONSTRAINT     �   ALTER TABLE ONLY public."Home_teaches"
    ADD CONSTRAINT "Home_teaches_Teacher_id_id_5465e15a_fk_Home_teacher_Ssn" FOREIGN KEY ("Teacher_id_id") REFERENCES public."Home_teacher"("Ssn") DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."Home_teaches" DROP CONSTRAINT "Home_teaches_Teacher_id_id_5465e15a_fk_Home_teacher_Ssn";
       public          postgres    false    232    212    3261                       2606    24680 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3270    216    220                       2606    24675 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    218    3275    220                       2606    24666 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3265    216    214                       2606    24695 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3275    218    224                       2606    24690 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    224    222    3283            
           2606    24709 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    216    226    3270            	           2606    24704 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    226    222    3283                       2606    24726 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3265    214    228                       2606    24731 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3283    222    228            �   �   x�uѱ
�0�9y��@���6���A\��RT�P��7�X�H![~�?�C'XE ��m�5-���U�s���S�!��}v�>����=zII�Ј��I:Qޟ����Տ�hEH�u�
<~M,��|�,��I�iR��IR�I�7��ہ�6i��gZf�?sZQ��a���9v�'�yLN��2�O�Ej�Q�o�j/��S��tXI)_�4��      �      x�}�;��8�E��������"��V0��Iٯ!<�7�J�$�Ki�?Zi�����?���_��Q���z��W�����L�E��Q�L1E��Q�L����Q�Lq�N������d����Ŵ=1�V�Ð�񟘵��d���ŎѳQ�G�o�FYr-#e�(-e�(3e�?��(GFY�(KF�(�s�������<���@�D�2I��$C��d�)��L���6K&�"���<�2[&�2JO$��$��''�sg�`�	�V�f8�(G~�f�+���~�ʵ�LҞ2 �C2u �<q�'�!I�Q��pF�v��(�d�l~�Tk�C2KՖI�{w,���H��ڳQd
Z3E�2�Qd
Z+�˟��(2����qY�(O�֓Q�tmY�cmY\�QmٟF�e�H �v2������I���^2�ĥ�D"i_{�$U$Yte��D�� ��$��L" ��$�:]��$��L���u�L" F�$�tX�΃`��D �,�
����X� �
H�\��$C$'� �L`&�@" �H��w�d�Ya)Q f�$�JRg]0MtG �egɀy2�d���D ��I���D ��I��D2�.Y�( �Q"���6]��.(��F=�D�ϛI�̤ڸ#SI�$�g0�j yRm�I5�Ȇ�L��DV{3�Y�ͤHd�g&�@re��Ht�f&�@" V�6�~��2Z��)�����<�����Yd����\%ݜȍ��͉��d��n�N6{��d��n�N6{��f�w�b�dy$I�̤Z��ֺ�L��DGٙD�F3��!��I��̤H�#)F2�Tj&i2J�$�J�$���$R	��I�.+�l�ܝI�.'�H%l�J��Yt%I�6�5z>E�ޙD*�}2���$�1;@"���$[jؖI���3��H$25w��$ݓEW��f�A�H��l+�I�$�t2�
J�~Y�����5s�����t �u��t �%��t ����t �u��t �u��t �u��4%�Q29Hd�19Hd�if���ģ�L"��2��G��$����D ��?�Ȇ����D ��?� S�S� L�H@Ϣ���1ҝ������Y�_�;k�˒5v���m�Κ���K���.}�"S�H���.}�"K�ȟ���1�D�fe��������nV��?�Y��;՛6�ݴ���(+s�t�oV��-u�2Wn�Y�2Wn�Y�2Wn�Y�2W�u�de� �%+s�,Y�+��,i�ȵ�M�*�d뢒졙 �5{"&�¬��.P�gY���5{P%0k�J��	��ٳ	ɀY�G����H�m�d�lٶB�ٲm�hٶB��͖m+@˶�-�VH0[���:`�l[� Z�d	��n�$�vm�W�i�8Ѫ���2�LA���j�vq�U����I$l'^զ��īڴ]�xU����j��Yt���u
`d�:0�}�پN3`d�:]F���پN�l_�0�}���Y �t�,ѵ�$Yf�$���x  ��H$L'� ��	$���H���� ��	$�԰��.h�,�
�԰-Z��$�԰�D ��x  �!k  ��H��`z��D ��j  ��J��Yt������?���U�LS�DYcmO)��c�J�F"l�J�F&�V
4c�W
42���R����v���2t��R��8�4�R�N4��.,�o�,���,�o�,���y��7�<��o]��X\��X\���,�q�8�e�
nF,�N52��.�[���ŲU\�Y����a�lh�hz���[#�H�t�R.�TѤq��X��k-f�L5i��sS��bY�S�֥h���)�-��j����+��i$/��aQ�8+��W��E�K`���5гx4~X4�
,�_��2�o3��h~��E����qV��+�����"��c��H�e��j��)�"��2u^�^�Ћ42��J/�g��S�)$VO�,��e��B^E55�H�z/�H/��<f�ƁFXX�q�Y2�J5�;�qh���aa=�A~�<6�8KY��'j���h$/L�i$/�-*�H^X_T��h��uFaa�Q�F�1�
42�Ys5�+������� /�o`y�|#ȋ�[A^,��X,������|#ȋ��A^l��X�4Κ��!���׿Ylo�xk$/�wD�5��["�a��'�ۛ"�a��+⭑�8���H^�:yk��񶓗F稓�YYoVX��,�q�8`q�8`a-O�FXX�S���h���������`���{�=�g�4�:G]߶X\߷X\߸�,�q|�>`�Yl.�b�q�Y����g#d�� ��Yl�.�b��$�]��,v�NL���[1�bW��XT��,�q�וy��7�,�w�,���,jgeQi�RoW������&0#� 7���Db�h3��M`F"n4����f$�F�$R��F��T�dѕow�s_ >{ �����/ ���\`П��s= { ��#� �H�߱�/ �$���~5#��3�~-cL����+L�ap ���!`��L�[ ��7���Jv0<�� ����>�@p �`x ��`�����Bߏ���� v]̀Mg���L���L� 6�)��3��t��)hә�l�~|�~<�Cߏp��*�Cg�p�L�p�L� �)/ �(t�x ���������3����\�~<��EW��Kg�p�L�p�L� .�)>.�)��3�e�)t�8 ����2��~�S��q Nɢ��u t�8 �Й� �Bg�p
�)�)t�8 �ҙ�T:S<�JߏP��� *}?@͢� P+�8՗d��N�vA���� �����r� ���P��1LA��Z� �/�P��EW���F� </b4:S<�Ng�[N�3��t�x ������t�~<�Nߏг�jt�J��3�G��?�N����D0�IyI$I����$�hxG�K"��7��$K$ޏ�l�x��K"��𮟗Do��闞�EWڥg�Gp0��N��A����?�$��s: �(�)'L���xF��8	`�G�0�N�Yt���s�y�m�<�D,�<w �Qph �D� <���P8 ������3
m�|F�Yt�w~j���$��S����j�P"��O�J$�?�Z(����j�D旟Z-����S��}}�M$����L"�=Ytu�Sd Ϙb
�SLA<c��Sd L�� x �� r
��  3 �?f���}��궡��G�Dך�(��Z-��
kj�@"�5�Z ��Z-�<ѽ��<%W$<M\�p�ayJ���EWvA�����H��}x���]��w�[��u na����s��{�Tv�=���P��* {z�� ��-J�H����r���ޢD ��[� {z��g����%��ނD�kOoQ" Z]���� ��@c�g@c��#��� |B���}x$�{ ����G��π����#ɢ� ��N��،`��Q"`��Q" �s5J�}�F� ���(�)�>W�D2�>W�D3�>W�D �,�
��ފրg��Ư��V�<�
�OA��V�<�������5�����=���`OoEk�#ɢ+��kj������( ��%�:�( ָG��ַG��ֶG�d�u�Q"S�5�A� �g�YV]̀��π���ف� 6;��f�g�f�g�f����z ��]?m�w=��EWv }v �p؁� ;��a�8�@z �Hి맠���π�����n]pс���o H+ H+�]�E�Jd��@Z�LAH+�)�i%ࢿk%��R��5}�c)��ZMUM`}�f)�Bz��!��~4�C�1���7Ѡ�!�"�$D�^�GQKE��,*z�dQ��}�x��fq��0�[gf���L�,�)����L�,�-�y�i��<j��5�Q#/7-֙��LM�4ʢeqn��/��K�_?=}4|cX4t�UKG��,:��d��^g^t�יv�Q=��7/�!��{H�����7j��} �  �F����Ѽ�O��9�>��FY�gp�(���`|,��B�Š�,ݼȋA;/�I?/XLz���^�Ť���B���^��4��Ť�,f�/���%XLv/���K��b�k�b,;�ȋ��`|V,��&`�>� �[��bѧ
�FU���#/6��ȋM'0�M+0�b��f`��t�Ŧ,v�/�Ö&X�41G65��]M�8lk"/��`q���zq�7���1���1X�,�_�����I�s�i$�9���|2�O�����������ǹ�}�k��ǹ���|^z�Y�୷�E^{�Y�ཷ�E^|�����ֳ��N`��J+0XTz���fq����6�8�e��+^��/��\ٰD�+;�~���aĹ�#�87���ƞ0�,/���5WFu����i���W�R�ُ�e���q�sD�FyY��/u�� Q�Q^�d�Kg?Ih�W���͋�dz^A�7=��֛>w�ZozA�7=��֛���[A�7=��֛����ZozA�7-'��Š9,�)`1hO�>/�)/�5OT�bҡ�����L����-z��ϋ�/2k=����_,d��ȋŚy�XS��bM�55X,��`�XS#/kj�XY��y�hY�E�
�/�
֦Mcrg��^�������x�����t��צy�6�C�3_^�u
x� x� r'��"�_,dփ`ԃ`ԃXS�z,�z,�z��/,잍eakFj�����5�֌�h^ؚ����G�B4�%���1XS�G��/q$��[@<�Vh|�k���Q���tZ_|^�����E����@st�_�e?�D���R�Q��f���!���^P�_L�u%5C��gH��֕��GSm]I���u%5G5<G
���F�ٺ�eѲ8Yغ�V�5c���	���5c�גk�礑�f��Z�[�Z4Xؚ�V�5�/{�fk�_�Z�gq����!���;�98y�{����{����8Z_�A��<h-�=?�-B��E��7c�{~Л�<�Ao��,�˳�)<�Q<�g5ʂ��FYLz3�g��xF��y�j���Y��yқ�ތ��ޘ�f�Ť7c��gћ���X�f�Ţ7��B����X�������e��Gz���a	y��Gz�x���#!/6�H/2�H/�a	,6�Hȋ�>Xl��^,�z�8Yl����}$�8�#!/�Hȋ�>�Ⰿ��8�#��a	,�H`qد����[;�:��2��:������{��q�h�mG��󶎣F��U �续s9�h���Gs�h�*�^���8��������za�ǳ��?�����g��?���������랗�b/ί�fq�{��g'��}�G���'��Q��5�ѣFY�Cz�l�gq|^t{L����u��O���Q-�����/�}	�h�K�Ec_,�`�ؗ@^4�%���/�}	���K�E���e<��<���g�`���,:���E�3V�E�3V�|Ɗ9j�+X>c�����"����55X��`1XS�=R���b��F^L��X/&kj�����b���{�>�8���'�}��2�'ͷƷ=aj���ٞ�~�S��ԃ���A���d~?����_��nOF��s�x��/�� x��_x���~�k�_��Z�ׁ�b�,6�u`�ٯ��~�k�_�}Q��f_,v��\gO
�Rv{T�z�۳��ԃ���A��;�`a��Rv{^�z����ԃݞ�����`T�&���?5H��ku��S��Y/�Oj��32��qf�9:��4���������	?�`��{�^5z�ݚi��-��=v{����L��؝�Fﱻ���Y�B���7��ν���WW�N4z=��LSUs3�r��F����5E��L�gd����i4��4S5;�h��i�jn��%�H�QMU�#�s�8��{�R����9�h��ϡf�5�L�s���9�h��ϡF纟�s��8��C�UMM4����?���1�8׋i�L^_��4�b�L���ܙF��y2���7�(�U2��X5�(��͗��F������b���hQD���?"G�S������ŏ����c�O������ŏ����s�"�5�����������/.~Di����ן����\x      �   �   x�m�9nC1�Zs��CR[�*n���#
���z ���(��a������2N�z���Y��Gw�����N=NG����_��V��hX����c[�B�ߖ�V%�w�`j4��4O,�]10S��w�z�l�vՀW�����U��>T>Ua��h"�Z�����:�� �ND]ˉ�J��������I�D�jE�jC�jG�S�сl��E�l9T�=�|�S������t      �   �  x�}��n�0E��X~ƻ*i��� �� ��D�Hˢ=x�/�G�K:#ʭ��\�S"g.��$�]&�~���Me�3
�KV�[��l
\&W#�Ed�8u��0o
*A�Ѐ!b_������#\���x�7��,�f�Һ�2<�� ��B&X�'���P�AS|5&�z ��=� 5�\�-��A)�`�3ܸB�ǅ�u��V���cJ��Rޔ�"4�~���"�B�$��Ƭ�HQ�����?Ē^+~�ס��#�Kg	
�4�X̮ƣX]�Y'�'�����1jĔ��ƻ�P'5��.�n�?�~÷�f�켩>��	H�0��0�&a��}�4"b�����!Ai� �7��zۊh0�����(܁���<�����c�t+�wA�
J��U�D��ĽF!|�v�&M�m|��w�W�[�,y��GψԈ	�QIsi�W)5��<Ĉe�3�4�9�i��L����Ȃ�Ό��<
{j�V�|V�ޘR:�Q߈���mX̱
���hv�������X%��t{�/��/
�FkIϖ�@:��I�0��\Sa;�j��R�@cF��0��^��J�����{��6��[��?�\f̭�_*�4n�����W3�tT!J$pR~/�*�\�Ԛ}&��W�F�Q�ƿ۠����ڵ7��yj�-�kP�wp�-r����'�ϳ^���/��      �   ~   x�]Ͻ�0���0H��
�`g`E
tba���<>�O¬��wr�j����5C�Fi��E�,ۗ�-"��
��<��<og�]��ׄ�bKi�y�Es����SO��V������@�} i�2U      �   /  x�m�Mj�0��ϧ�	��4?�5?��`l誛ilbŶl$'�]O�C�$�	�t@0��'i�H�"B�!}$��A��ˡ!U��m�u��L���%"��n��-UO�-	�3��L%�|!�uF��HY��)�����=��\�9R�5a	�@,�q;J+$ԫvp���(}o�&�sa�Ȟtnx+hv��yQt��t��12:+wk;(��`]҅�)�
{'�@o7��ߞ�"{�5ņ�קkѤs��q3�!���7�Ǥwn��-ۊ���
�iQq�ďa�z`>F������!      �   �   x�eұj1��Z�0A���I�cR�6���?��*�>q��Z�?J���q?�Z�P�dCW�dǥܒ�r$�rO�`=��3.�y��/�j����	�zƳ�M=3I0Գ��6���8�{N�uo�����è�2;�ȼ<���aM}�`��;���t���ϽC=C9`��#ԫ.��~���7CPuc      �      x������ � �      �      x������ � �      �     x�e�[n�@E��V�
F����l#R�@��(8�w�v=���U}�>�\(��n,�a(>�k�my�2��=�8B�H�э��(Z)X#8�ϸy�V
6~��Þ��l6��붮�i���V΁lgؓ�s,����DG�]��u��s�Q��<X99g/FJ�$�0R�� h��u6��q	
<�l��|�������	8��|�W��)��O��Z�=�Z4��s�ي�`r��z�x��|uP����-���Q�'�\ߕaό��+�z3]W�2�M_���DÉ�h�ʕ\1��[11�T[!2D[�Ů�H/��F<A횭e̵[16ʘi�Bh�m�z��?�[�PF4A����d$�k�b��`��
QF��v�!}��
��5$�\J�������i�氏	)�Sb��ݖ:?tcCIt�@�J�Qֳ�뺧Y�Ҧ�EUKj�[�%���8@�j��#�u>3"E�)|&H�ε�_���"4A�ʮ�庮�e���Q�L�9���2Cۼ�B�&a�K2��lv܅C��3�� �~��      �   {  x���[�����k��~�ʹ].��I6���
�vvrR 
�@sU����>f���	5��2j�1��n�����ü��l>-AOrFGqx�
�<� �ǭD���%|5��b��g�憋���g��X�U~��>�����@B�Ir`@�������c�KN�h�b�
�+�/H�B҅\c#҆|��_�<g\[���fhfԩcY�Xk�6����_�MgY��W�9��h�_]�7�Ny��g���Ψ[H�[�`�.IFXa�@�{|@�}!7?��^��|�b����=G�-�q�{G�i{���2�A���F�Ta�!c֬g.���2��b>��}<M$�7�����@�L�(,��e'���^���]�:�9A����yO�*�U�8:��N#U�\K?���$8;V�bh#6<���ďC5�[c�+��Sc�������/��NO�@^�t3!]L;�`��ߔ�U�Z]����*�A'�x�:g�lY��T����2m/��yp�U�N����������
�?T�Hc���.�o!OUE7^�\��%	�}��5��S1㰚�,й�����2}�Msy�i����f�[-�d��Y��)UQ/6�	�;y��$hn<j��݆ovӕty���!_�
�A�!��똇�0�'qχ���VI��zg�m���z��-��cn���sAr.+w/�I9z�}��f,>4��_�Ƨ�?�A�*ݜ*PAD_��s�Ts�1��c2���t:ok�ka���
�k�S��m�oj�¹l��2^�KIT��{`��12�n��.D]"u��Q�����:^}g}��k��;zȢbZH:K0I���q�iQ�����q�k7������+�vdEs��߆A��x�C��p���F\�Su��X1���Ͷ�z-[Q���1uB颌��(ե�,#�'�N4VQ��Z�٬���/���	�j>����"Y��z
��pJ˵���e�j���QJђ����S��������A2��4��!z'�.���x������.sA� $��-��sRc�6��:�0�{Yr�`��9���J[���*:�������&�<��I�@��c�x`f,g[0yY����3�tۭ����&��P�\n�\��-뀍+�-�e���>l��vefR"����G�wv`/U� x��sOa`����(O,���t�S|� ��q�fЯ���ۆt�z���9T`�8��6*�F$���Ca�ʅ���p�ސZb�;.���X�n}%7��~
�~�1�~�?s�i���=dω�P��u���^�|\g�e��Z[+�O�ғV�^P���I^�+QZ������]�Z$MHS�ư�πs�����G �y�o������:a|w
zE��Spc��$��{W������?Ȭ�j      �      x������ � �      �      x������ � �      �      x��\m����<���A���o^{�ֻ���qr�бK;c�bF��_��_rU��]lj�NH�x��]�ê�j�+ WV ��k��Ҵ����V�J�t-��k����q�=��?���xl�m����W���n��n��������rW�p|�־�Ax'��l����VM�F��2k���B��/����W�����~D�a�#���v-D�e0�rlQ�ul3b���Z��Y��d������� ��ĵ%���7^h?ُy���H���5����p��*��z�k�Z�VZ-$�p��}!��$���B	�C�����P��..���ska[��a�S��&�xr���DcU��W/���a�>n��`I��A4 ��6(e�đ��լ�?��[�Rq8���Z�����3+��øB�!�u��Z+��pq~#��A��vʈ�"���C��P	���f��!]	��URz{�����պ��@zd^������CiP�D��r"rz�B�y��e�}`�HBS���Q��{u�z�x�n��Ϗ����I4��o�������������Ҟv-X�K�:�R�}F�����nu: �Ͽ�������î�n̯%r���ս�<n�=�\Ep���������,��NA��oލ<���s,��]lP`�<�����2�0g�.�w���hwf��|_��x`9���������B	gl����a
7��8O�]K��&�r�y]�p����wJ��un^"wt�3�`��g���;|���e���<���������mL���ҩ ��of�+x�@|Vzf	wM�$�ߦV˖a�20�C+�:s�N����|<��<�Ji��LWg;M���A�3���>��)i-������Zp4�Z�.5���Å:\�+�^P��Z`v��J����k!B6�3}u���ּ����J^4���[ҙ� :������z8F��a�����Z�6im���)��_}��z5�s���q['�.���`�8q��S����Cw�P7k&f��Z�V*���iu�-�-�I�;�OѢ�ݮ�Q�v�5m[鴓�MDq��_{t��6���'��0�� `�y�h��F��Wҟ�}��34"�}3����l� �����7͛����
upxOa���YF|\qDT���˙~B�McB.���h$�\r,|�4M���4�RL��r�i����4=���8���O�x>��{��6���s<C^�w!L�h����as���á���O�h1�1�r�͕����Ĥ�$fd}�Bg7��3�}-g�	T�!�Q�3����D���ZN�ގT^��!���F�'L�©CVf�.�o�	���r*��F:aܿ&�u&V+���女�B� �������A�N?����s��ぬ���jr?�|ιa>�Qr_��p����lΟ�l-TnS����'ۮ�B�r�1 ��	����z���D�rR�J��j75��x�F�%R�L]��;lW�}��nƗ�<g�X���7�q�7c�pf���0&�8�j	\�φt�P��w�u�t�cK
/���=�ٰ����K�qd���ZoS6{"�ȇ��_����'̀��((T]�l��f��m�������c1�RŞ�l��﻿<l��͛M�@i0o�|�Ǖ_�m��&^r~-5��Y~�
�{�cG�?�2_
J� 4�\�;:">�l��gvGqp�ŋ�7|�>��?�������_�J�/�?,�FD�y�}}D��9]�@�i�"p��������;�z�XMqsK�*���!�v���*6�,��¶VJ0�c�l������_��v�:'�VTd��(�Z3z��^�r�
����=㔜��J��4�W�)�͆$ex_ov��a_�8ou�vy�z���8�n� k�Q^Q�X筎�
�q��܀φ��ߺ�濻M���i�i��-���BO�!"��{����oVw�s�
�LG��B�C����5�Qk�8u�@��o�(TY�l����溾xN\D���0�|�%dé��K��pS���LL�0�/��11����g7�3�y�O�Rg�Iq�9Nw*`^!���ۤɆYhq�1N~4�{�4h]��p�g\n�b�¢Q-�
Wwٰ�o�a�-xe�I��1��\2��D�Z�YV�hȆe���(W4�1PA�|XD/Lʢc��!A�̆Eб�f�7�<(xU� .)K0����x:/���l!d��HQHJ��+ͳ�ZB,Tc@����BׄXHÀ�P��h�)���
g-H=\��N��O�J	��� i<0�
*29Lp#8�}���	��ڀ��Af=�Mh�z4�L`�Z��'��S$�s�Lf��
~�N&��L&+ R�1/y4$e��T-\�)���	�~�+�Kd�,��cD�8��U6�Ӂ���ﺇ�>4
�ʹ��P�Ά����i�e����lj��)���'�R�c��0�M|�y��y�Wr�ՂF	�`��[pN�IAk�!Z����v����Ut�с�Hc���l����!{�����5WT�k�+��gC�n����y��[_�)P���^78dC���ۯ��,��kp��Z�21e>$x$V�_�����r܀�}��h�ARfC4�S�5�?W�=�2��3�s��X�x�����Bi��V����c%��I>�c�z��y��_3�7$A�����D��6V#��B�ؗ���}�^�����A ���6t6�یI+��o��������qp����.�~��U(�_������rx�	������'��#�`���ca���o�C����=��!ŉL-��5
� ܀φ1���&a���T�9��G7�H#x���]���6/>u��n�&8�c[	:jP�o�̇���>VoH�7��sv8�AQ ��ӎsN�l�v>l7(���	�e�њ�a��$����mz�rV�|l�����D[���O`s�����$710�4v���Q�|/H�7_;���������'/{��C�������omUqT<eL�h�3T�R x��[\������$U+��1��Qr|�6�ݦy3�ĥ�4%&jF�F嘶�$̻�_���*�倖��e�r?s�'mhw<`�Qt0>���1��QB|�T����Rp�t=�/a���6��{�?<q�8ǌ�d�P��Y�96���v��`8��5~敲����3�ba�`s���g�?a�~��#?��3�vT#�n1�7�G��С+����:�g�Z��8'�����iC�t���p��I�Z��2>Z}_c}��3�y��2���p&�=��+��'-���3=�i�V19��e�1��J*>VL}_,}�˼}�_<����{&6/	o�������8sO���'�=.'fq��Ag]`���O
�vw���+��aG�I�����?Ix����]��ӆ�'В܎%����ʹ9G�� W�&h0|�?���J4E�0u�����J<�:���\�INs8Gy:��� ���^����i�iљ�������52�9T��N����L8}Sv���}��:x�)����"��FwU@� ����f�ݍ�3/����C)BS����F�ዖ�����:��ɗ��c�Y������Uoq���q��r95���j�h���nE�b9�%�1v5����s�)*$
tH�o9�W���8獊mSNaǦ�i�܅��`�3I�7��x'�7Fr��.�Q|�,je0�GaOϣ��󫋢���ёf��6����\lθ��գƤWH������ v ��j�TR;��6�.�h{��RC<`��H�|uQt;�s�j��Pc^M�huiT8X���lL���0�����.|Nݾ�XI0c�>ј�%�� ΩK!9�b��c��~��x�\ďo�{7M�s��0�U&�Y����#�0n��Phυ�`���h�Q%���П�b����1D倡�8]�o��9��.)���(B��Ψ3���@q}:��9yM�eڗt����t�3�s�R/)?�sz�Ԕ��{��BRŶY��H�.��A8ϴa�,�O��c��n�+�� �  �h��%�V-�c�3��7�̇x��1�Q������;=��*i8�����[y��B��5�i֫�=�j��"[0���mѻq^=�\�m�-In	sL�,��5�&̅���%�7L��Ȭ#��d.4�Jc�[֎ҕu�uh^|X���A�[����z��B{\О�-�瘴d�E��Bk\'�������x��s�=.2VҜ�v��d����s��BI,���<ʫ�z^����
��
A�f��wp���Ē,4$����N׼gp���R�!nT�!�SUz=*�ы$ZQ}5�g�<�)���P#���M������.K{c�lx�@U>����΅�
��mD/�wu.�U�F����Z k:.:�+D#`�M?��?E�l�\h������?��F�(�8/O�{{\;�[�UDI�Ǝʲ�s�9����GH�S��M�ɖ����+�c������渒 ���Hd�B��l�9�((�B�����IZS6�]Z��rU�T`n��T<RY+`ى���z�n[�*��B�8mK[f�K
��#Ẕ�$SY��Gm�%.&}iIK�Sc�����eָ���{���WU�;Ⱥ�.L�{S\Ft�e9�)k=���N�%�m�H䂴�]B�"2�j[d���
�S۹ʺ���Eָ~�oi9<Sҏ'�p^�.�U���5�D*���)�ޖ6z����X�4Ʀ�]:k���-�V���PL�ǟ�ʚYc�r{��8��1���L]g���r����ixș�ƫ��¢un��BV�/�He���u�^��m��BV�_�ҏ/��p��n�9ͅ�o��"�QzlB�v�-�����K��y=*�|��"���(�HsnzKk��B���Wa�!'d-f��!�&�dDZ�R����CO��_�Za��3�/k.�k���ٳg�Iձ!      �   �   x�M�I�0E���A�e��`R�"�bg���"u��'�S�>i�e�@��B�K�">E�]�K��U��L.Em5]3�p!�_[���H�I�N-�[Ge떶u���z�S�����j{1��f�Rhk���[�;���e�H=      �     x����n�8��ӧ����H��	�!4�&��cgl����R�E�3�\$�yx������BM�LMl(^ _��ըj!+����/�k)��p�)u��~M��V#�,��x�^�TV�g�:�ӥ��� ?������g�xxC��o)P}���>�2�p�`�!i�ǩ���p|�#���SR����=,5�_��M�"f��@X�i����)ᚆK3������3��;ӯvi�&[��&g�m�W�Ħ}��43�Ԛ�_������#t��kL�)���o�~�TB�Br�ǭ���Bv����Z�k��bۜ���=i�!\�8��'q�ڒ�����v�zd�Sޖăf��ͯ��	%�o
�L;���5h�7,� ܮdW
ס���J�W��(�MN;ຽ������s%��c��~�X�EaK(xmbo��M�)��E��=�����U5R��V�0�x|����FS]	����"N�M�ܾV�Z�JK�=�(Y���2�IQV
*V�'�"���F�5= h��-\�f�]	i&���%�Z)TƗ��a5]��8-'"<���U�*'��Ռ�5�c�g	�x-7 �g��҈�A��s�7z�)��t��Z[j�:�^y���{��p�n� �0C~��7P�����e�Wyk��_��r�F���_ʉ�=�s�������� h� �ˠk��ѼZAs2��$ e�2(r`+�R`������.���]�a`��	A����?V���*^�6,����ޯ�YBᶮ�j���Z�R,*J�2������+p�      �   u  x�-λr�@  �Z�"��}�d�STD]�;� ������I��T'�n��C�~�i�H�G?�4�W];���x�W�3�w)��^�����m���۵�6Zt���k�_ D�Ȇ��b�e�5�r^3^94�a�l�BP� �	��R�p�ˎYa��}q�R�3*�u�ɦ4*����-+˵(�jMwņ��	+=n��Ü;�������Elѳ��x-�Rx���{�q6m�ɧ"�#~��Ix�& $(��J�������iv���ze����eP�Fp�7�~�xB'⵫}�P�|c�����������gk��ʱ5¶��ˡ���rϴ��:.n�FO���\���I}@��<�%D����l:�� ���     