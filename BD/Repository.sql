PGDMP                     
    z        
   Repository    14.2    14.2 U    j           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            k           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            l           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            m           1262    82259 
   Repository    DATABASE     h   CREATE DATABASE "Repository" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE "Repository";
                postgres    false            ?            1259    98872 	   algorithm    TABLE     ?   CREATE TABLE public.algorithm (
    idalgorithm integer NOT NULL,
    algorithminfo character varying(200),
    iduser integer
);
    DROP TABLE public.algorithm;
       public         heap    postgres    false            ?            1259    98871    algorithm_idalgorithm_seq    SEQUENCE     ?   ALTER TABLE public.algorithm ALTER COLUMN idalgorithm ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.algorithm_idalgorithm_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            ?            1259    99011 	   apperture    TABLE     ?   CREATE TABLE public.apperture (
    idapperture integer NOT NULL,
    axisx integer,
    axisy integer,
    openmembrane boolean,
    intensity double precision,
    idtreatment integer,
    idbeam integer
);
    DROP TABLE public.apperture;
       public         heap    postgres    false            ?            1259    99010    apperture_idapperture_seq    SEQUENCE     ?   ALTER TABLE public.apperture ALTER COLUMN idapperture ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.apperture_idapperture_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    232            ?            1259    98995    beamlet    TABLE     ?   CREATE TABLE public.beamlet (
    idbeamlet integer NOT NULL,
    intensity double precision,
    idtreatment integer,
    idbeam integer
);
    DROP TABLE public.beamlet;
       public         heap    postgres    false            ?            1259    98994    beamlet_idbeamlet_seq    SEQUENCE     ?   ALTER TABLE public.beamlet ALTER COLUMN idbeamlet ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.beamlet_idbeamlet_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    230            ?            1259    98984    beamtreatment    TABLE     ?   CREATE TABLE public.beamtreatment (
    idbeam integer NOT NULL,
    gantryangle double precision,
    couch double precision,
    collimator double precision,
    idtreatment integer
);
 !   DROP TABLE public.beamtreatment;
       public         heap    postgres    false            ?            1259    98983    beamtreatment_idbeam_seq    SEQUENCE     ?   ALTER TABLE public.beamtreatment ALTER COLUMN idbeam ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.beamtreatment_idbeam_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    228            ?            1259    98856    cases    TABLE     .  CREATE TABLE public.cases (
    idcase integer NOT NULL,
    casename character varying(100),
    datacase character varying(100),
    numberbeamangles integer,
    totalnumberbeamlets integer,
    noncoplanar boolean,
    beamletsize character varying(10),
    iduser integer,
    idcancer integer
);
    DROP TABLE public.cases;
       public         heap    postgres    false            ?            1259    98855    cases_idcase_seq    SEQUENCE     ?   ALTER TABLE public.cases ALTER COLUMN idcase ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cases_idcase_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            ?            1259    98922    indexprescription    TABLE     ?   CREATE TABLE public.indexprescription (
    idindex integer NOT NULL,
    indexname character varying(40),
    description character varying(200)
);
 %   DROP TABLE public.indexprescription;
       public         heap    postgres    false            ?            1259    98921    indexprescription_idindex_seq    SEQUENCE     ?   ALTER TABLE public.indexprescription ALTER COLUMN idindex ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.indexprescription_idindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            ?            1259    98899    organ    TABLE     a   CREATE TABLE public.organ (
    idorgan integer NOT NULL,
    organname character varying(60)
);
    DROP TABLE public.organ;
       public         heap    postgres    false            ?            1259    98898    organ_idorgan_seq    SEQUENCE     ?   ALTER TABLE public.organ ALTER COLUMN idorgan ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.organ_idorgan_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            ?            1259    98904 	   organcase    TABLE     ?   CREATE TABLE public.organcase (
    numberofvoxels integer,
    volume double precision,
    idorgan integer,
    idcase integer
);
    DROP TABLE public.organcase;
       public         heap    postgres    false            ?            1259    98951    prescription    TABLE     ?   CREATE TABLE public.prescription (
    idprescription integer NOT NULL,
    prescribeddose character varying(80),
    idorgan integer,
    idcase integer,
    idindex integer
);
     DROP TABLE public.prescription;
       public         heap    postgres    false            ?            1259    98950    prescription_idprescription_seq    SEQUENCE     ?   ALTER TABLE public.prescription ALTER COLUMN idprescription ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.prescription_idprescription_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            ?            1259    98883 	   treatment    TABLE     ?   CREATE TABLE public.treatment (
    idtreatment integer NOT NULL,
    treatmentinfo character varying(200),
    numberofbeams integer,
    numberofbeamlets integer,
    idalgorithm integer,
    idcase integer
);
    DROP TABLE public.treatment;
       public         heap    postgres    false            ?            1259    98882    treatment_idtreatment_seq    SEQUENCE     ?   ALTER TABLE public.treatment ALTER COLUMN idtreatment ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.treatment_idtreatment_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            ?            1259    98927    treatmentsummary    TABLE     ?   CREATE TABLE public.treatmentsummary (
    indexvalue double precision,
    idindex integer,
    idorgan integer,
    idcase integer,
    idtreatment integer
);
 $   DROP TABLE public.treatmentsummary;
       public         heap    postgres    false            ?            1259    98850    typeofcancer    TABLE     ?   CREATE TABLE public.typeofcancer (
    idcancer integer NOT NULL,
    cancername character varying(60),
    cancerdescription character varying(200)
);
     DROP TABLE public.typeofcancer;
       public         heap    postgres    false            ?            1259    98849    typeofcancer_idcancer_seq    SEQUENCE     ?   ALTER TABLE public.typeofcancer ALTER COLUMN idcancer ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.typeofcancer_idcancer_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212            ?            1259    98842    users    TABLE     ?   CREATE TABLE public.users (
    iduser integer NOT NULL,
    username character varying(80) NOT NULL,
    userpassword character varying(20) NOT NULL,
    email character varying(80) NOT NULL,
    charge character varying(50)
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    98841    users_iduser_seq    SEQUENCE     ?   ALTER TABLE public.users ALTER COLUMN iduser ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_iduser_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210            W          0    98872 	   algorithm 
   TABLE DATA           G   COPY public.algorithm (idalgorithm, algorithminfo, iduser) FROM stdin;
    public          postgres    false    216   vh       g          0    99011 	   apperture 
   TABLE DATA           l   COPY public.apperture (idapperture, axisx, axisy, openmembrane, intensity, idtreatment, idbeam) FROM stdin;
    public          postgres    false    232   ?h       e          0    98995    beamlet 
   TABLE DATA           L   COPY public.beamlet (idbeamlet, intensity, idtreatment, idbeam) FROM stdin;
    public          postgres    false    230   ?h       c          0    98984    beamtreatment 
   TABLE DATA           \   COPY public.beamtreatment (idbeam, gantryangle, couch, collimator, idtreatment) FROM stdin;
    public          postgres    false    228   i       U          0    98856    cases 
   TABLE DATA           ?   COPY public.cases (idcase, casename, datacase, numberbeamangles, totalnumberbeamlets, noncoplanar, beamletsize, iduser, idcancer) FROM stdin;
    public          postgres    false    214   Fi       ^          0    98922    indexprescription 
   TABLE DATA           L   COPY public.indexprescription (idindex, indexname, description) FROM stdin;
    public          postgres    false    223   ?i       [          0    98899    organ 
   TABLE DATA           3   COPY public.organ (idorgan, organname) FROM stdin;
    public          postgres    false    220   ?i       \          0    98904 	   organcase 
   TABLE DATA           L   COPY public.organcase (numberofvoxels, volume, idorgan, idcase) FROM stdin;
    public          postgres    false    221   j       a          0    98951    prescription 
   TABLE DATA           `   COPY public.prescription (idprescription, prescribeddose, idorgan, idcase, idindex) FROM stdin;
    public          postgres    false    226   Mj       Y          0    98883 	   treatment 
   TABLE DATA           u   COPY public.treatment (idtreatment, treatmentinfo, numberofbeams, numberofbeamlets, idalgorithm, idcase) FROM stdin;
    public          postgres    false    218   zj       _          0    98927    treatmentsummary 
   TABLE DATA           ]   COPY public.treatmentsummary (indexvalue, idindex, idorgan, idcase, idtreatment) FROM stdin;
    public          postgres    false    224   ?j       S          0    98850    typeofcancer 
   TABLE DATA           O   COPY public.typeofcancer (idcancer, cancername, cancerdescription) FROM stdin;
    public          postgres    false    212   ?j       Q          0    98842    users 
   TABLE DATA           N   COPY public.users (iduser, username, userpassword, email, charge) FROM stdin;
    public          postgres    false    210   Hk       n           0    0    algorithm_idalgorithm_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.algorithm_idalgorithm_seq', 2, true);
          public          postgres    false    215            o           0    0    apperture_idapperture_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.apperture_idapperture_seq', 2, true);
          public          postgres    false    231            p           0    0    beamlet_idbeamlet_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.beamlet_idbeamlet_seq', 3, true);
          public          postgres    false    229            q           0    0    beamtreatment_idbeam_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.beamtreatment_idbeam_seq', 2, true);
          public          postgres    false    227            r           0    0    cases_idcase_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cases_idcase_seq', 2, true);
          public          postgres    false    213            s           0    0    indexprescription_idindex_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.indexprescription_idindex_seq', 2, true);
          public          postgres    false    222            t           0    0    organ_idorgan_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.organ_idorgan_seq', 2, true);
          public          postgres    false    219            u           0    0    prescription_idprescription_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.prescription_idprescription_seq', 2, true);
          public          postgres    false    225            v           0    0    treatment_idtreatment_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.treatment_idtreatment_seq', 2, true);
          public          postgres    false    217            w           0    0    typeofcancer_idcancer_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.typeofcancer_idcancer_seq', 2, true);
          public          postgres    false    211            x           0    0    users_iduser_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.users_iduser_seq', 2, true);
          public          postgres    false    209            ?           2606    98910    organcase organcase_idcase_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.organcase
    ADD CONSTRAINT organcase_idcase_key UNIQUE (idcase);
 H   ALTER TABLE ONLY public.organcase DROP CONSTRAINT organcase_idcase_key;
       public            postgres    false    221            ?           2606    98908    organcase organcase_idorgan_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.organcase
    ADD CONSTRAINT organcase_idorgan_key UNIQUE (idorgan);
 I   ALTER TABLE ONLY public.organcase DROP CONSTRAINT organcase_idorgan_key;
       public            postgres    false    221            ?           2606    98876    algorithm pk_algorithm 
   CONSTRAINT     ]   ALTER TABLE ONLY public.algorithm
    ADD CONSTRAINT pk_algorithm PRIMARY KEY (idalgorithm);
 @   ALTER TABLE ONLY public.algorithm DROP CONSTRAINT pk_algorithm;
       public            postgres    false    216            ?           2606    99015    apperture pk_apperture 
   CONSTRAINT     ]   ALTER TABLE ONLY public.apperture
    ADD CONSTRAINT pk_apperture PRIMARY KEY (idapperture);
 @   ALTER TABLE ONLY public.apperture DROP CONSTRAINT pk_apperture;
       public            postgres    false    232            ?           2606    98999    beamlet pk_beamlet 
   CONSTRAINT     W   ALTER TABLE ONLY public.beamlet
    ADD CONSTRAINT pk_beamlet PRIMARY KEY (idbeamlet);
 <   ALTER TABLE ONLY public.beamlet DROP CONSTRAINT pk_beamlet;
       public            postgres    false    230            ?           2606    98988 "   beamtreatment pk_beamtreatmentbeam 
   CONSTRAINT     d   ALTER TABLE ONLY public.beamtreatment
    ADD CONSTRAINT pk_beamtreatmentbeam PRIMARY KEY (idbeam);
 L   ALTER TABLE ONLY public.beamtreatment DROP CONSTRAINT pk_beamtreatmentbeam;
       public            postgres    false    228            ?           2606    98860    cases pk_cases 
   CONSTRAINT     P   ALTER TABLE ONLY public.cases
    ADD CONSTRAINT pk_cases PRIMARY KEY (idcase);
 8   ALTER TABLE ONLY public.cases DROP CONSTRAINT pk_cases;
       public            postgres    false    214            ?           2606    98926 &   indexprescription pk_indexprescription 
   CONSTRAINT     i   ALTER TABLE ONLY public.indexprescription
    ADD CONSTRAINT pk_indexprescription PRIMARY KEY (idindex);
 P   ALTER TABLE ONLY public.indexprescription DROP CONSTRAINT pk_indexprescription;
       public            postgres    false    223            ?           2606    98903    organ pk_organ 
   CONSTRAINT     Q   ALTER TABLE ONLY public.organ
    ADD CONSTRAINT pk_organ PRIMARY KEY (idorgan);
 8   ALTER TABLE ONLY public.organ DROP CONSTRAINT pk_organ;
       public            postgres    false    220            ?           2606    98955    prescription pk_prescription 
   CONSTRAINT     f   ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT pk_prescription PRIMARY KEY (idprescription);
 F   ALTER TABLE ONLY public.prescription DROP CONSTRAINT pk_prescription;
       public            postgres    false    226            ?           2606    98887    treatment pk_treatment 
   CONSTRAINT     ]   ALTER TABLE ONLY public.treatment
    ADD CONSTRAINT pk_treatment PRIMARY KEY (idtreatment);
 @   ALTER TABLE ONLY public.treatment DROP CONSTRAINT pk_treatment;
       public            postgres    false    218            ?           2606    98854    typeofcancer pk_typeofcancer 
   CONSTRAINT     `   ALTER TABLE ONLY public.typeofcancer
    ADD CONSTRAINT pk_typeofcancer PRIMARY KEY (idcancer);
 F   ALTER TABLE ONLY public.typeofcancer DROP CONSTRAINT pk_typeofcancer;
       public            postgres    false    212            ?           2606    98846    users pk_users 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT pk_users PRIMARY KEY (iduser);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT pk_users;
       public            postgres    false    210            ?           2606    98848    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    210            ?           2606    98877    algorithm fk_algorithm    FK CONSTRAINT     x   ALTER TABLE ONLY public.algorithm
    ADD CONSTRAINT fk_algorithm FOREIGN KEY (iduser) REFERENCES public.users(iduser);
 @   ALTER TABLE ONLY public.algorithm DROP CONSTRAINT fk_algorithm;
       public          postgres    false    216    3223    210            ?           2606    99021    apperture fk_apperturebeam    FK CONSTRAINT     ?   ALTER TABLE ONLY public.apperture
    ADD CONSTRAINT fk_apperturebeam FOREIGN KEY (idbeam) REFERENCES public.beamtreatment(idbeam);
 D   ALTER TABLE ONLY public.apperture DROP CONSTRAINT fk_apperturebeam;
       public          postgres    false    228    232    3245            ?           2606    99016    apperture fk_apperturetreatment    FK CONSTRAINT     ?   ALTER TABLE ONLY public.apperture
    ADD CONSTRAINT fk_apperturetreatment FOREIGN KEY (idtreatment) REFERENCES public.treatment(idtreatment);
 I   ALTER TABLE ONLY public.apperture DROP CONSTRAINT fk_apperturetreatment;
       public          postgres    false    218    232    3233            ?           2606    99005    beamlet fk_beamletbeam    FK CONSTRAINT     ?   ALTER TABLE ONLY public.beamlet
    ADD CONSTRAINT fk_beamletbeam FOREIGN KEY (idbeam) REFERENCES public.beamtreatment(idbeam);
 @   ALTER TABLE ONLY public.beamlet DROP CONSTRAINT fk_beamletbeam;
       public          postgres    false    228    230    3245            ?           2606    99000    beamlet fk_beamlettreatment    FK CONSTRAINT     ?   ALTER TABLE ONLY public.beamlet
    ADD CONSTRAINT fk_beamlettreatment FOREIGN KEY (idtreatment) REFERENCES public.treatment(idtreatment);
 E   ALTER TABLE ONLY public.beamlet DROP CONSTRAINT fk_beamlettreatment;
       public          postgres    false    218    230    3233            ?           2606    98989 '   beamtreatment fk_beamtreatmenttreatment    FK CONSTRAINT     ?   ALTER TABLE ONLY public.beamtreatment
    ADD CONSTRAINT fk_beamtreatmenttreatment FOREIGN KEY (idtreatment) REFERENCES public.treatment(idtreatment);
 Q   ALTER TABLE ONLY public.beamtreatment DROP CONSTRAINT fk_beamtreatmenttreatment;
       public          postgres    false    218    3233    228            ?           2606    98866    cases fk_casescancer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cases
    ADD CONSTRAINT fk_casescancer FOREIGN KEY (idcancer) REFERENCES public.typeofcancer(idcancer);
 >   ALTER TABLE ONLY public.cases DROP CONSTRAINT fk_casescancer;
       public          postgres    false    214    212    3227            ?           2606    98861    cases fk_casesuser    FK CONSTRAINT     t   ALTER TABLE ONLY public.cases
    ADD CONSTRAINT fk_casesuser FOREIGN KEY (iduser) REFERENCES public.users(iduser);
 <   ALTER TABLE ONLY public.cases DROP CONSTRAINT fk_casesuser;
       public          postgres    false    214    3223    210            ?           2606    98916    organcase fk_organcasecases    FK CONSTRAINT     }   ALTER TABLE ONLY public.organcase
    ADD CONSTRAINT fk_organcasecases FOREIGN KEY (idcase) REFERENCES public.cases(idcase);
 E   ALTER TABLE ONLY public.organcase DROP CONSTRAINT fk_organcasecases;
       public          postgres    false    214    221    3229            ?           2606    98911    organcase fk_organcaseorgan    FK CONSTRAINT        ALTER TABLE ONLY public.organcase
    ADD CONSTRAINT fk_organcaseorgan FOREIGN KEY (idorgan) REFERENCES public.organ(idorgan);
 E   ALTER TABLE ONLY public.organcase DROP CONSTRAINT fk_organcaseorgan;
       public          postgres    false    221    220    3235            ?           2606    98961     prescription fk_prescriptioncase    FK CONSTRAINT     ?   ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT fk_prescriptioncase FOREIGN KEY (idcase) REFERENCES public.organcase(idcase);
 J   ALTER TABLE ONLY public.prescription DROP CONSTRAINT fk_prescriptioncase;
       public          postgres    false    221    3237    226            ?           2606    98966 !   prescription fk_prescriptionindex    FK CONSTRAINT     ?   ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT fk_prescriptionindex FOREIGN KEY (idindex) REFERENCES public.indexprescription(idindex);
 K   ALTER TABLE ONLY public.prescription DROP CONSTRAINT fk_prescriptionindex;
       public          postgres    false    3241    223    226            ?           2606    98956 !   prescription fk_prescriptionorgan    FK CONSTRAINT     ?   ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT fk_prescriptionorgan FOREIGN KEY (idorgan) REFERENCES public.organcase(idorgan);
 K   ALTER TABLE ONLY public.prescription DROP CONSTRAINT fk_prescriptionorgan;
       public          postgres    false    226    3239    221            ?           2606    98888    treatment fk_treatmentalgorithm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.treatment
    ADD CONSTRAINT fk_treatmentalgorithm FOREIGN KEY (idalgorithm) REFERENCES public.algorithm(idalgorithm);
 I   ALTER TABLE ONLY public.treatment DROP CONSTRAINT fk_treatmentalgorithm;
       public          postgres    false    218    3231    216            ?           2606    98893    treatment fk_treatmentcases    FK CONSTRAINT     }   ALTER TABLE ONLY public.treatment
    ADD CONSTRAINT fk_treatmentcases FOREIGN KEY (idcase) REFERENCES public.cases(idcase);
 E   ALTER TABLE ONLY public.treatment DROP CONSTRAINT fk_treatmentcases;
       public          postgres    false    218    3229    214            ?           2606    98940 )   treatmentsummary fk_treatmentsummarycases    FK CONSTRAINT     ?   ALTER TABLE ONLY public.treatmentsummary
    ADD CONSTRAINT fk_treatmentsummarycases FOREIGN KEY (idcase) REFERENCES public.cases(idcase);
 S   ALTER TABLE ONLY public.treatmentsummary DROP CONSTRAINT fk_treatmentsummarycases;
       public          postgres    false    214    3229    224            ?           2606    98930 )   treatmentsummary fk_treatmentsummaryindex    FK CONSTRAINT     ?   ALTER TABLE ONLY public.treatmentsummary
    ADD CONSTRAINT fk_treatmentsummaryindex FOREIGN KEY (idindex) REFERENCES public.indexprescription(idindex);
 S   ALTER TABLE ONLY public.treatmentsummary DROP CONSTRAINT fk_treatmentsummaryindex;
       public          postgres    false    3241    224    223            ?           2606    98935 )   treatmentsummary fk_treatmentsummaryorgan    FK CONSTRAINT     ?   ALTER TABLE ONLY public.treatmentsummary
    ADD CONSTRAINT fk_treatmentsummaryorgan FOREIGN KEY (idorgan) REFERENCES public.organ(idorgan);
 S   ALTER TABLE ONLY public.treatmentsummary DROP CONSTRAINT fk_treatmentsummaryorgan;
       public          postgres    false    224    220    3235            ?           2606    98945 -   treatmentsummary fk_treatmentsummarytreatment    FK CONSTRAINT     ?   ALTER TABLE ONLY public.treatmentsummary
    ADD CONSTRAINT fk_treatmentsummarytreatment FOREIGN KEY (idtreatment) REFERENCES public.treatment(idtreatment);
 W   ALTER TABLE ONLY public.treatmentsummary DROP CONSTRAINT fk_treatmentsummarytreatment;
       public          postgres    false    224    3233    218            W   2   x?3???K?/?ML???SHI?QH?I?/?,???4?2?-?`?????? 	_h      g   "   x?3?45?44?L?4?4?4?2B?q??qqq d?      e      x?3?4?341?4?4?2????b???? @5      c      x?3?43?341?4 BC.#d?W? ]??      U   O   x?3?t????K?/?ML???S(?O*JUH?QHN?KN-?4??420?,?4?0?B.#Ng?Z?8??`Z?8??b???? ?O      ^   7   x?3?t?4?tI-N.?,H???SHI?Q??K?LNL?/R0?2?PţĈ+F??? c?      [   !   x?3???LOL??2?(?/.I,I?????? ^M?      \       x?324?42?3?4?4?2?q?8??b???? L?}      a      x?3?43p??4A.#?ȉ???? S??      Y   B   x?3???K?/?ML???S(?O*JUH?Q()J,I??L?+??442?423?4?4?2"^?Py? =Vg      _      x?33?4?@.3??D????? ?I      S   A   x?3?tN?KN-RHIU(?/.I,I?tI-N.?,H?????($??p!???LOL?W??4F??? ?p      Q   v   x?M?;
?0 ??:?O???ZB?%C?.?,????9)????s?*?p?V=?8?v?0N?O.qÔ????ວ?A?l	???7????>1???8?]??_NɃC"???f?
? >??+
     