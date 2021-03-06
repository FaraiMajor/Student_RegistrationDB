--
-- Name: course; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.course (
    course_id character varying NOT NULL,
    course_name character varying,
    course_credits character varying
);


ALTER TABLE public.course OWNER TO "user";

--
-- Name: instructor; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.instructor (
    instructor_id character varying NOT NULL,
    instructor_name character varying,
    instructor_department character varying
);


ALTER TABLE public.instructor OWNER TO "user";

--
-- Name: registration; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.registration (
    registration_id character varying NOT NULL,
    type character varying,
    student_id character varying,
    section_id character varying
);


ALTER TABLE public.registration OWNER TO "user";

--
-- Name: section; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.section (
    section_id character varying NOT NULL,
    classroom character varying,
    "date/time" character varying,
    instructor_id character varying,
    course_id character varying
);


ALTER TABLE public.section OWNER TO "user";

--
-- Name: student; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.student (
    student_id character varying NOT NULL,
    student_name character varying,
    student_major character varying
);


ALTER TABLE public.student OWNER TO "user";

--
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.course (course_id, course_name, course_credits) FROM stdin;
1	English	3
2	Math	4
3	Data Science & Algorithm	4
4	Spanish	3
5	History	3
\.


--
-- Data for Name: instructor; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.instructor (instructor_id, instructor_name, instructor_department) FROM stdin;
1	Matt Jones	Computer Science
4	Kuda Mpaya	Computer Science
2	Azita Mayeli	Accounting
3	Gerald Weiss	Finance
\.


--
-- Data for Name: registration; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.registration (registration_id, type, student_id, section_id) FROM stdin;
1	student	1	3
2	student	2	2
3	student	3	1
4	student	4	4
\.


--
-- Data for Name: section; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.section (section_id, classroom, "date/time", instructor_id, course_id) FROM stdin;
1	45	MW 10:00AM - 12:00PM	1	1
4	48	MW 2:00PM - 4:00PM	4	3
2	46	 MW 12:30PM - 1:45PM	2	2
3	47	MW 08:00AM - 09:30AM	3	4
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.student (student_id, student_name, student_major) FROM stdin;
1	Farai Major	Computer Science
2	Godie Willa	Information Technology
3	Godwill Wilson	Liberal Arts
4	Kristy Delacruz	Computer Science
\.


--
-- Name: instructor Instructor_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT "Instructor_pkey" PRIMARY KEY (instructor_id);


--
-- Name: registration Registration_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.registration
    ADD CONSTRAINT "Registration_pkey" PRIMARY KEY (registration_id);


--
-- Name: section Section_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.section
    ADD CONSTRAINT "Section_pkey" PRIMARY KEY (section_id);


--
-- Name: student Studen t_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT "Studen t_pkey" PRIMARY KEY (student_id);


--
-- Name: course Subject_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT "Subject_pkey" PRIMARY KEY (course_id);

