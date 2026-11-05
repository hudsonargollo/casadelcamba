--
-- PostgreSQL database dump
--

\restrict OsY6xGoQG4UO2GPxVwAlQm93HcSP1y6IEyXwRBm3IpbvnClMxsCoTaVtNBBiKib

-- Dumped from database version 15.19
-- Dumped by pg_dump version 15.19

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
-- Name: BranchStock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."BranchStock" (
    id text NOT NULL,
    "branchId" text NOT NULL,
    "productId" text NOT NULL,
    stock integer DEFAULT 0 NOT NULL,
    active boolean DEFAULT true NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."BranchStock" OWNER TO postgres;

--
-- Name: Category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Category" (
    id text NOT NULL,
    name text NOT NULL,
    slug text NOT NULL,
    description text,
    image text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."Category" OWNER TO postgres;

--
-- Name: Product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Product" (
    id text NOT NULL,
    name text NOT NULL,
    slug text NOT NULL,
    description text,
    price numeric(10,2) NOT NULL,
    "compareAtPrice" numeric(10,2),
    sku text,
    images text[] DEFAULT ARRAY[]::text[],
    material text,
    featured boolean DEFAULT false NOT NULL,
    active boolean DEFAULT true NOT NULL,
    "categoryId" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    specs text,
    brand text,
    contents text,
    details text
);


ALTER TABLE public."Product" OWNER TO postgres;

--
-- Data for Name: BranchStock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."BranchStock" (id, "branchId", "productId", stock, active, "updatedAt") FROM stdin;
cmw34ixk10008kx9zstcistpf	cmw34ixjo0004kx9zeoutb9rx	cmw34ixjv0006kx9ztjsbzen4	40	t	2026-11-05 05:47:25.153
cmw34ixkb000ckx9zq6ikygel	cmw34ixjo0004kx9zeoutb9rx	cmw34ixk9000akx9zw30s1t02	40	t	2026-11-05 05:47:25.164
cmw34ixkj000gkx9zkm0p87uc	cmw34ixjo0004kx9zeoutb9rx	cmw34ixkg000ekx9zfkybkajs	40	t	2026-11-05 05:47:25.172
cmw34ixkq000kkx9zgjk56k5r	cmw34ixjo0004kx9zeoutb9rx	cmw34ixko000ikx9zc7o2tyea	35	t	2026-11-05 05:47:25.178
cmw34ixkx000okx9zjq0vu868	cmw34ixjo0004kx9zeoutb9rx	cmw34ixkv000mkx9zvp0te93a	45	t	2026-11-05 05:47:25.185
cmw34ixl3000skx9z202z59yx	cmw34ixjo0004kx9zeoutb9rx	cmw34ixl1000qkx9zbd6ebbvs	45	t	2026-11-05 05:47:25.192
cmw34ixla000wkx9zr7gg9wwf	cmw34ixjo0004kx9zeoutb9rx	cmw34ixl8000ukx9zsxleztgs	40	t	2026-11-05 05:47:25.199
cmw34ixlh0010kx9ztupdwp6a	cmw34ixjo0004kx9zeoutb9rx	cmw34ixlf000ykx9z0pnulfab	35	t	2026-11-05 05:47:25.206
cmw34ixlp0014kx9ztnj9yuj3	cmw34ixjo0004kx9zeoutb9rx	cmw34ixln0012kx9z61jd3ppn	50	t	2026-11-05 05:47:25.214
cmw34ixlx0018kx9zhk418nwj	cmw34ixjo0004kx9zeoutb9rx	cmw34ixlu0016kx9zw0ey9tuo	40	t	2026-11-05 05:47:25.221
cmw34ixm5001ckx9zzraqc0zs	cmw34ixjo0004kx9zeoutb9rx	cmw34ixm2001akx9zqr3ysxyt	35	t	2026-11-05 05:47:25.23
cmw34ixmc001gkx9z7rasmsju	cmw34ixjo0004kx9zeoutb9rx	cmw34ixma001ekx9zpllll4hz	35	t	2026-11-05 05:47:25.237
cmw34ixmi001kkx9z331jy48b	cmw34ixjo0004kx9zeoutb9rx	cmw34ixmg001ikx9zahxvo0od	40	t	2026-11-05 05:47:25.243
cmw34ixmo001okx9zeohu9jb7	cmw34ixjo0004kx9zeoutb9rx	cmw34ixmm001mkx9zhv7dy4x7	40	t	2026-11-05 05:47:25.248
cmw34ixmu001skx9zj8r3jhrd	cmw34ixjo0004kx9zeoutb9rx	cmw34ixmr001qkx9zrktsbntj	40	t	2026-11-05 05:47:25.254
cmw34ixn0001wkx9zadyx310a	cmw34ixjo0004kx9zeoutb9rx	cmw34ixmy001ukx9zyfbrnelg	40	t	2026-11-05 05:47:25.26
cmw34ixn90020kx9z6zuoz4jh	cmw34ixjo0004kx9zeoutb9rx	cmw34ixn5001ykx9zjvz0mud9	60	t	2026-11-05 05:47:25.269
cmw34ixnf0024kx9zy6csizg3	cmw34ixjo0004kx9zeoutb9rx	cmw34ixnd0022kx9z26gizf6n	55	t	2026-11-05 05:47:25.276
cmw34ixnn0028kx9zmo7cmxa5	cmw34ixjo0004kx9zeoutb9rx	cmw34ixnk0026kx9zyyg9lt7f	30	t	2026-11-05 05:47:25.284
cmw34ixnu002ckx9zv102tl2s	cmw34ixjo0004kx9zeoutb9rx	cmw34ixns002akx9zg0j430xo	40	t	2026-11-05 05:47:25.291
cmw34ixo2002gkx9zix1tgijq	cmw34ixjo0004kx9zeoutb9rx	cmw34ixo0002ekx9zb6mb9rey	50	t	2026-11-05 05:47:25.299
cmw34ixo9002kkx9z7cplna5u	cmw34ixjo0004kx9zeoutb9rx	cmw34ixo7002ikx9zbbtghp0r	35	t	2026-11-05 05:47:25.306
cmw34ixof002okx9zxqo65cwq	cmw34ixjo0004kx9zeoutb9rx	cmw34ixod002mkx9zee73k5zk	25	t	2026-11-05 05:47:25.312
cmw34ixom002skx9zuz3y81g1	cmw34ixjo0004kx9zeoutb9rx	cmw34ixoj002qkx9zugagr28i	15	t	2026-11-05 05:47:25.318
cmw34ixot002wkx9z6wz55kxy	cmw34ixjo0004kx9zeoutb9rx	cmw34ixoq002ukx9zx3z9c822	25	t	2026-11-05 05:47:25.325
cmw34ixoz0030kx9zqv20kvvz	cmw34ixjo0004kx9zeoutb9rx	cmw34ixox002ykx9znnmxishz	25	t	2026-11-05 05:47:25.332
cmw34ixp50034kx9zsdi0er9o	cmw34ixjo0004kx9zeoutb9rx	cmw34ixp30032kx9zy0uqq95e	40	t	2026-11-05 05:47:25.338
cmw34ixpb0038kx9zwzo4v4ja	cmw34ixjo0004kx9zeoutb9rx	cmw34ixp90036kx9ztxkfwljd	20	t	2026-11-05 05:47:25.343
cmw34ixpg003ckx9zfmkanofc	cmw34ixjo0004kx9zeoutb9rx	cmw34ixpe003akx9zlekxz9ls	18	t	2026-11-05 05:47:25.348
cmw34ixpn003gkx9zpvtdyrul	cmw34ixjo0004kx9zeoutb9rx	cmw34ixpk003ekx9zgssisbuo	15	t	2026-11-05 05:47:25.355
cmw34ixpv003kkx9zrxffswru	cmw34ixjo0004kx9zeoutb9rx	cmw34ixps003ikx9zctrqq68z	16	t	2026-11-05 05:47:25.363
cmw34ixq1003okx9zpi3q08t8	cmw34ixjo0004kx9zeoutb9rx	cmw34ixpz003mkx9zrhcebjxb	14	t	2026-11-05 05:47:25.37
cmw34ixq8003skx9ztw7ksioa	cmw34ixjo0004kx9zeoutb9rx	cmw34ixq6003qkx9zvwmdubuy	22	t	2026-11-05 05:47:25.376
cmw34ixqd003wkx9zmn23p6rz	cmw34ixjo0004kx9zeoutb9rx	cmw34ixqb003ukx9zq4d6y4lz	22	t	2026-11-05 05:47:25.381
cmw34ixqh0040kx9zts5lwpbe	cmw34ixjo0004kx9zeoutb9rx	cmw34ixqg003ykx9zancnxx4e	22	t	2026-11-05 05:47:25.386
cmw34ixqn0044kx9zawwwnc6v	cmw34ixjo0004kx9zeoutb9rx	cmw34ixql0042kx9zgkjy2zsj	16	t	2026-11-05 05:47:25.391
cmw34ixqu0048kx9z90a4b4nq	cmw34ixjo0004kx9zeoutb9rx	cmw34ixqr0046kx9zty1xsu8b	16	t	2026-11-05 05:47:25.398
cmw35710o001okxs4glmael1f	cmw3570xq000akxs4ukjudqnb	cmw34ixk9000akx9zw30s1t02	40	t	2026-11-05 06:06:09.384
cmw35710r001qkxs4kcxxwd5v	cmw3570xu000bkxs4kz4ls6hm	cmw34ixk9000akx9zw30s1t02	40	t	2026-11-05 06:06:09.387
cmw34ixr6004gkx9zg2ng8qhu	cmw34ixjo0004kx9zeoutb9rx	cmw34ixr4004ekx9z5r7s4wf5	16	t	2026-11-05 05:57:46.798
cmw34ixr0004ckx9z6om6aejv	cmw34ixjo0004kx9zeoutb9rx	cmw34ixqy004akx9z5785yak8	18	t	2026-11-05 06:00:13.039
cmw3570yj000mkxs4v2bkk6ey	cmw3570x00005kxs446hqellp	cmw34ixjv0006kx9ztjsbzen4	40	t	2026-11-05 06:06:09.308
cmw3570yn000okxs4ksrzljfn	cmw3570x50006kxs4t847blov	cmw34ixjv0006kx9ztjsbzen4	40	t	2026-11-05 06:06:09.312
cmw3570yr000qkxs43q8y7byt	cmw3570x90007kxs4ub4cewlk	cmw34ixjv0006kx9ztjsbzen4	40	t	2026-11-05 06:06:09.315
cmw3570yv000skxs4hdxjrcz6	cmw3570xe0008kxs48fj0tqp4	cmw34ixjv0006kx9ztjsbzen4	40	t	2026-11-05 06:06:09.32
cmw3570yz000ukxs4hrqkluux	cmw3570xl0009kxs4w3cqgopz	cmw34ixjv0006kx9ztjsbzen4	40	t	2026-11-05 06:06:09.323
cmw3570z3000wkxs40ktxcwdc	cmw3570xq000akxs4ukjudqnb	cmw34ixjv0006kx9ztjsbzen4	40	t	2026-11-05 06:06:09.327
cmw3570z6000ykxs48mjs1i18	cmw3570xu000bkxs4kz4ls6hm	cmw34ixjv0006kx9ztjsbzen4	40	t	2026-11-05 06:06:09.33
cmw3570zb0010kxs4u0os892f	cmw3570xx000ckxs44nqlujvw	cmw34ixjv0006kx9ztjsbzen4	40	t	2026-11-05 06:06:09.335
cmw3570zf0012kxs4fr4gtiwa	cmw3570y0000dkxs4xzmd4jmh	cmw34ixjv0006kx9ztjsbzen4	40	t	2026-11-05 06:06:09.339
cmw3570zj0014kxs4ys1jpnwt	cmw3570y3000ekxs4mc9h9jyu	cmw34ixjv0006kx9ztjsbzen4	40	t	2026-11-05 06:06:09.343
cmw3570zn0016kxs4e6kcagq9	cmw3570y6000fkxs42kqopx2e	cmw34ixjv0006kx9ztjsbzen4	40	t	2026-11-05 06:06:09.348
cmw3570zs0018kxs42hqzf6y1	cmw3570y8000gkxs4qqluc7ab	cmw34ixjv0006kx9ztjsbzen4	40	t	2026-11-05 06:06:09.352
cmw357103001ekxs47rbky5g6	cmw3570x00005kxs446hqellp	cmw34ixk9000akx9zw30s1t02	40	t	2026-11-05 06:06:09.364
cmw357107001gkxs4a4h2b9u0	cmw3570x50006kxs4t847blov	cmw34ixk9000akx9zw30s1t02	40	t	2026-11-05 06:06:09.367
cmw35710b001ikxs4ks20a94u	cmw3570x90007kxs4ub4cewlk	cmw34ixk9000akx9zw30s1t02	40	t	2026-11-05 06:06:09.372
cmw35710f001kkxs4uw7qf5uj	cmw3570xe0008kxs48fj0tqp4	cmw34ixk9000akx9zw30s1t02	40	t	2026-11-05 06:06:09.375
cmw35710j001mkxs4m3jxdqqz	cmw3570xl0009kxs4w3cqgopz	cmw34ixk9000akx9zw30s1t02	40	t	2026-11-05 06:06:09.379
cmw35710v001skxs47g4ivnrt	cmw3570xx000ckxs44nqlujvw	cmw34ixk9000akx9zw30s1t02	40	t	2026-11-05 06:06:09.391
cmw357110001ukxs4gchjaqy6	cmw3570y0000dkxs4xzmd4jmh	cmw34ixk9000akx9zw30s1t02	40	t	2026-11-05 06:06:09.396
cmw357114001wkxs4gle6e1fa	cmw3570y3000ekxs4mc9h9jyu	cmw34ixk9000akx9zw30s1t02	40	t	2026-11-05 06:06:09.4
cmw357118001ykxs470fdbksp	cmw3570y6000fkxs42kqopx2e	cmw34ixk9000akx9zw30s1t02	40	t	2026-11-05 06:06:09.404
cmw35711c0020kxs4n335wnns	cmw3570y8000gkxs4qqluc7ab	cmw34ixk9000akx9zw30s1t02	40	t	2026-11-05 06:06:09.409
cmw35711j0026kxs4ti89032d	cmw3570x00005kxs446hqellp	cmw34ixkg000ekx9zfkybkajs	40	t	2026-11-05 06:06:09.416
cmw35711n0028kxs49p4xzm7z	cmw3570x50006kxs4t847blov	cmw34ixkg000ekx9zfkybkajs	40	t	2026-11-05 06:06:09.419
cmw35711q002akxs4ogkaxn5y	cmw3570x90007kxs4ub4cewlk	cmw34ixkg000ekx9zfkybkajs	40	t	2026-11-05 06:06:09.423
cmw35711u002ckxs4zdi8dap3	cmw3570xe0008kxs48fj0tqp4	cmw34ixkg000ekx9zfkybkajs	40	t	2026-11-05 06:06:09.427
cmw35711x002ekxs497blx29o	cmw3570xl0009kxs4w3cqgopz	cmw34ixkg000ekx9zfkybkajs	40	t	2026-11-05 06:06:09.43
cmw357120002gkxs4yty5jlah	cmw3570xq000akxs4ukjudqnb	cmw34ixkg000ekx9zfkybkajs	40	t	2026-11-05 06:06:09.433
cmw357124002ikxs4kb04v3t0	cmw3570xu000bkxs4kz4ls6hm	cmw34ixkg000ekx9zfkybkajs	40	t	2026-11-05 06:06:09.436
cmw357127002kkxs4an8udb7n	cmw3570xx000ckxs44nqlujvw	cmw34ixkg000ekx9zfkybkajs	40	t	2026-11-05 06:06:09.439
cmw357129002mkxs4epwybfxp	cmw3570y0000dkxs4xzmd4jmh	cmw34ixkg000ekx9zfkybkajs	40	t	2026-11-05 06:06:09.442
cmw35712c002okxs46wvmljmc	cmw3570y3000ekxs4mc9h9jyu	cmw34ixkg000ekx9zfkybkajs	40	t	2026-11-05 06:06:09.445
cmw35712f002qkxs44vup33j4	cmw3570y6000fkxs42kqopx2e	cmw34ixkg000ekx9zfkybkajs	40	t	2026-11-05 06:06:09.448
cmw35712j002skxs41eb8dl61	cmw3570y8000gkxs4qqluc7ab	cmw34ixkg000ekx9zfkybkajs	40	t	2026-11-05 06:06:09.451
cmw35712s002ykxs4948mrywh	cmw3570x00005kxs446hqellp	cmw34ixko000ikx9zc7o2tyea	35	t	2026-11-05 06:06:09.461
cmw35712w0030kxs4wn0jopyc	cmw3570x50006kxs4t847blov	cmw34ixko000ikx9zc7o2tyea	35	t	2026-11-05 06:06:09.465
cmw3571300032kxs4p8k6bsf9	cmw3570x90007kxs4ub4cewlk	cmw34ixko000ikx9zc7o2tyea	35	t	2026-11-05 06:06:09.468
cmw3571330034kxs4lyfodrs0	cmw3570xe0008kxs48fj0tqp4	cmw34ixko000ikx9zc7o2tyea	35	t	2026-11-05 06:06:09.472
cmw3571370036kxs4djf8oq2v	cmw3570xl0009kxs4w3cqgopz	cmw34ixko000ikx9zc7o2tyea	35	t	2026-11-05 06:06:09.475
cmw35713b0038kxs4k9m0vii1	cmw3570xq000akxs4ukjudqnb	cmw34ixko000ikx9zc7o2tyea	35	t	2026-11-05 06:06:09.479
cmw35713f003akxs45pqzesd4	cmw3570xu000bkxs4kz4ls6hm	cmw34ixko000ikx9zc7o2tyea	35	t	2026-11-05 06:06:09.483
cmw35713j003ckxs43v2598e4	cmw3570xx000ckxs44nqlujvw	cmw34ixko000ikx9zc7o2tyea	35	t	2026-11-05 06:06:09.487
cmw35713m003ekxs4ym4iooh9	cmw3570y0000dkxs4xzmd4jmh	cmw34ixko000ikx9zc7o2tyea	35	t	2026-11-05 06:06:09.491
cmw35713q003gkxs4wzudytxy	cmw3570y3000ekxs4mc9h9jyu	cmw34ixko000ikx9zc7o2tyea	35	t	2026-11-05 06:06:09.494
cmw35713u003ikxs4bz1rn4uf	cmw3570y6000fkxs42kqopx2e	cmw34ixko000ikx9zc7o2tyea	35	t	2026-11-05 06:06:09.499
cmw35713z003kkxs4944vv8n3	cmw3570y8000gkxs4qqluc7ab	cmw34ixko000ikx9zc7o2tyea	35	t	2026-11-05 06:06:09.503
cmw35714a003qkxs477fdbryu	cmw3570x00005kxs446hqellp	cmw34ixkv000mkx9zvp0te93a	45	t	2026-11-05 06:06:09.514
cmw35714f003skxs4tydhk602	cmw3570x50006kxs4t847blov	cmw34ixkv000mkx9zvp0te93a	45	t	2026-11-05 06:06:09.519
cmw35714j003ukxs4k5djqkoa	cmw3570x90007kxs4ub4cewlk	cmw34ixkv000mkx9zvp0te93a	45	t	2026-11-05 06:06:09.523
cmw35714m003wkxs4hiupggvn	cmw3570xe0008kxs48fj0tqp4	cmw34ixkv000mkx9zvp0te93a	45	t	2026-11-05 06:06:09.527
cmw35714p003ykxs4vfh0w3ui	cmw3570xl0009kxs4w3cqgopz	cmw34ixkv000mkx9zvp0te93a	45	t	2026-11-05 06:06:09.529
cmw35714s0040kxs41l9ubva8	cmw3570xq000akxs4ukjudqnb	cmw34ixkv000mkx9zvp0te93a	45	t	2026-11-05 06:06:09.533
cmw35714w0042kxs4mhw3t9sf	cmw3570xu000bkxs4kz4ls6hm	cmw34ixkv000mkx9zvp0te93a	45	t	2026-11-05 06:06:09.537
cmw3571510044kxs4y7lbqhiz	cmw3570xx000ckxs44nqlujvw	cmw34ixkv000mkx9zvp0te93a	45	t	2026-11-05 06:06:09.541
cmw3571550046kxs4h7ckspxf	cmw3570y0000dkxs4xzmd4jmh	cmw34ixkv000mkx9zvp0te93a	45	t	2026-11-05 06:06:09.545
cmw3571590048kxs4ru33loqe	cmw3570y3000ekxs4mc9h9jyu	cmw34ixkv000mkx9zvp0te93a	45	t	2026-11-05 06:06:09.549
cmw35715b004akxs4j4y7bkkk	cmw3570y6000fkxs42kqopx2e	cmw34ixkv000mkx9zvp0te93a	45	t	2026-11-05 06:06:09.551
cmw35715d004ckxs4dcpaqj33	cmw3570y8000gkxs4qqluc7ab	cmw34ixkv000mkx9zvp0te93a	45	t	2026-11-05 06:06:09.553
cmw35715m004ikxs4665xqf1w	cmw3570x00005kxs446hqellp	cmw34ixl1000qkx9zbd6ebbvs	45	t	2026-11-05 06:06:09.562
cmw35715q004kkxs4pzsedjcp	cmw3570x50006kxs4t847blov	cmw34ixl1000qkx9zbd6ebbvs	45	t	2026-11-05 06:06:09.567
cmw35715u004mkxs45eppb2lv	cmw3570x90007kxs4ub4cewlk	cmw34ixl1000qkx9zbd6ebbvs	45	t	2026-11-05 06:06:09.57
cmw35715x004okxs458nc3s7u	cmw3570xe0008kxs48fj0tqp4	cmw34ixl1000qkx9zbd6ebbvs	45	t	2026-11-05 06:06:09.574
cmw357160004qkxs4eg4u71q5	cmw3570xl0009kxs4w3cqgopz	cmw34ixl1000qkx9zbd6ebbvs	45	t	2026-11-05 06:06:09.576
cmw357163004skxs46sdncdwk	cmw3570xq000akxs4ukjudqnb	cmw34ixl1000qkx9zbd6ebbvs	45	t	2026-11-05 06:06:09.579
cmw357166004ukxs44ezdeqdw	cmw3570xu000bkxs4kz4ls6hm	cmw34ixl1000qkx9zbd6ebbvs	45	t	2026-11-05 06:06:09.582
cmw357169004wkxs4v3ccwk0o	cmw3570xx000ckxs44nqlujvw	cmw34ixl1000qkx9zbd6ebbvs	45	t	2026-11-05 06:06:09.585
cmw35716d004ykxs4r74giu3j	cmw3570y0000dkxs4xzmd4jmh	cmw34ixl1000qkx9zbd6ebbvs	45	t	2026-11-05 06:06:09.589
cmw35716g0050kxs4hfrd4q2p	cmw3570y3000ekxs4mc9h9jyu	cmw34ixl1000qkx9zbd6ebbvs	45	t	2026-11-05 06:06:09.592
cmw35716j0052kxs45j5616ck	cmw3570y6000fkxs42kqopx2e	cmw34ixl1000qkx9zbd6ebbvs	45	t	2026-11-05 06:06:09.596
cmw35716o0054kxs40w6uplja	cmw3570y8000gkxs4qqluc7ab	cmw34ixl1000qkx9zbd6ebbvs	45	t	2026-11-05 06:06:09.6
cmw35716z005akxs49q1dh403	cmw3570x00005kxs446hqellp	cmw34ixl8000ukx9zsxleztgs	40	t	2026-11-05 06:06:09.611
cmw357174005ckxs4397lze71	cmw3570x50006kxs4t847blov	cmw34ixl8000ukx9zsxleztgs	40	t	2026-11-05 06:06:09.616
cmw35717a005ekxs41vleo8tp	cmw3570x90007kxs4ub4cewlk	cmw34ixl8000ukx9zsxleztgs	40	t	2026-11-05 06:06:09.623
cmw35717f005gkxs4pjeljgzi	cmw3570xe0008kxs48fj0tqp4	cmw34ixl8000ukx9zsxleztgs	40	t	2026-11-05 06:06:09.627
cmw35717k005ikxs4ix8jjghz	cmw3570xl0009kxs4w3cqgopz	cmw34ixl8000ukx9zsxleztgs	40	t	2026-11-05 06:06:09.632
cmw35717n005kkxs465q0cz8e	cmw3570xq000akxs4ukjudqnb	cmw34ixl8000ukx9zsxleztgs	40	t	2026-11-05 06:06:09.636
cmw35717r005mkxs4wdgv35wu	cmw3570xu000bkxs4kz4ls6hm	cmw34ixl8000ukx9zsxleztgs	40	t	2026-11-05 06:06:09.639
cmw35717w005okxs4nrkpbf84	cmw3570xx000ckxs44nqlujvw	cmw34ixl8000ukx9zsxleztgs	40	t	2026-11-05 06:06:09.644
cmw35717z005qkxs4btd7awcu	cmw3570y0000dkxs4xzmd4jmh	cmw34ixl8000ukx9zsxleztgs	40	t	2026-11-05 06:06:09.648
cmw357184005skxs44yn884jz	cmw3570y3000ekxs4mc9h9jyu	cmw34ixl8000ukx9zsxleztgs	40	t	2026-11-05 06:06:09.652
cmw357188005ukxs4aq2g9lhf	cmw3570y6000fkxs42kqopx2e	cmw34ixl8000ukx9zsxleztgs	40	t	2026-11-05 06:06:09.656
cmw35718b005wkxs407jc0t1k	cmw3570y8000gkxs4qqluc7ab	cmw34ixl8000ukx9zsxleztgs	40	t	2026-11-05 06:06:09.659
cmw35718l0062kxs4rlfghhrn	cmw3570x00005kxs446hqellp	cmw34ixlf000ykx9z0pnulfab	35	t	2026-11-05 06:06:09.669
cmw35718p0064kxs4sycrms7c	cmw3570x50006kxs4t847blov	cmw34ixlf000ykx9z0pnulfab	35	t	2026-11-05 06:06:09.673
cmw35718s0066kxs4zmeryuwm	cmw3570x90007kxs4ub4cewlk	cmw34ixlf000ykx9z0pnulfab	35	t	2026-11-05 06:06:09.676
cmw35718u0068kxs42x4v578z	cmw3570xe0008kxs48fj0tqp4	cmw34ixlf000ykx9z0pnulfab	35	t	2026-11-05 06:06:09.679
cmw35718x006akxs4dbonn3wf	cmw3570xl0009kxs4w3cqgopz	cmw34ixlf000ykx9z0pnulfab	35	t	2026-11-05 06:06:09.681
cmw357190006ckxs44hoeoyci	cmw3570xq000akxs4ukjudqnb	cmw34ixlf000ykx9z0pnulfab	35	t	2026-11-05 06:06:09.684
cmw357192006ekxs4gel9lqny	cmw3570xu000bkxs4kz4ls6hm	cmw34ixlf000ykx9z0pnulfab	35	t	2026-11-05 06:06:09.687
cmw357195006gkxs42io6p2zr	cmw3570xx000ckxs44nqlujvw	cmw34ixlf000ykx9z0pnulfab	35	t	2026-11-05 06:06:09.689
cmw357197006ikxs4u2vxuhd6	cmw3570y0000dkxs4xzmd4jmh	cmw34ixlf000ykx9z0pnulfab	35	t	2026-11-05 06:06:09.691
cmw357199006kkxs4o7vpqz60	cmw3570y3000ekxs4mc9h9jyu	cmw34ixlf000ykx9z0pnulfab	35	t	2026-11-05 06:06:09.694
cmw35719c006mkxs4sp50p2j7	cmw3570y6000fkxs42kqopx2e	cmw34ixlf000ykx9z0pnulfab	35	t	2026-11-05 06:06:09.696
cmw35719f006okxs4uya3tlyl	cmw3570y8000gkxs4qqluc7ab	cmw34ixlf000ykx9z0pnulfab	35	t	2026-11-05 06:06:09.699
cmw35719l006ukxs4e7n89eiu	cmw3570x00005kxs446hqellp	cmw34ixln0012kx9z61jd3ppn	50	t	2026-11-05 06:06:09.705
cmw35719n006wkxs463irmnwl	cmw3570x50006kxs4t847blov	cmw34ixln0012kx9z61jd3ppn	50	t	2026-11-05 06:06:09.708
cmw35719q006ykxs45jzqmrbv	cmw3570x90007kxs4ub4cewlk	cmw34ixln0012kx9z61jd3ppn	50	t	2026-11-05 06:06:09.71
cmw35719t0070kxs491l88gr2	cmw3570xe0008kxs48fj0tqp4	cmw34ixln0012kx9z61jd3ppn	50	t	2026-11-05 06:06:09.714
cmw35719x0072kxs4ec3ghhl4	cmw3570xl0009kxs4w3cqgopz	cmw34ixln0012kx9z61jd3ppn	50	t	2026-11-05 06:06:09.718
cmw3571a10074kxs47kvmblnm	cmw3570xq000akxs4ukjudqnb	cmw34ixln0012kx9z61jd3ppn	50	t	2026-11-05 06:06:09.721
cmw3571a40076kxs4d34tz60e	cmw3570xu000bkxs4kz4ls6hm	cmw34ixln0012kx9z61jd3ppn	50	t	2026-11-05 06:06:09.724
cmw3571a70078kxs4l9dcfm19	cmw3570xx000ckxs44nqlujvw	cmw34ixln0012kx9z61jd3ppn	50	t	2026-11-05 06:06:09.727
cmw3571a9007akxs4bo7ka7vk	cmw3570y0000dkxs4xzmd4jmh	cmw34ixln0012kx9z61jd3ppn	50	t	2026-11-05 06:06:09.73
cmw3571ac007ckxs40o86v5mt	cmw3570y3000ekxs4mc9h9jyu	cmw34ixln0012kx9z61jd3ppn	50	t	2026-11-05 06:06:09.732
cmw3571af007ekxs42p2jrua0	cmw3570y6000fkxs42kqopx2e	cmw34ixln0012kx9z61jd3ppn	50	t	2026-11-05 06:06:09.735
cmw3571ai007gkxs4hva3fi6p	cmw3570y8000gkxs4qqluc7ab	cmw34ixln0012kx9z61jd3ppn	50	t	2026-11-05 06:06:09.738
cmw3571ap007mkxs4kv4m8pkr	cmw3570x00005kxs446hqellp	cmw34ixlu0016kx9zw0ey9tuo	40	t	2026-11-05 06:06:09.745
cmw3571at007okxs4jwssymao	cmw3570x50006kxs4t847blov	cmw34ixlu0016kx9zw0ey9tuo	40	t	2026-11-05 06:06:09.749
cmw3571ax007qkxs49zdboc0x	cmw3570x90007kxs4ub4cewlk	cmw34ixlu0016kx9zw0ey9tuo	40	t	2026-11-05 06:06:09.753
cmw3571b0007skxs4yc01uh1z	cmw3570xe0008kxs48fj0tqp4	cmw34ixlu0016kx9zw0ey9tuo	40	t	2026-11-05 06:06:09.757
cmw3571b5007ukxs4qzm6stgf	cmw3570xl0009kxs4w3cqgopz	cmw34ixlu0016kx9zw0ey9tuo	40	t	2026-11-05 06:06:09.761
cmw3571b8007wkxs4cec920ul	cmw3570xq000akxs4ukjudqnb	cmw34ixlu0016kx9zw0ey9tuo	40	t	2026-11-05 06:06:09.764
cmw3571bb007ykxs4hgwwfot3	cmw3570xu000bkxs4kz4ls6hm	cmw34ixlu0016kx9zw0ey9tuo	40	t	2026-11-05 06:06:09.768
cmw3571bf0080kxs4h1anzowe	cmw3570xx000ckxs44nqlujvw	cmw34ixlu0016kx9zw0ey9tuo	40	t	2026-11-05 06:06:09.771
cmw3571bi0082kxs4vulg3q6l	cmw3570y0000dkxs4xzmd4jmh	cmw34ixlu0016kx9zw0ey9tuo	40	t	2026-11-05 06:06:09.774
cmw3571bl0084kxs4rddmovon	cmw3570y3000ekxs4mc9h9jyu	cmw34ixlu0016kx9zw0ey9tuo	40	t	2026-11-05 06:06:09.777
cmw3571bo0086kxs4ortcp28m	cmw3570y6000fkxs42kqopx2e	cmw34ixlu0016kx9zw0ey9tuo	40	t	2026-11-05 06:06:09.78
cmw3571bt0088kxs4iiqgmf4q	cmw3570y8000gkxs4qqluc7ab	cmw34ixlu0016kx9zw0ey9tuo	40	t	2026-11-05 06:06:09.785
cmw3571c2008ekxs4n6183wk0	cmw3570x00005kxs446hqellp	cmw34ixm2001akx9zqr3ysxyt	35	t	2026-11-05 06:06:09.794
cmw3571c5008gkxs4vxldqcwc	cmw3570x50006kxs4t847blov	cmw34ixm2001akx9zqr3ysxyt	35	t	2026-11-05 06:06:09.798
cmw3571c9008ikxs4rcv0xcdl	cmw3570x90007kxs4ub4cewlk	cmw34ixm2001akx9zqr3ysxyt	35	t	2026-11-05 06:06:09.802
cmw3571cd008kkxs49uhcl0lc	cmw3570xe0008kxs48fj0tqp4	cmw34ixm2001akx9zqr3ysxyt	35	t	2026-11-05 06:06:09.805
cmw3571cg008mkxs4l6elgy0l	cmw3570xl0009kxs4w3cqgopz	cmw34ixm2001akx9zqr3ysxyt	35	t	2026-11-05 06:06:09.808
cmw3571ck008okxs41cew5bid	cmw3570xq000akxs4ukjudqnb	cmw34ixm2001akx9zqr3ysxyt	35	t	2026-11-05 06:06:09.812
cmw3571cn008qkxs4mwnv079u	cmw3570xu000bkxs4kz4ls6hm	cmw34ixm2001akx9zqr3ysxyt	35	t	2026-11-05 06:06:09.815
cmw3571cq008skxs4kqlfa74j	cmw3570xx000ckxs44nqlujvw	cmw34ixm2001akx9zqr3ysxyt	35	t	2026-11-05 06:06:09.818
cmw3571cu008ukxs4lsd6bnfk	cmw3570y0000dkxs4xzmd4jmh	cmw34ixm2001akx9zqr3ysxyt	35	t	2026-11-05 06:06:09.822
cmw3571cx008wkxs4ixs0g7eu	cmw3570y3000ekxs4mc9h9jyu	cmw34ixm2001akx9zqr3ysxyt	35	t	2026-11-05 06:06:09.825
cmw3571d1008ykxs4f01yf4gm	cmw3570y6000fkxs42kqopx2e	cmw34ixm2001akx9zqr3ysxyt	35	t	2026-11-05 06:06:09.83
cmw3571d50090kxs4o8q3fqo5	cmw3570y8000gkxs4qqluc7ab	cmw34ixm2001akx9zqr3ysxyt	35	t	2026-11-05 06:06:09.834
cmw3571de0096kxs4kil0mcpi	cmw3570x00005kxs446hqellp	cmw34ixma001ekx9zpllll4hz	35	t	2026-11-05 06:06:09.842
cmw3571dh0098kxs4w860m3tu	cmw3570x50006kxs4t847blov	cmw34ixma001ekx9zpllll4hz	35	t	2026-11-05 06:06:09.845
cmw3571dm009akxs47lqg5o9b	cmw3570x90007kxs4ub4cewlk	cmw34ixma001ekx9zpllll4hz	35	t	2026-11-05 06:06:09.85
cmw3571dr009ckxs4l0ijdpe6	cmw3570xe0008kxs48fj0tqp4	cmw34ixma001ekx9zpllll4hz	35	t	2026-11-05 06:06:09.855
cmw3571dw009ekxs4jtpra4oh	cmw3570xl0009kxs4w3cqgopz	cmw34ixma001ekx9zpllll4hz	35	t	2026-11-05 06:06:09.861
cmw3571e2009gkxs4m5g73lte	cmw3570xq000akxs4ukjudqnb	cmw34ixma001ekx9zpllll4hz	35	t	2026-11-05 06:06:09.866
cmw3571e7009ikxs4rj8hlmvn	cmw3570xu000bkxs4kz4ls6hm	cmw34ixma001ekx9zpllll4hz	35	t	2026-11-05 06:06:09.871
cmw3571eb009kkxs40q14gpkq	cmw3570xx000ckxs44nqlujvw	cmw34ixma001ekx9zpllll4hz	35	t	2026-11-05 06:06:09.875
cmw3571eg009mkxs4g8ctbiby	cmw3570y0000dkxs4xzmd4jmh	cmw34ixma001ekx9zpllll4hz	35	t	2026-11-05 06:06:09.88
cmw3571ek009okxs4x988qyi9	cmw3570y3000ekxs4mc9h9jyu	cmw34ixma001ekx9zpllll4hz	35	t	2026-11-05 06:06:09.884
cmw3571en009qkxs459ka2hp1	cmw3570y6000fkxs42kqopx2e	cmw34ixma001ekx9zpllll4hz	35	t	2026-11-05 06:06:09.888
cmw3571er009skxs4q5qmgmpo	cmw3570y8000gkxs4qqluc7ab	cmw34ixma001ekx9zpllll4hz	35	t	2026-11-05 06:06:09.892
cmw3571f4009ykxs43722fp3i	cmw3570x00005kxs446hqellp	cmw34ixmg001ikx9zahxvo0od	40	t	2026-11-05 06:06:09.904
cmw3571f900a0kxs4kp4ajetw	cmw3570x50006kxs4t847blov	cmw34ixmg001ikx9zahxvo0od	40	t	2026-11-05 06:06:09.909
cmw3571ff00a2kxs4iqrworal	cmw3570x90007kxs4ub4cewlk	cmw34ixmg001ikx9zahxvo0od	40	t	2026-11-05 06:06:09.915
cmw3571fj00a4kxs4ei7h0n47	cmw3570xe0008kxs48fj0tqp4	cmw34ixmg001ikx9zahxvo0od	40	t	2026-11-05 06:06:09.919
cmw3571fn00a6kxs4rbqlp45r	cmw3570xl0009kxs4w3cqgopz	cmw34ixmg001ikx9zahxvo0od	40	t	2026-11-05 06:06:09.923
cmw3571fq00a8kxs4r6ya8nsq	cmw3570xq000akxs4ukjudqnb	cmw34ixmg001ikx9zahxvo0od	40	t	2026-11-05 06:06:09.926
cmw3571fu00aakxs45vkbcut5	cmw3570xu000bkxs4kz4ls6hm	cmw34ixmg001ikx9zahxvo0od	40	t	2026-11-05 06:06:09.93
cmw3571fy00ackxs4m15jihsa	cmw3570xx000ckxs44nqlujvw	cmw34ixmg001ikx9zahxvo0od	40	t	2026-11-05 06:06:09.934
cmw3571g200aekxs4skcr9l2b	cmw3570y0000dkxs4xzmd4jmh	cmw34ixmg001ikx9zahxvo0od	40	t	2026-11-05 06:06:09.939
cmw3571g700agkxs49pquheo1	cmw3570y3000ekxs4mc9h9jyu	cmw34ixmg001ikx9zahxvo0od	40	t	2026-11-05 06:06:09.944
cmw3571gc00aikxs45udc6zyh	cmw3570y6000fkxs42kqopx2e	cmw34ixmg001ikx9zahxvo0od	40	t	2026-11-05 06:06:09.948
cmw3571gg00akkxs4gpsa1035	cmw3570y8000gkxs4qqluc7ab	cmw34ixmg001ikx9zahxvo0od	40	t	2026-11-05 06:06:09.953
cmw3571gt00aqkxs4pcm2226h	cmw3570x00005kxs446hqellp	cmw34ixmm001mkx9zhv7dy4x7	40	t	2026-11-05 06:06:09.965
cmw3571gy00askxs4q0vceorp	cmw3570x50006kxs4t847blov	cmw34ixmm001mkx9zhv7dy4x7	40	t	2026-11-05 06:06:09.971
cmw3571h300aukxs4xff71r1m	cmw3570x90007kxs4ub4cewlk	cmw34ixmm001mkx9zhv7dy4x7	40	t	2026-11-05 06:06:09.976
cmw3571h800awkxs4kjtdpy90	cmw3570xe0008kxs48fj0tqp4	cmw34ixmm001mkx9zhv7dy4x7	40	t	2026-11-05 06:06:09.981
cmw3571hc00aykxs4ybawp1at	cmw3570xl0009kxs4w3cqgopz	cmw34ixmm001mkx9zhv7dy4x7	40	t	2026-11-05 06:06:09.985
cmw3571hh00b0kxs4tq6yvqxe	cmw3570xq000akxs4ukjudqnb	cmw34ixmm001mkx9zhv7dy4x7	40	t	2026-11-05 06:06:09.99
cmw3571hm00b2kxs4a0aafl90	cmw3570xu000bkxs4kz4ls6hm	cmw34ixmm001mkx9zhv7dy4x7	40	t	2026-11-05 06:06:09.995
cmw3571hr00b4kxs4q1d2kl3l	cmw3570xx000ckxs44nqlujvw	cmw34ixmm001mkx9zhv7dy4x7	40	t	2026-11-05 06:06:09.999
cmw3571hx00b6kxs40vu6c8di	cmw3570y0000dkxs4xzmd4jmh	cmw34ixmm001mkx9zhv7dy4x7	40	t	2026-11-05 06:06:10.006
cmw3571i200b8kxs4v0q7pd5w	cmw3570y3000ekxs4mc9h9jyu	cmw34ixmm001mkx9zhv7dy4x7	40	t	2026-11-05 06:06:10.011
cmw3571i700bakxs44uix7rzd	cmw3570y6000fkxs42kqopx2e	cmw34ixmm001mkx9zhv7dy4x7	40	t	2026-11-05 06:06:10.015
cmw3571ic00bckxs4sa0e4p4u	cmw3570y8000gkxs4qqluc7ab	cmw34ixmm001mkx9zhv7dy4x7	40	t	2026-11-05 06:06:10.02
cmw3571im00bikxs4imk1zzhd	cmw3570x00005kxs446hqellp	cmw34ixmr001qkx9zrktsbntj	40	t	2026-11-05 06:06:10.03
cmw3571ip00bkkxs4o8mun3wo	cmw3570x50006kxs4t847blov	cmw34ixmr001qkx9zrktsbntj	40	t	2026-11-05 06:06:10.034
cmw3571it00bmkxs49f8ts40w	cmw3570x90007kxs4ub4cewlk	cmw34ixmr001qkx9zrktsbntj	40	t	2026-11-05 06:06:10.037
cmw3571ix00bokxs4rdl8rgb8	cmw3570xe0008kxs48fj0tqp4	cmw34ixmr001qkx9zrktsbntj	40	t	2026-11-05 06:06:10.041
cmw3571j100bqkxs4igwwxjvo	cmw3570xl0009kxs4w3cqgopz	cmw34ixmr001qkx9zrktsbntj	40	t	2026-11-05 06:06:10.046
cmw3571j600bskxs4s8ilt4l4	cmw3570xq000akxs4ukjudqnb	cmw34ixmr001qkx9zrktsbntj	40	t	2026-11-05 06:06:10.05
cmw3571j900bukxs40hqc5blu	cmw3570xu000bkxs4kz4ls6hm	cmw34ixmr001qkx9zrktsbntj	40	t	2026-11-05 06:06:10.054
cmw3571je00bwkxs44ktfmyeb	cmw3570xx000ckxs44nqlujvw	cmw34ixmr001qkx9zrktsbntj	40	t	2026-11-05 06:06:10.058
cmw3571jj00bykxs4js5e3myr	cmw3570y0000dkxs4xzmd4jmh	cmw34ixmr001qkx9zrktsbntj	40	t	2026-11-05 06:06:10.064
cmw3571jo00c0kxs4smkahi6k	cmw3570y3000ekxs4mc9h9jyu	cmw34ixmr001qkx9zrktsbntj	40	t	2026-11-05 06:06:10.069
cmw3571jx00c2kxs4t643i4v8	cmw3570y6000fkxs42kqopx2e	cmw34ixmr001qkx9zrktsbntj	40	t	2026-11-05 06:06:10.078
cmw3571k200c4kxs4zo0jyqj3	cmw3570y8000gkxs4qqluc7ab	cmw34ixmr001qkx9zrktsbntj	40	t	2026-11-05 06:06:10.083
cmw3571kc00cakxs4cro04g38	cmw3570x00005kxs446hqellp	cmw34ixmy001ukx9zyfbrnelg	40	t	2026-11-05 06:06:10.092
cmw3571kf00cckxs4zetp8mjm	cmw3570x50006kxs4t847blov	cmw34ixmy001ukx9zyfbrnelg	40	t	2026-11-05 06:06:10.096
cmw3571ki00cekxs40vf5k9cm	cmw3570x90007kxs4ub4cewlk	cmw34ixmy001ukx9zyfbrnelg	40	t	2026-11-05 06:06:10.099
cmw3571kn00cgkxs4tc5e75q0	cmw3570xe0008kxs48fj0tqp4	cmw34ixmy001ukx9zyfbrnelg	40	t	2026-11-05 06:06:10.103
cmw3571kq00cikxs4fmgsto8l	cmw3570xl0009kxs4w3cqgopz	cmw34ixmy001ukx9zyfbrnelg	40	t	2026-11-05 06:06:10.107
cmw3571kw00ckkxs4gnjvp56r	cmw3570xq000akxs4ukjudqnb	cmw34ixmy001ukx9zyfbrnelg	40	t	2026-11-05 06:06:10.112
cmw3571l100cmkxs4gkl7rjdw	cmw3570xu000bkxs4kz4ls6hm	cmw34ixmy001ukx9zyfbrnelg	40	t	2026-11-05 06:06:10.117
cmw3571l400cokxs48viiauc8	cmw3570xx000ckxs44nqlujvw	cmw34ixmy001ukx9zyfbrnelg	40	t	2026-11-05 06:06:10.12
cmw3571l900cqkxs4cs7n0wh3	cmw3570y0000dkxs4xzmd4jmh	cmw34ixmy001ukx9zyfbrnelg	40	t	2026-11-05 06:06:10.125
cmw3571lc00cskxs4wdcy9ucx	cmw3570y3000ekxs4mc9h9jyu	cmw34ixmy001ukx9zyfbrnelg	40	t	2026-11-05 06:06:10.128
cmw3571lh00cukxs4o8bego38	cmw3570y6000fkxs42kqopx2e	cmw34ixmy001ukx9zyfbrnelg	40	t	2026-11-05 06:06:10.133
cmw3571ll00cwkxs4sqkw77ef	cmw3570y8000gkxs4qqluc7ab	cmw34ixmy001ukx9zyfbrnelg	40	t	2026-11-05 06:06:10.137
cmw3571lw00d2kxs49gt5gsrv	cmw3570x00005kxs446hqellp	cmw34ixn5001ykx9zjvz0mud9	60	t	2026-11-05 06:06:10.149
cmw3571m100d4kxs4kz3h6h4d	cmw3570x50006kxs4t847blov	cmw34ixn5001ykx9zjvz0mud9	60	t	2026-11-05 06:06:10.154
cmw3571m500d6kxs4af2yopw1	cmw3570x90007kxs4ub4cewlk	cmw34ixn5001ykx9zjvz0mud9	60	t	2026-11-05 06:06:10.158
cmw3571mb00d8kxs4mta3dlsf	cmw3570xe0008kxs48fj0tqp4	cmw34ixn5001ykx9zjvz0mud9	60	t	2026-11-05 06:06:10.163
cmw3571me00dakxs4yc7lknnr	cmw3570xl0009kxs4w3cqgopz	cmw34ixn5001ykx9zjvz0mud9	60	t	2026-11-05 06:06:10.167
cmw3571mj00dckxs4vyr9uyc7	cmw3570xq000akxs4ukjudqnb	cmw34ixn5001ykx9zjvz0mud9	60	t	2026-11-05 06:06:10.171
cmw3571mo00dekxs4t9gmhvq9	cmw3570xu000bkxs4kz4ls6hm	cmw34ixn5001ykx9zjvz0mud9	60	t	2026-11-05 06:06:10.176
cmw3571mt00dgkxs4kh6qxl96	cmw3570xx000ckxs44nqlujvw	cmw34ixn5001ykx9zjvz0mud9	60	t	2026-11-05 06:06:10.182
cmw3571mz00dikxs4hnd2sk4k	cmw3570y0000dkxs4xzmd4jmh	cmw34ixn5001ykx9zjvz0mud9	60	t	2026-11-05 06:06:10.188
cmw3571n400dkkxs4d2q8y84c	cmw3570y3000ekxs4mc9h9jyu	cmw34ixn5001ykx9zjvz0mud9	60	t	2026-11-05 06:06:10.192
cmw3571n900dmkxs4h3vcxau1	cmw3570y6000fkxs42kqopx2e	cmw34ixn5001ykx9zjvz0mud9	60	t	2026-11-05 06:06:10.197
cmw3571nd00dokxs4u5rb5y6w	cmw3570y8000gkxs4qqluc7ab	cmw34ixn5001ykx9zjvz0mud9	60	t	2026-11-05 06:06:10.201
cmw3571no00dukxs4zd5x930y	cmw3570x00005kxs446hqellp	cmw34ixnd0022kx9z26gizf6n	55	t	2026-11-05 06:06:10.213
cmw3571nt00dwkxs44tvbgarz	cmw3570x50006kxs4t847blov	cmw34ixnd0022kx9z26gizf6n	55	t	2026-11-05 06:06:10.217
cmw3571nx00dykxs4u1e5mezp	cmw3570x90007kxs4ub4cewlk	cmw34ixnd0022kx9z26gizf6n	55	t	2026-11-05 06:06:10.221
cmw3571o500e0kxs4n3qbs8x4	cmw3570xe0008kxs48fj0tqp4	cmw34ixnd0022kx9z26gizf6n	55	t	2026-11-05 06:06:10.228
cmw3571oa00e2kxs4nngzes6z	cmw3570xl0009kxs4w3cqgopz	cmw34ixnd0022kx9z26gizf6n	55	t	2026-11-05 06:06:10.234
cmw3571of00e4kxs40ontebes	cmw3570xq000akxs4ukjudqnb	cmw34ixnd0022kx9z26gizf6n	55	t	2026-11-05 06:06:10.239
cmw3571ok00e6kxs4qvpx61t0	cmw3570xu000bkxs4kz4ls6hm	cmw34ixnd0022kx9z26gizf6n	55	t	2026-11-05 06:06:10.245
cmw3571oq00e8kxs4mcyxg6rb	cmw3570xx000ckxs44nqlujvw	cmw34ixnd0022kx9z26gizf6n	55	t	2026-11-05 06:06:10.25
cmw3571ov00eakxs4j4lvnerh	cmw3570y0000dkxs4xzmd4jmh	cmw34ixnd0022kx9z26gizf6n	55	t	2026-11-05 06:06:10.255
cmw3571oz00eckxs4oeewd28p	cmw3570y3000ekxs4mc9h9jyu	cmw34ixnd0022kx9z26gizf6n	55	t	2026-11-05 06:06:10.26
cmw3571p400eekxs4yus21xke	cmw3570y6000fkxs42kqopx2e	cmw34ixnd0022kx9z26gizf6n	55	t	2026-11-05 06:06:10.265
cmw3571pa00egkxs4az7nt4lr	cmw3570y8000gkxs4qqluc7ab	cmw34ixnd0022kx9z26gizf6n	55	t	2026-11-05 06:06:10.27
cmw3571pk00emkxs4dyl8cyqq	cmw3570x00005kxs446hqellp	cmw34ixnk0026kx9zyyg9lt7f	30	t	2026-11-05 06:06:10.28
cmw3571pn00eokxs46tmg9dkw	cmw3570x50006kxs4t847blov	cmw34ixnk0026kx9zyyg9lt7f	30	t	2026-11-05 06:06:10.283
cmw3571pt00eqkxs48g1vqb26	cmw3570x90007kxs4ub4cewlk	cmw34ixnk0026kx9zyyg9lt7f	30	t	2026-11-05 06:06:10.289
cmw3571py00eskxs4w8mp7cq9	cmw3570xe0008kxs48fj0tqp4	cmw34ixnk0026kx9zyyg9lt7f	30	t	2026-11-05 06:06:10.294
cmw3571q200eukxs42lxzc5jg	cmw3570xl0009kxs4w3cqgopz	cmw34ixnk0026kx9zyyg9lt7f	30	t	2026-11-05 06:06:10.299
cmw3571q600ewkxs4sz3sz5t0	cmw3570xq000akxs4ukjudqnb	cmw34ixnk0026kx9zyyg9lt7f	30	t	2026-11-05 06:06:10.303
cmw3571qa00eykxs4i11hw7er	cmw3570xu000bkxs4kz4ls6hm	cmw34ixnk0026kx9zyyg9lt7f	30	t	2026-11-05 06:06:10.306
cmw3571qd00f0kxs4t47sxiz9	cmw3570xx000ckxs44nqlujvw	cmw34ixnk0026kx9zyyg9lt7f	30	t	2026-11-05 06:06:10.309
cmw3571qg00f2kxs49x62v9ku	cmw3570y0000dkxs4xzmd4jmh	cmw34ixnk0026kx9zyyg9lt7f	30	t	2026-11-05 06:06:10.313
cmw3571qj00f4kxs4qtldlwxj	cmw3570y3000ekxs4mc9h9jyu	cmw34ixnk0026kx9zyyg9lt7f	30	t	2026-11-05 06:06:10.315
cmw3571qm00f6kxs4c6sk5ydw	cmw3570y6000fkxs42kqopx2e	cmw34ixnk0026kx9zyyg9lt7f	30	t	2026-11-05 06:06:10.318
cmw3571qp00f8kxs4s8sdzg3w	cmw3570y8000gkxs4qqluc7ab	cmw34ixnk0026kx9zyyg9lt7f	30	t	2026-11-05 06:06:10.322
cmw3571qy00fekxs4cgzzjfr5	cmw3570x00005kxs446hqellp	cmw34ixns002akx9zg0j430xo	40	t	2026-11-05 06:06:10.33
cmw3571r100fgkxs4hzbhtmgp	cmw3570x50006kxs4t847blov	cmw34ixns002akx9zg0j430xo	40	t	2026-11-05 06:06:10.333
cmw3571r400fikxs4vb1us0yd	cmw3570x90007kxs4ub4cewlk	cmw34ixns002akx9zg0j430xo	40	t	2026-11-05 06:06:10.337
cmw3571r700fkkxs405dlfm61	cmw3570xe0008kxs48fj0tqp4	cmw34ixns002akx9zg0j430xo	40	t	2026-11-05 06:06:10.34
cmw3571rb00fmkxs41y9me3dw	cmw3570xl0009kxs4w3cqgopz	cmw34ixns002akx9zg0j430xo	40	t	2026-11-05 06:06:10.343
cmw3571re00fokxs48759zgwi	cmw3570xq000akxs4ukjudqnb	cmw34ixns002akx9zg0j430xo	40	t	2026-11-05 06:06:10.346
cmw3571rh00fqkxs4vnqyj4wi	cmw3570xu000bkxs4kz4ls6hm	cmw34ixns002akx9zg0j430xo	40	t	2026-11-05 06:06:10.35
cmw3571rk00fskxs4oao4mmrc	cmw3570xx000ckxs44nqlujvw	cmw34ixns002akx9zg0j430xo	40	t	2026-11-05 06:06:10.353
cmw3571ro00fukxs4s06e8mmm	cmw3570y0000dkxs4xzmd4jmh	cmw34ixns002akx9zg0j430xo	40	t	2026-11-05 06:06:10.356
cmw3571rr00fwkxs4cygl8xlf	cmw3570y3000ekxs4mc9h9jyu	cmw34ixns002akx9zg0j430xo	40	t	2026-11-05 06:06:10.36
cmw3571rx00fykxs49iicl6ho	cmw3570y6000fkxs42kqopx2e	cmw34ixns002akx9zg0j430xo	40	t	2026-11-05 06:06:10.365
cmw3571s100g0kxs4voaba8dj	cmw3570y8000gkxs4qqluc7ab	cmw34ixns002akx9zg0j430xo	40	t	2026-11-05 06:06:10.369
cmw3571sb00g6kxs4estuct11	cmw3570x00005kxs446hqellp	cmw34ixo0002ekx9zb6mb9rey	50	t	2026-11-05 06:06:10.38
cmw3571sf00g8kxs4zrspsuxb	cmw3570x50006kxs4t847blov	cmw34ixo0002ekx9zb6mb9rey	50	t	2026-11-05 06:06:10.383
cmw3571sj00gakxs49unynk3d	cmw3570x90007kxs4ub4cewlk	cmw34ixo0002ekx9zb6mb9rey	50	t	2026-11-05 06:06:10.387
cmw3571sm00gckxs4a0okg2ml	cmw3570xe0008kxs48fj0tqp4	cmw34ixo0002ekx9zb6mb9rey	50	t	2026-11-05 06:06:10.39
cmw3571so00gekxs4w1ae6m0a	cmw3570xl0009kxs4w3cqgopz	cmw34ixo0002ekx9zb6mb9rey	50	t	2026-11-05 06:06:10.393
cmw3571sr00ggkxs491y2s61c	cmw3570xq000akxs4ukjudqnb	cmw34ixo0002ekx9zb6mb9rey	50	t	2026-11-05 06:06:10.395
cmw3571st00gikxs4difrppdz	cmw3570xu000bkxs4kz4ls6hm	cmw34ixo0002ekx9zb6mb9rey	50	t	2026-11-05 06:06:10.397
cmw3571sv00gkkxs45yk1v5y3	cmw3570xx000ckxs44nqlujvw	cmw34ixo0002ekx9zb6mb9rey	50	t	2026-11-05 06:06:10.399
cmw3571sx00gmkxs4xbuqaunu	cmw3570y0000dkxs4xzmd4jmh	cmw34ixo0002ekx9zb6mb9rey	50	t	2026-11-05 06:06:10.401
cmw3571sz00gokxs49xmrudnq	cmw3570y3000ekxs4mc9h9jyu	cmw34ixo0002ekx9zb6mb9rey	50	t	2026-11-05 06:06:10.403
cmw3571t100gqkxs4kb5emzuu	cmw3570y6000fkxs42kqopx2e	cmw34ixo0002ekx9zb6mb9rey	50	t	2026-11-05 06:06:10.406
cmw3571t300gskxs45biezop1	cmw3570y8000gkxs4qqluc7ab	cmw34ixo0002ekx9zb6mb9rey	50	t	2026-11-05 06:06:10.408
cmw3571ta00gykxs4cf7oesf7	cmw3570x00005kxs446hqellp	cmw34ixo7002ikx9zbbtghp0r	35	t	2026-11-05 06:06:10.415
cmw3571tc00h0kxs4lfhudbfo	cmw3570x50006kxs4t847blov	cmw34ixo7002ikx9zbbtghp0r	35	t	2026-11-05 06:06:10.417
cmw3571tf00h2kxs4f9uez3qh	cmw3570x90007kxs4ub4cewlk	cmw34ixo7002ikx9zbbtghp0r	35	t	2026-11-05 06:06:10.419
cmw3571ti00h4kxs47ukywmlz	cmw3570xe0008kxs48fj0tqp4	cmw34ixo7002ikx9zbbtghp0r	35	t	2026-11-05 06:06:10.422
cmw3571tm00h6kxs4wnl4t0ai	cmw3570xl0009kxs4w3cqgopz	cmw34ixo7002ikx9zbbtghp0r	35	t	2026-11-05 06:06:10.426
cmw3571tp00h8kxs4rofoh07s	cmw3570xq000akxs4ukjudqnb	cmw34ixo7002ikx9zbbtghp0r	35	t	2026-11-05 06:06:10.429
cmw3571ts00hakxs4fcqmsw74	cmw3570xu000bkxs4kz4ls6hm	cmw34ixo7002ikx9zbbtghp0r	35	t	2026-11-05 06:06:10.433
cmw3571tx00hckxs49wbuvi2a	cmw3570xx000ckxs44nqlujvw	cmw34ixo7002ikx9zbbtghp0r	35	t	2026-11-05 06:06:10.437
cmw3571u100hekxs42pq6i0z0	cmw3570y0000dkxs4xzmd4jmh	cmw34ixo7002ikx9zbbtghp0r	35	t	2026-11-05 06:06:10.441
cmw3571u500hgkxs4pvyn5gbz	cmw3570y3000ekxs4mc9h9jyu	cmw34ixo7002ikx9zbbtghp0r	35	t	2026-11-05 06:06:10.445
cmw3571u800hikxs4y7w7qrc8	cmw3570y6000fkxs42kqopx2e	cmw34ixo7002ikx9zbbtghp0r	35	t	2026-11-05 06:06:10.449
cmw3571uc00hkkxs4sog7siwz	cmw3570y8000gkxs4qqluc7ab	cmw34ixo7002ikx9zbbtghp0r	35	t	2026-11-05 06:06:10.452
cmw3571um00hqkxs49q59aq58	cmw3570x00005kxs446hqellp	cmw34ixod002mkx9zee73k5zk	25	t	2026-11-05 06:06:10.462
cmw3571up00hskxs4wgcopy1o	cmw3570x50006kxs4t847blov	cmw34ixod002mkx9zee73k5zk	25	t	2026-11-05 06:06:10.466
cmw3571uu00hukxs42ocd08f1	cmw3570x90007kxs4ub4cewlk	cmw34ixod002mkx9zee73k5zk	25	t	2026-11-05 06:06:10.47
cmw3571uy00hwkxs4yyzml99o	cmw3570xe0008kxs48fj0tqp4	cmw34ixod002mkx9zee73k5zk	25	t	2026-11-05 06:06:10.474
cmw3571v300hykxs47de1zygx	cmw3570xl0009kxs4w3cqgopz	cmw34ixod002mkx9zee73k5zk	25	t	2026-11-05 06:06:10.479
cmw3571v600i0kxs42qr787pl	cmw3570xq000akxs4ukjudqnb	cmw34ixod002mkx9zee73k5zk	25	t	2026-11-05 06:06:10.482
cmw3571v800i2kxs40jqe2a8j	cmw3570xu000bkxs4kz4ls6hm	cmw34ixod002mkx9zee73k5zk	25	t	2026-11-05 06:06:10.485
cmw3571vb00i4kxs4qf4bku1j	cmw3570xx000ckxs44nqlujvw	cmw34ixod002mkx9zee73k5zk	25	t	2026-11-05 06:06:10.488
cmw3571vf00i6kxs4dhldueqj	cmw3570y0000dkxs4xzmd4jmh	cmw34ixod002mkx9zee73k5zk	25	t	2026-11-05 06:06:10.491
cmw3571vi00i8kxs4uiyyrtys	cmw3570y3000ekxs4mc9h9jyu	cmw34ixod002mkx9zee73k5zk	25	t	2026-11-05 06:06:10.495
cmw3571vm00iakxs44gqufkos	cmw3570y6000fkxs42kqopx2e	cmw34ixod002mkx9zee73k5zk	25	t	2026-11-05 06:06:10.498
cmw3571vp00ickxs4tvtd3odo	cmw3570y8000gkxs4qqluc7ab	cmw34ixod002mkx9zee73k5zk	25	t	2026-11-05 06:06:10.502
cmw3571vz00iikxs4lp1xzglv	cmw3570x00005kxs446hqellp	cmw34ixoj002qkx9zugagr28i	15	t	2026-11-05 06:06:10.512
cmw3571w300ikkxs4os1dax17	cmw3570x50006kxs4t847blov	cmw34ixoj002qkx9zugagr28i	15	t	2026-11-05 06:06:10.515
cmw3571w500imkxs4z465w58w	cmw3570x90007kxs4ub4cewlk	cmw34ixoj002qkx9zugagr28i	15	t	2026-11-05 06:06:10.518
cmw3571w800iokxs4xee3el1x	cmw3570xe0008kxs48fj0tqp4	cmw34ixoj002qkx9zugagr28i	15	t	2026-11-05 06:06:10.521
cmw3571wc00iqkxs4msnmhdd1	cmw3570xl0009kxs4w3cqgopz	cmw34ixoj002qkx9zugagr28i	15	t	2026-11-05 06:06:10.524
cmw3571wf00iskxs42zboekm6	cmw3570xq000akxs4ukjudqnb	cmw34ixoj002qkx9zugagr28i	15	t	2026-11-05 06:06:10.527
cmw3571wi00iukxs40urjr5bb	cmw3570xu000bkxs4kz4ls6hm	cmw34ixoj002qkx9zugagr28i	15	t	2026-11-05 06:06:10.53
cmw3571wk00iwkxs4bu3qx80h	cmw3570xx000ckxs44nqlujvw	cmw34ixoj002qkx9zugagr28i	15	t	2026-11-05 06:06:10.532
cmw3571wn00iykxs4vtdan35h	cmw3570y0000dkxs4xzmd4jmh	cmw34ixoj002qkx9zugagr28i	15	t	2026-11-05 06:06:10.535
cmw3571wr00j0kxs4totpfu7h	cmw3570y3000ekxs4mc9h9jyu	cmw34ixoj002qkx9zugagr28i	15	t	2026-11-05 06:06:10.539
cmw3571wu00j2kxs41eh48ddi	cmw3570y6000fkxs42kqopx2e	cmw34ixoj002qkx9zugagr28i	15	t	2026-11-05 06:06:10.542
cmw3571wy00j4kxs4kocghnnp	cmw3570y8000gkxs4qqluc7ab	cmw34ixoj002qkx9zugagr28i	15	t	2026-11-05 06:06:10.546
cmw3571x700jakxs4qzkxe3sp	cmw3570x00005kxs446hqellp	cmw34ixoq002ukx9zx3z9c822	25	t	2026-11-05 06:06:10.555
cmw3571xa00jckxs4caovv97x	cmw3570x50006kxs4t847blov	cmw34ixoq002ukx9zx3z9c822	25	t	2026-11-05 06:06:10.558
cmw3571xd00jekxs4signjxzq	cmw3570x90007kxs4ub4cewlk	cmw34ixoq002ukx9zx3z9c822	25	t	2026-11-05 06:06:10.561
cmw3571xo00jgkxs454upp0en	cmw3570xe0008kxs48fj0tqp4	cmw34ixoq002ukx9zx3z9c822	25	t	2026-11-05 06:06:10.572
cmw3571xr00jikxs4k5ze7g5f	cmw3570xl0009kxs4w3cqgopz	cmw34ixoq002ukx9zx3z9c822	25	t	2026-11-05 06:06:10.575
cmw3571xv00jkkxs4q0an3wb3	cmw3570xq000akxs4ukjudqnb	cmw34ixoq002ukx9zx3z9c822	25	t	2026-11-05 06:06:10.58
cmw3571xz00jmkxs4kzl46g6b	cmw3570xu000bkxs4kz4ls6hm	cmw34ixoq002ukx9zx3z9c822	25	t	2026-11-05 06:06:10.583
cmw3571y200jokxs4d7zqwasx	cmw3570xx000ckxs44nqlujvw	cmw34ixoq002ukx9zx3z9c822	25	t	2026-11-05 06:06:10.587
cmw3571y600jqkxs4ivjpvynt	cmw3570y0000dkxs4xzmd4jmh	cmw34ixoq002ukx9zx3z9c822	25	t	2026-11-05 06:06:10.591
cmw3571ya00jskxs4aj6g0zfh	cmw3570y3000ekxs4mc9h9jyu	cmw34ixoq002ukx9zx3z9c822	25	t	2026-11-05 06:06:10.594
cmw3571ye00jukxs4vwadlt9n	cmw3570y6000fkxs42kqopx2e	cmw34ixoq002ukx9zx3z9c822	25	t	2026-11-05 06:06:10.598
cmw3571yh00jwkxs477a52a9w	cmw3570y8000gkxs4qqluc7ab	cmw34ixoq002ukx9zx3z9c822	25	t	2026-11-05 06:06:10.602
cmw3571yp00k2kxs4hp0z1qzq	cmw3570x00005kxs446hqellp	cmw34ixox002ykx9znnmxishz	25	t	2026-11-05 06:06:10.609
cmw3571ys00k4kxs4v8xorzb0	cmw3570x50006kxs4t847blov	cmw34ixox002ykx9znnmxishz	25	t	2026-11-05 06:06:10.612
cmw3571yv00k6kxs4h40jzrgg	cmw3570x90007kxs4ub4cewlk	cmw34ixox002ykx9znnmxishz	25	t	2026-11-05 06:06:10.616
cmw3571yy00k8kxs4wiagzv3r	cmw3570xe0008kxs48fj0tqp4	cmw34ixox002ykx9znnmxishz	25	t	2026-11-05 06:06:10.619
cmw3571z200kakxs4e6nnknrm	cmw3570xl0009kxs4w3cqgopz	cmw34ixox002ykx9znnmxishz	25	t	2026-11-05 06:06:10.622
cmw3571z700kckxs4y6tgw3hg	cmw3570xq000akxs4ukjudqnb	cmw34ixox002ykx9znnmxishz	25	t	2026-11-05 06:06:10.628
cmw3571zb00kekxs4f19d31dg	cmw3570xu000bkxs4kz4ls6hm	cmw34ixox002ykx9znnmxishz	25	t	2026-11-05 06:06:10.632
cmw3571zf00kgkxs4widg5ljm	cmw3570xx000ckxs44nqlujvw	cmw34ixox002ykx9znnmxishz	25	t	2026-11-05 06:06:10.635
cmw3571zi00kikxs46tv56vvx	cmw3570y0000dkxs4xzmd4jmh	cmw34ixox002ykx9znnmxishz	25	t	2026-11-05 06:06:10.638
cmw3571zm00kkkxs4cayy52o6	cmw3570y3000ekxs4mc9h9jyu	cmw34ixox002ykx9znnmxishz	25	t	2026-11-05 06:06:10.643
cmw3571zq00kmkxs4fiu7lbbh	cmw3570y6000fkxs42kqopx2e	cmw34ixox002ykx9znnmxishz	25	t	2026-11-05 06:06:10.646
cmw3571zt00kokxs4620mllia	cmw3570y8000gkxs4qqluc7ab	cmw34ixox002ykx9znnmxishz	25	t	2026-11-05 06:06:10.649
cmw3571zz00kukxs4wg6k0yt2	cmw3570x00005kxs446hqellp	cmw34ixp30032kx9zy0uqq95e	40	t	2026-11-05 06:06:10.655
cmw35720200kwkxs4dxbj2rej	cmw3570x50006kxs4t847blov	cmw34ixp30032kx9zy0uqq95e	40	t	2026-11-05 06:06:10.659
cmw35720700kykxs49lw3v0hj	cmw3570x90007kxs4ub4cewlk	cmw34ixp30032kx9zy0uqq95e	40	t	2026-11-05 06:06:10.663
cmw35720a00l0kxs4q42533vm	cmw3570xe0008kxs48fj0tqp4	cmw34ixp30032kx9zy0uqq95e	40	t	2026-11-05 06:06:10.667
cmw35720e00l2kxs4dg91fl4g	cmw3570xl0009kxs4w3cqgopz	cmw34ixp30032kx9zy0uqq95e	40	t	2026-11-05 06:06:10.671
cmw35720i00l4kxs42tnu3zc4	cmw3570xq000akxs4ukjudqnb	cmw34ixp30032kx9zy0uqq95e	40	t	2026-11-05 06:06:10.675
cmw35720m00l6kxs41l7rg1wn	cmw3570xu000bkxs4kz4ls6hm	cmw34ixp30032kx9zy0uqq95e	40	t	2026-11-05 06:06:10.679
cmw35720q00l8kxs49krcd100	cmw3570xx000ckxs44nqlujvw	cmw34ixp30032kx9zy0uqq95e	40	t	2026-11-05 06:06:10.683
cmw35720v00lakxs4s3t83fzm	cmw3570y0000dkxs4xzmd4jmh	cmw34ixp30032kx9zy0uqq95e	40	t	2026-11-05 06:06:10.687
cmw35720z00lckxs4p651osq6	cmw3570y3000ekxs4mc9h9jyu	cmw34ixp30032kx9zy0uqq95e	40	t	2026-11-05 06:06:10.692
cmw35721400lekxs4y23g0yp3	cmw3570y6000fkxs42kqopx2e	cmw34ixp30032kx9zy0uqq95e	40	t	2026-11-05 06:06:10.696
cmw35721800lgkxs4uzzoyaj1	cmw3570y8000gkxs4qqluc7ab	cmw34ixp30032kx9zy0uqq95e	40	t	2026-11-05 06:06:10.7
cmw35721j00lmkxs4li944o7i	cmw3570x00005kxs446hqellp	cmw34ixp90036kx9ztxkfwljd	20	t	2026-11-05 06:06:10.711
cmw35721n00lokxs46yyhehq6	cmw3570x50006kxs4t847blov	cmw34ixp90036kx9ztxkfwljd	20	t	2026-11-05 06:06:10.716
cmw35721r00lqkxs48psfmqtf	cmw3570x90007kxs4ub4cewlk	cmw34ixp90036kx9ztxkfwljd	20	t	2026-11-05 06:06:10.719
cmw35721u00lskxs4fp980vu1	cmw3570xe0008kxs48fj0tqp4	cmw34ixp90036kx9ztxkfwljd	20	t	2026-11-05 06:06:10.723
cmw35721y00lukxs4zlz1y65n	cmw3570xl0009kxs4w3cqgopz	cmw34ixp90036kx9ztxkfwljd	20	t	2026-11-05 06:06:10.726
cmw35722100lwkxs4xhix1iid	cmw3570xq000akxs4ukjudqnb	cmw34ixp90036kx9ztxkfwljd	20	t	2026-11-05 06:06:10.729
cmw35722400lykxs4vq536pc6	cmw3570xu000bkxs4kz4ls6hm	cmw34ixp90036kx9ztxkfwljd	20	t	2026-11-05 06:06:10.732
cmw35722600m0kxs4cmf81d89	cmw3570xx000ckxs44nqlujvw	cmw34ixp90036kx9ztxkfwljd	20	t	2026-11-05 06:06:10.735
cmw35722900m2kxs4cvjn5gds	cmw3570y0000dkxs4xzmd4jmh	cmw34ixp90036kx9ztxkfwljd	20	t	2026-11-05 06:06:10.738
cmw35722c00m4kxs4be4asnl5	cmw3570y3000ekxs4mc9h9jyu	cmw34ixp90036kx9ztxkfwljd	20	t	2026-11-05 06:06:10.741
cmw35722f00m6kxs45l8121no	cmw3570y6000fkxs42kqopx2e	cmw34ixp90036kx9ztxkfwljd	20	t	2026-11-05 06:06:10.744
cmw35722i00m8kxs4vl22fjxv	cmw3570y8000gkxs4qqluc7ab	cmw34ixp90036kx9ztxkfwljd	20	t	2026-11-05 06:06:10.747
cmw35722p00mekxs4qouyim6o	cmw3570x00005kxs446hqellp	cmw34ixpe003akx9zlekxz9ls	18	t	2026-11-05 06:06:10.754
cmw35722s00mgkxs4zenpvciy	cmw3570x50006kxs4t847blov	cmw34ixpe003akx9zlekxz9ls	18	t	2026-11-05 06:06:10.757
cmw35722v00mikxs4pl65s4n4	cmw3570x90007kxs4ub4cewlk	cmw34ixpe003akx9zlekxz9ls	18	t	2026-11-05 06:06:10.76
cmw35722y00mkkxs4th2mt1sy	cmw3570xe0008kxs48fj0tqp4	cmw34ixpe003akx9zlekxz9ls	18	t	2026-11-05 06:06:10.763
cmw35723200mmkxs4gewaea2z	cmw3570xl0009kxs4w3cqgopz	cmw34ixpe003akx9zlekxz9ls	18	t	2026-11-05 06:06:10.766
cmw35723700mokxs4bj1iif4j	cmw3570xq000akxs4ukjudqnb	cmw34ixpe003akx9zlekxz9ls	18	t	2026-11-05 06:06:10.771
cmw35723b00mqkxs489dwcngo	cmw3570xu000bkxs4kz4ls6hm	cmw34ixpe003akx9zlekxz9ls	18	t	2026-11-05 06:06:10.775
cmw35723f00mskxs4f79ewllr	cmw3570xx000ckxs44nqlujvw	cmw34ixpe003akx9zlekxz9ls	18	t	2026-11-05 06:06:10.78
cmw35723j00mukxs4z59qan7b	cmw3570y0000dkxs4xzmd4jmh	cmw34ixpe003akx9zlekxz9ls	18	t	2026-11-05 06:06:10.783
cmw35723n00mwkxs4t4huthkk	cmw3570y3000ekxs4mc9h9jyu	cmw34ixpe003akx9zlekxz9ls	18	t	2026-11-05 06:06:10.787
cmw35723r00mykxs4vx5jgltg	cmw3570y6000fkxs42kqopx2e	cmw34ixpe003akx9zlekxz9ls	18	t	2026-11-05 06:06:10.792
cmw35723v00n0kxs4lbpk7pfv	cmw3570y8000gkxs4qqluc7ab	cmw34ixpe003akx9zlekxz9ls	18	t	2026-11-05 06:06:10.795
cmw35724400n6kxs42ikbha9e	cmw3570x00005kxs446hqellp	cmw34ixpk003ekx9zgssisbuo	15	t	2026-11-05 06:06:10.804
cmw35724700n8kxs404gkmxkh	cmw3570x50006kxs4t847blov	cmw34ixpk003ekx9zgssisbuo	15	t	2026-11-05 06:06:10.807
cmw35724b00nakxs4ysxv2uu8	cmw3570x90007kxs4ub4cewlk	cmw34ixpk003ekx9zgssisbuo	15	t	2026-11-05 06:06:10.811
cmw35724e00nckxs4x04qwqaf	cmw3570xe0008kxs48fj0tqp4	cmw34ixpk003ekx9zgssisbuo	15	t	2026-11-05 06:06:10.814
cmw35724i00nekxs4ss7cpnf6	cmw3570xl0009kxs4w3cqgopz	cmw34ixpk003ekx9zgssisbuo	15	t	2026-11-05 06:06:10.818
cmw35724l00ngkxs4d0jpxptl	cmw3570xq000akxs4ukjudqnb	cmw34ixpk003ekx9zgssisbuo	15	t	2026-11-05 06:06:10.822
cmw35724q00nikxs43pl6go2e	cmw3570xu000bkxs4kz4ls6hm	cmw34ixpk003ekx9zgssisbuo	15	t	2026-11-05 06:06:10.826
cmw35724t00nkkxs48uaq7i91	cmw3570xx000ckxs44nqlujvw	cmw34ixpk003ekx9zgssisbuo	15	t	2026-11-05 06:06:10.83
cmw35724w00nmkxs45vmb7rh0	cmw3570y0000dkxs4xzmd4jmh	cmw34ixpk003ekx9zgssisbuo	15	t	2026-11-05 06:06:10.832
cmw35724z00nokxs4qx7rzcpd	cmw3570y3000ekxs4mc9h9jyu	cmw34ixpk003ekx9zgssisbuo	15	t	2026-11-05 06:06:10.835
cmw35725200nqkxs4183dtedp	cmw3570y6000fkxs42kqopx2e	cmw34ixpk003ekx9zgssisbuo	15	t	2026-11-05 06:06:10.838
cmw35725500nskxs4zh5zdvcc	cmw3570y8000gkxs4qqluc7ab	cmw34ixpk003ekx9zgssisbuo	15	t	2026-11-05 06:06:10.841
cmw35725b00nykxs4t2z2sycv	cmw3570x00005kxs446hqellp	cmw34ixps003ikx9zctrqq68z	16	t	2026-11-05 06:06:10.848
cmw35725e00o0kxs4c0iy50ms	cmw3570x50006kxs4t847blov	cmw34ixps003ikx9zctrqq68z	16	t	2026-11-05 06:06:10.85
cmw35725g00o2kxs4i2edo2e8	cmw3570x90007kxs4ub4cewlk	cmw34ixps003ikx9zctrqq68z	16	t	2026-11-05 06:06:10.852
cmw35725j00o4kxs497skzkyf	cmw3570xe0008kxs48fj0tqp4	cmw34ixps003ikx9zctrqq68z	16	t	2026-11-05 06:06:10.855
cmw35725m00o6kxs43odefu1t	cmw3570xl0009kxs4w3cqgopz	cmw34ixps003ikx9zctrqq68z	16	t	2026-11-05 06:06:10.858
cmw35725q00o8kxs4m8kwjjhw	cmw3570xq000akxs4ukjudqnb	cmw34ixps003ikx9zctrqq68z	16	t	2026-11-05 06:06:10.862
cmw35725u00oakxs4unwd3byb	cmw3570xu000bkxs4kz4ls6hm	cmw34ixps003ikx9zctrqq68z	16	t	2026-11-05 06:06:10.866
cmw35725x00ockxs4fakybms5	cmw3570xx000ckxs44nqlujvw	cmw34ixps003ikx9zctrqq68z	16	t	2026-11-05 06:06:10.869
cmw35726000oekxs4196jxrfu	cmw3570y0000dkxs4xzmd4jmh	cmw34ixps003ikx9zctrqq68z	16	t	2026-11-05 06:06:10.872
cmw35726300ogkxs4hl46qbvb	cmw3570y3000ekxs4mc9h9jyu	cmw34ixps003ikx9zctrqq68z	16	t	2026-11-05 06:06:10.876
cmw35726800oikxs4al6yscmw	cmw3570y6000fkxs42kqopx2e	cmw34ixps003ikx9zctrqq68z	16	t	2026-11-05 06:06:10.881
cmw35726c00okkxs42u4v3pb9	cmw3570y8000gkxs4qqluc7ab	cmw34ixps003ikx9zctrqq68z	16	t	2026-11-05 06:06:10.885
cmw35726m00oqkxs4it7g8405	cmw3570x00005kxs446hqellp	cmw34ixpz003mkx9zrhcebjxb	14	t	2026-11-05 06:06:10.895
cmw35726r00oskxs4s7l8qtdu	cmw3570x50006kxs4t847blov	cmw34ixpz003mkx9zrhcebjxb	14	t	2026-11-05 06:06:10.899
cmw35726u00oukxs43dvvwx10	cmw3570x90007kxs4ub4cewlk	cmw34ixpz003mkx9zrhcebjxb	14	t	2026-11-05 06:06:10.903
cmw35726z00owkxs4t0r4lxky	cmw3570xe0008kxs48fj0tqp4	cmw34ixpz003mkx9zrhcebjxb	14	t	2026-11-05 06:06:10.907
cmw35727300oykxs4zz7cgqv0	cmw3570xl0009kxs4w3cqgopz	cmw34ixpz003mkx9zrhcebjxb	14	t	2026-11-05 06:06:10.911
cmw35727600p0kxs4skayikot	cmw3570xq000akxs4ukjudqnb	cmw34ixpz003mkx9zrhcebjxb	14	t	2026-11-05 06:06:10.915
cmw35727a00p2kxs47riwddiu	cmw3570xu000bkxs4kz4ls6hm	cmw34ixpz003mkx9zrhcebjxb	14	t	2026-11-05 06:06:10.918
cmw35727e00p4kxs45a3tfpkh	cmw3570xx000ckxs44nqlujvw	cmw34ixpz003mkx9zrhcebjxb	14	t	2026-11-05 06:06:10.922
cmw35727i00p6kxs4mya82gd5	cmw3570y0000dkxs4xzmd4jmh	cmw34ixpz003mkx9zrhcebjxb	14	t	2026-11-05 06:06:10.926
cmw35727l00p8kxs4temh5pvj	cmw3570y3000ekxs4mc9h9jyu	cmw34ixpz003mkx9zrhcebjxb	14	t	2026-11-05 06:06:10.929
cmw35727o00pakxs4jupf3vlz	cmw3570y6000fkxs42kqopx2e	cmw34ixpz003mkx9zrhcebjxb	14	t	2026-11-05 06:06:10.933
cmw35727t00pckxs42udp5pk3	cmw3570y8000gkxs4qqluc7ab	cmw34ixpz003mkx9zrhcebjxb	14	t	2026-11-05 06:06:10.937
cmw35728600pikxs49ajat2vz	cmw3570x00005kxs446hqellp	cmw34ixq6003qkx9zvwmdubuy	22	t	2026-11-05 06:06:10.95
cmw35728a00pkkxs4udbq773b	cmw3570x50006kxs4t847blov	cmw34ixq6003qkx9zvwmdubuy	22	t	2026-11-05 06:06:10.954
cmw35728e00pmkxs4igwxnd0c	cmw3570x90007kxs4ub4cewlk	cmw34ixq6003qkx9zvwmdubuy	22	t	2026-11-05 06:06:10.958
cmw35728j00pokxs46wbt52xb	cmw3570xe0008kxs48fj0tqp4	cmw34ixq6003qkx9zvwmdubuy	22	t	2026-11-05 06:06:10.964
cmw35728n00pqkxs4kyqjuw7y	cmw3570xl0009kxs4w3cqgopz	cmw34ixq6003qkx9zvwmdubuy	22	t	2026-11-05 06:06:10.968
cmw35728r00pskxs4ydr5yf9t	cmw3570xq000akxs4ukjudqnb	cmw34ixq6003qkx9zvwmdubuy	22	t	2026-11-05 06:06:10.971
cmw35728v00pukxs49hl1thmi	cmw3570xu000bkxs4kz4ls6hm	cmw34ixq6003qkx9zvwmdubuy	22	t	2026-11-05 06:06:10.976
cmw35728z00pwkxs4gqsxt5s7	cmw3570xx000ckxs44nqlujvw	cmw34ixq6003qkx9zvwmdubuy	22	t	2026-11-05 06:06:10.979
cmw35729200pykxs4lziav23j	cmw3570y0000dkxs4xzmd4jmh	cmw34ixq6003qkx9zvwmdubuy	22	t	2026-11-05 06:06:10.982
cmw35729400q0kxs4ejybft3i	cmw3570y3000ekxs4mc9h9jyu	cmw34ixq6003qkx9zvwmdubuy	22	t	2026-11-05 06:06:10.985
cmw35729800q2kxs4m3chre3r	cmw3570y6000fkxs42kqopx2e	cmw34ixq6003qkx9zvwmdubuy	22	t	2026-11-05 06:06:10.988
cmw35729e00q4kxs4rajvdgqp	cmw3570y8000gkxs4qqluc7ab	cmw34ixq6003qkx9zvwmdubuy	22	t	2026-11-05 06:06:10.994
cmw35729s00qakxs4bdx3e2jl	cmw3570x00005kxs446hqellp	cmw34ixqb003ukx9zq4d6y4lz	22	t	2026-11-05 06:06:11.008
cmw35729x00qckxs4roy2os7a	cmw3570x50006kxs4t847blov	cmw34ixqb003ukx9zq4d6y4lz	22	t	2026-11-05 06:06:11.013
cmw3572a100qekxs4wylezxza	cmw3570x90007kxs4ub4cewlk	cmw34ixqb003ukx9zq4d6y4lz	22	t	2026-11-05 06:06:11.017
cmw3572a500qgkxs4w95yn0or	cmw3570xe0008kxs48fj0tqp4	cmw34ixqb003ukx9zq4d6y4lz	22	t	2026-11-05 06:06:11.021
cmw3572a900qikxs4pw843g8z	cmw3570xl0009kxs4w3cqgopz	cmw34ixqb003ukx9zq4d6y4lz	22	t	2026-11-05 06:06:11.025
cmw3572ae00qkkxs4axazj1dy	cmw3570xq000akxs4ukjudqnb	cmw34ixqb003ukx9zq4d6y4lz	22	t	2026-11-05 06:06:11.031
cmw3572ai00qmkxs44id3783q	cmw3570xu000bkxs4kz4ls6hm	cmw34ixqb003ukx9zq4d6y4lz	22	t	2026-11-05 06:06:11.034
cmw3572an00qokxs4ddu6t1bm	cmw3570xx000ckxs44nqlujvw	cmw34ixqb003ukx9zq4d6y4lz	22	t	2026-11-05 06:06:11.039
cmw3572ar00qqkxs48otakui6	cmw3570y0000dkxs4xzmd4jmh	cmw34ixqb003ukx9zq4d6y4lz	22	t	2026-11-05 06:06:11.043
cmw3572aw00qskxs43cti3ukk	cmw3570y3000ekxs4mc9h9jyu	cmw34ixqb003ukx9zq4d6y4lz	22	t	2026-11-05 06:06:11.048
cmw3572az00qukxs4kurr5e8a	cmw3570y6000fkxs42kqopx2e	cmw34ixqb003ukx9zq4d6y4lz	22	t	2026-11-05 06:06:11.052
cmw3572b300qwkxs4qb4npavc	cmw3570y8000gkxs4qqluc7ab	cmw34ixqb003ukx9zq4d6y4lz	22	t	2026-11-05 06:06:11.055
cmw3572bd00r2kxs4vw06l3ea	cmw3570x00005kxs446hqellp	cmw34ixqg003ykx9zancnxx4e	22	t	2026-11-05 06:06:11.066
cmw3572bh00r4kxs4uc3y30er	cmw3570x50006kxs4t847blov	cmw34ixqg003ykx9zancnxx4e	22	t	2026-11-05 06:06:11.069
cmw3572bl00r6kxs4n93t2ggn	cmw3570x90007kxs4ub4cewlk	cmw34ixqg003ykx9zancnxx4e	22	t	2026-11-05 06:06:11.073
cmw3572bq00r8kxs46feu4sig	cmw3570xe0008kxs48fj0tqp4	cmw34ixqg003ykx9zancnxx4e	22	t	2026-11-05 06:06:11.078
cmw3572bu00rakxs41e0o392f	cmw3570xl0009kxs4w3cqgopz	cmw34ixqg003ykx9zancnxx4e	22	t	2026-11-05 06:06:11.082
cmw3572bx00rckxs4fv4usc2t	cmw3570xq000akxs4ukjudqnb	cmw34ixqg003ykx9zancnxx4e	22	t	2026-11-05 06:06:11.086
cmw3572c100rekxs4je028u1u	cmw3570xu000bkxs4kz4ls6hm	cmw34ixqg003ykx9zancnxx4e	22	t	2026-11-05 06:06:11.089
cmw3572c400rgkxs4vltjchng	cmw3570xx000ckxs44nqlujvw	cmw34ixqg003ykx9zancnxx4e	22	t	2026-11-05 06:06:11.093
cmw3572c800rikxs4exkcpnkc	cmw3570y0000dkxs4xzmd4jmh	cmw34ixqg003ykx9zancnxx4e	22	t	2026-11-05 06:06:11.096
cmw3572cb00rkkxs43v05jyf5	cmw3570y3000ekxs4mc9h9jyu	cmw34ixqg003ykx9zancnxx4e	22	t	2026-11-05 06:06:11.1
cmw3572cf00rmkxs4s9swoa8f	cmw3570y6000fkxs42kqopx2e	cmw34ixqg003ykx9zancnxx4e	22	t	2026-11-05 06:06:11.103
cmw3572ci00rokxs49w74neie	cmw3570y8000gkxs4qqluc7ab	cmw34ixqg003ykx9zancnxx4e	22	t	2026-11-05 06:06:11.107
cmw3572cs00rukxs4gkmk1vuz	cmw3570x00005kxs446hqellp	cmw34ixql0042kx9zgkjy2zsj	16	t	2026-11-05 06:06:11.116
cmw3572cv00rwkxs42a915pyo	cmw3570x50006kxs4t847blov	cmw34ixql0042kx9zgkjy2zsj	16	t	2026-11-05 06:06:11.12
cmw3572cy00rykxs4725tgai6	cmw3570x90007kxs4ub4cewlk	cmw34ixql0042kx9zgkjy2zsj	16	t	2026-11-05 06:06:11.122
cmw3572d100s0kxs4aum7sq76	cmw3570xe0008kxs48fj0tqp4	cmw34ixql0042kx9zgkjy2zsj	16	t	2026-11-05 06:06:11.125
cmw3572d400s2kxs4vhca26st	cmw3570xl0009kxs4w3cqgopz	cmw34ixql0042kx9zgkjy2zsj	16	t	2026-11-05 06:06:11.128
cmw3572d600s4kxs4re2n4xin	cmw3570xq000akxs4ukjudqnb	cmw34ixql0042kx9zgkjy2zsj	16	t	2026-11-05 06:06:11.131
cmw3572d900s6kxs47qfbytfm	cmw3570xu000bkxs4kz4ls6hm	cmw34ixql0042kx9zgkjy2zsj	16	t	2026-11-05 06:06:11.133
cmw3572db00s8kxs4bzayi53u	cmw3570xx000ckxs44nqlujvw	cmw34ixql0042kx9zgkjy2zsj	16	t	2026-11-05 06:06:11.136
cmw3572de00sakxs4q9aucm7j	cmw3570y0000dkxs4xzmd4jmh	cmw34ixql0042kx9zgkjy2zsj	16	t	2026-11-05 06:06:11.138
cmw3572dg00sckxs4difohc9n	cmw3570y3000ekxs4mc9h9jyu	cmw34ixql0042kx9zgkjy2zsj	16	t	2026-11-05 06:06:11.14
cmw3572dj00sekxs4jg3hqgis	cmw3570y6000fkxs42kqopx2e	cmw34ixql0042kx9zgkjy2zsj	16	t	2026-11-05 06:06:11.144
cmw3572dn00sgkxs4opw169dn	cmw3570y8000gkxs4qqluc7ab	cmw34ixql0042kx9zgkjy2zsj	16	t	2026-11-05 06:06:11.147
cmw3572dx00smkxs4tpmhk1m6	cmw3570x00005kxs446hqellp	cmw34ixqr0046kx9zty1xsu8b	16	t	2026-11-05 06:06:11.157
cmw3572e200sokxs4oputly24	cmw3570x50006kxs4t847blov	cmw34ixqr0046kx9zty1xsu8b	16	t	2026-11-05 06:06:11.162
cmw3572e500sqkxs4vqzykyil	cmw3570x90007kxs4ub4cewlk	cmw34ixqr0046kx9zty1xsu8b	16	t	2026-11-05 06:06:11.165
cmw3572e900sskxs49vek9gtu	cmw3570xe0008kxs48fj0tqp4	cmw34ixqr0046kx9zty1xsu8b	16	t	2026-11-05 06:06:11.169
cmw3572ed00sukxs4i205e84u	cmw3570xl0009kxs4w3cqgopz	cmw34ixqr0046kx9zty1xsu8b	16	t	2026-11-05 06:06:11.173
cmw3572eg00swkxs4pp7dmrpn	cmw3570xq000akxs4ukjudqnb	cmw34ixqr0046kx9zty1xsu8b	16	t	2026-11-05 06:06:11.176
cmw3572el00sykxs4jlmyjwd5	cmw3570xu000bkxs4kz4ls6hm	cmw34ixqr0046kx9zty1xsu8b	16	t	2026-11-05 06:06:11.181
cmw3572eo00t0kxs4gj940ez0	cmw3570xx000ckxs44nqlujvw	cmw34ixqr0046kx9zty1xsu8b	16	t	2026-11-05 06:06:11.185
cmw3572es00t2kxs4hdgjib6g	cmw3570y0000dkxs4xzmd4jmh	cmw34ixqr0046kx9zty1xsu8b	16	t	2026-11-05 06:06:11.188
cmw3572ev00t4kxs405qo2ok9	cmw3570y3000ekxs4mc9h9jyu	cmw34ixqr0046kx9zty1xsu8b	16	t	2026-11-05 06:06:11.192
cmw3572ez00t6kxs4zldajmrs	cmw3570y6000fkxs42kqopx2e	cmw34ixqr0046kx9zty1xsu8b	16	t	2026-11-05 06:06:11.196
cmw3572f200t8kxs4gzjyo31b	cmw3570y8000gkxs4qqluc7ab	cmw34ixqr0046kx9zty1xsu8b	16	t	2026-11-05 06:06:11.199
cmw3572fb00tekxs45mmghv7a	cmw3570x00005kxs446hqellp	cmw34ixqy004akx9z5785yak8	18	t	2026-11-05 06:06:11.207
cmw3572ff00tgkxs41kt5aowr	cmw3570x50006kxs4t847blov	cmw34ixqy004akx9z5785yak8	18	t	2026-11-05 06:06:11.211
cmw3572fj00tikxs4onnl33hi	cmw3570x90007kxs4ub4cewlk	cmw34ixqy004akx9z5785yak8	18	t	2026-11-05 06:06:11.215
cmw3572fm00tkkxs4lczijdez	cmw3570xe0008kxs48fj0tqp4	cmw34ixqy004akx9z5785yak8	18	t	2026-11-05 06:06:11.219
cmw3572fq00tmkxs4hdgn171u	cmw3570xl0009kxs4w3cqgopz	cmw34ixqy004akx9z5785yak8	18	t	2026-11-05 06:06:11.222
cmw3572ft00tokxs4s04tsu0c	cmw3570xq000akxs4ukjudqnb	cmw34ixqy004akx9z5785yak8	18	t	2026-11-05 06:06:11.225
cmw3572fx00tqkxs4wa49j87r	cmw3570xu000bkxs4kz4ls6hm	cmw34ixqy004akx9z5785yak8	18	t	2026-11-05 06:06:11.229
cmw3572fz00tskxs4e7ts0s6o	cmw3570xx000ckxs44nqlujvw	cmw34ixqy004akx9z5785yak8	18	t	2026-11-05 06:06:11.232
cmw3572g200tukxs4ejvx9fbh	cmw3570y0000dkxs4xzmd4jmh	cmw34ixqy004akx9z5785yak8	18	t	2026-11-05 06:06:11.234
cmw3572g500twkxs4e4mk5rfw	cmw3570y3000ekxs4mc9h9jyu	cmw34ixqy004akx9z5785yak8	18	t	2026-11-05 06:06:11.237
cmw3572g700tykxs48uuv8fqn	cmw3570y6000fkxs42kqopx2e	cmw34ixqy004akx9z5785yak8	18	t	2026-11-05 06:06:11.24
cmw3572ga00u0kxs4bobpglix	cmw3570y8000gkxs4qqluc7ab	cmw34ixqy004akx9z5785yak8	18	t	2026-11-05 06:06:11.243
cmw3572gj00u6kxs4v0x1wf8c	cmw3570x00005kxs446hqellp	cmw34ixr4004ekx9z5r7s4wf5	16	t	2026-11-05 06:06:11.251
cmw3572gl00u8kxs48xz9quu9	cmw3570x50006kxs4t847blov	cmw34ixr4004ekx9z5r7s4wf5	16	t	2026-11-05 06:06:11.254
cmw3572go00uakxs4ge0qlhjm	cmw3570x90007kxs4ub4cewlk	cmw34ixr4004ekx9z5r7s4wf5	16	t	2026-11-05 06:06:11.256
cmw3572gr00uckxs42gqsgbds	cmw3570xe0008kxs48fj0tqp4	cmw34ixr4004ekx9z5r7s4wf5	16	t	2026-11-05 06:06:11.259
cmw3572gt00uekxs4lxg706ja	cmw3570xl0009kxs4w3cqgopz	cmw34ixr4004ekx9z5r7s4wf5	16	t	2026-11-05 06:06:11.262
cmw3572gw00ugkxs4827luoym	cmw3570xq000akxs4ukjudqnb	cmw34ixr4004ekx9z5r7s4wf5	16	t	2026-11-05 06:06:11.264
cmw3572gz00uikxs4zlnf3hox	cmw3570xu000bkxs4kz4ls6hm	cmw34ixr4004ekx9z5r7s4wf5	16	t	2026-11-05 06:06:11.267
cmw3572h200ukkxs4s20b8u3u	cmw3570xx000ckxs44nqlujvw	cmw34ixr4004ekx9z5r7s4wf5	16	t	2026-11-05 06:06:11.27
cmw3572h500umkxs4pqs0840a	cmw3570y0000dkxs4xzmd4jmh	cmw34ixr4004ekx9z5r7s4wf5	16	t	2026-11-05 06:06:11.273
cmw3572h800uokxs46zkxvmm0	cmw3570y3000ekxs4mc9h9jyu	cmw34ixr4004ekx9z5r7s4wf5	16	t	2026-11-05 06:06:11.276
cmw3572hb00uqkxs4mmj01x5m	cmw3570y6000fkxs42kqopx2e	cmw34ixr4004ekx9z5r7s4wf5	16	t	2026-11-05 06:06:11.279
cmw3572he00uskxs4kg5pxazf	cmw3570y8000gkxs4qqluc7ab	cmw34ixr4004ekx9z5r7s4wf5	16	t	2026-11-05 06:06:11.282
\.


--
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Category" (id, name, slug, description, image, "createdAt", "updatedAt") FROM stdin;
cmw34ixj90000kx9zeclg1lmd	Leches	leches	Leches PIL: saborizadas, blancas, deslactosadas y soya.	\N	2026-11-05 05:47:25.125	2026-11-05 06:33:50.184
cmw34ixjg0001kx9zeyod1tjb	Yogurts	yogurts	Yogurts PIL: frutados, bebibiles y bonlé.	\N	2026-11-05 05:47:25.132	2026-11-05 06:33:50.189
cmw34ixjj0002kx9z9gmk73k2	Crema & Mantequilla	crema-mantequilla	Crema de queso de Untar y mantequilla PIL.	\N	2026-11-05 05:47:25.136	2026-11-05 06:33:50.191
cmw34ixjm0003kx9zxis7j9s0	Limpieza	limpieza	Detergentes, suavizantes y limpiadores de las marcas Ariel, Olafuturo, Olas, Borita, Skip.	\N	2026-11-05 05:47:25.138	2026-11-05 06:33:50.193
\.


--
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Product" (id, name, slug, description, price, "compareAtPrice", sku, images, material, featured, active, "categoryId", "createdAt", "updatedAt", specs, brand, contents, details) FROM stdin;
cmw34ixkv000mkx9zvp0te93a	Leche Fresca Natural	leche-fresca-natural	Leche fresca natural, ultrapasteurizada y homogeneizada — pura calidad.	10.00	\N	\N	{}	Leche	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.183	2026-11-05 06:33:50.428	\N	Leche PIL	Leche	Proceso: Ultrapasteurizada y Homogeneizada
cmw34ixl1000qkx9zbd6ebbvs	Leche Enriquecida	leche-enriquecida	Leche enriquecida con vitaminas A, D3 y E — para una alimentación completa.	9.00	\N	\N	{}	Leche	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.189	2026-11-05 06:33:50.46	\N	Leche PIL	Leche	Contenido: 800 ml
cmw34ixl8000ukx9zsxleztgs	Leche Light (Liviana)	leche-light-liviana	Leche liviana, baja en grasa y enriquecida con vitaminas A, D y E.	10.00	\N	\N	{}	Leche	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.196	2026-11-05 06:33:50.492	\N	Leche PIL	Leche	Materia Grasa: 1%
cmw34ixlf000ykx9z0pnulfab	Leche Entera (Más cremosa)	leche-ente-mas-cremosa	Leche entera más cremosa, con 3% de grasa y enriquecida con vitamina A.	13.00	\N	\N	{}	Leche	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.203	2026-11-05 06:33:50.526	\N	Leche PIL	Leche	Materia Grasa: 3% · Contenido: 1.100 ml (1.1 L)
cmw34ixln0012kx9z61jd3ppn	Bonlé Enriquecida	bonle-enriquecida	Alimento lácteo formulado con enriquecimiento — nutrición adicional.	7.50	\N	\N	{}	Leche	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.211	2026-11-05 06:33:50.562	\N	Leche PIL	Leche	Tipo: Alimento lácteo formulado
cmw34ixlu0016kx9zw0ey9tuo	Leche Deslactosada (Fácil digestión)	leche-deslactosada-facil-digestion	Leche deslactosada, fácil digestión, enriquecida con vitaminas A, D y E.	10.50	\N	\N	{}	Leche	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.218	2026-11-05 06:33:50.59	\N	Leche PIL	Leche	Materia Grasa: 2.8%
cmw34ixm2001akx9zqr3ysxyt	Leche Deslactosada Chocolatada	leche-deslactosada-chocolatada	Leche deslactosada con sabor chocolatada, caliente y nutritiva.	12.00	\N	\N	{}	Leche	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.227	2026-11-05 06:33:50.623	\N	Leche PIL	Leche	Propiedades: Fuente de Calcio
cmw34ixma001ekx9zpllll4hz	Leche Deslactosada Sabor Frutilla	leche-deslactosada-sabor-frutilla	Leche deslactosada con sabor frutilla, refrescante y digestiva.	12.00	\N	\N	{}	Leche	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.234	2026-11-05 06:33:50.661	\N	Leche PIL	Leche	Propiedades: Fuente de Calcio
cmw34ixmg001ikx9zahxvo0od	Leche Soy Saborizada Sabor Banana	leche-soy-sabor-banana	Leche de soya 100% vegetal, con sabor banana y fuente de proteína.	8.00	\N	\N	{}	Soya	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.241	2026-11-05 06:33:50.697	\N	Leche Soy	Soya	100% Vegetal · Fuente de Proteína
cmw34ixmm001mkx9zhv7dy4x7	Leche Soy Saborizada Sabor Chocolate	leche-soy-sabor-chocolate	Leche de soya 100% vegetal, con sabor chocolate y proteína vegetal.	8.00	\N	\N	{}	Soya	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.246	2026-11-05 06:33:50.735	\N	Leche Soy	Soya	100% Vegetal · Fuente de Proteína
cmw34ixmr001qkx9zrktsbntj	Leche Soy Saborizada Sabor Frutilla	leche-soy-sabor-frutilla	Leche de soya 100% vegetal, con sabor frutilla y proteína vegetal.	8.00	\N	\N	{}	Soya	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.252	2026-11-05 06:33:50.776	\N	Leche Soy	Soya	100% Vegetal · Fuente de Proteína
cmw34ixmy001ukx9zyfbrnelg	Leche Soy Saborizada Sabor Vainilla	leche-soy-sabor-vainilla	Leche de soya 100% vegetal, con sabor vainilla y proteína vegetal.	8.00	\N	\N	{}	Soya	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.258	2026-11-05 06:33:50.821	\N	Leche Soy	Soya	100% Vegetal · Fuente de Proteína
cmw34ixn5001ykx9zjvz0mud9	Batidito	batidito	Batidito refrescante — lo ideal para un adelanto de energía.	3.00	\N	\N	{}	Frutado	f	t	cmw34ixjg0001kx9zeyod1tjb	2026-11-05 05:47:25.265	2026-11-05 06:33:50.856	\N	Yogurt PIL	90 g	\N
cmw34ixnd0022kx9z26gizf6n	YoGurt Frutado (Vaso Pequeño)	yogurts-frutado-vaso-pequeno	YoGurt frutado en vaso pequeño — sabores frutilla y durazno.	6.00	\N	\N	{}	Frutado	f	t	cmw34ixjg0001kx9zeyod1tjb	2026-11-05 05:47:25.273	2026-11-05 06:33:50.898	\N	Yogurt PIL	140 g	\N
cmw34ixnk0026kx9zyyg9lt7f	YoGurt Frutado (Vaso Grande)	yogurts-frutado-vaso-grande	YoGurt frutado en vaso grande — sabores coco rallado, frutillas en trozos y duraznos en trozos.	24.00	\N	\N	{}	Frutado	f	t	cmw34ixjg0001kx9zeyod1tjb	2026-11-05 05:47:25.281	2026-11-05 06:33:50.935	\N	Yogurt PIL	700 g	\N
cmw34ixns002akx9zg0j430xo	YoGurt Bebible (1 L)	yogurts-bebible-1l	YoGurt bebibible de 1 litro — sabores frutilla, durazno, coco, mora y natural.	20.00	\N	\N	{}	Saborizado	f	t	cmw34ixjg0001kx9zeyod1tjb	2026-11-05 05:47:25.288	2026-11-05 06:33:50.979	\N	Yogurt PIL	1 L	\N
cmw34ixo0002ekx9zb6mb9rey	YoGurt Bebible (200 g)	yogurts-bebible-200g	YoGurt bebibible de 200 g — sabores frutilla y durazno.	6.50	\N	\N	{}	Saborizado	f	t	cmw34ixjg0001kx9zeyod1tjb	2026-11-05 05:47:25.296	2026-11-05 06:33:51.029	\N	Yogurt PIL	200 g	\N
cmw34ixo7002ikx9zbbtghp0r	Bebida Láctea Bonlé (1 L)	bebidalactea-bonle-1l	Bebida láctea Bonlé de 1 L — sabores frutilla y durazno.	16.00	\N	\N	{}	Bonlé	f	t	cmw34ixjg0001kx9zeyod1tjb	2026-11-05 05:47:25.303	2026-11-05 06:33:51.074	\N	Yogurt PIL	1 L (940 ml)	\N
cmw34ixod002mkx9zee73k5zk	Bebida Láctea Bonlé (1.9 L)	bebidalactea-bonle-19l	Bebida láctea Bonlé de 1.9 L — sabores frutilla y durazno.	25.00	\N	\N	{}	Bonlé	f	t	cmw34ixjg0001kx9zeyod1tjb	2026-11-05 05:47:25.309	2026-11-05 06:33:51.116	\N	Yogurt PIL	1.9 L	\N
cmw34ixoj002qkx9zugagr28i	Crema de Queso de Untar Bonlé — 1 kg	crema-queso-untar-bonle-1kg	Crema de queso de Untar Bonlé, presentación de 1 kg.	115.00	\N	\N	{}	Crema	f	t	cmw34ixjj0002kx9z9gmk73k2	2026-11-05 05:47:25.316	2026-11-05 06:33:51.149	\N	Crema de Queso de Untar	1 kg	\N
cmw34ixoq002ukx9zx3z9c822	Crema de Queso de Untar Bonlé — 200 g	crema-queso-untar-bonle-200g	Crema de queso de Untar Bonlé, presentación de 200 g — aprovechamiento a partir de 3 unidades.	32.00	30.00	\N	{}	Crema	f	t	cmw34ixjj0002kx9z9gmk73k2	2026-11-05 05:47:25.322	2026-11-05 06:33:51.187	\N	Crema de Queso de Untar	200 g	\N
cmw34ixox002ykx9znnmxishz	Mantequilla PIL Pote Grande (900 g)	mantequilla-pil-pote-granote	Mantequilla con sal en pote grande — 900 g de sabor auténtico.	95.00	\N	\N	{}	Mantequilla	f	t	cmw34ixjj0002kx9z9gmk73k2	2026-11-05 05:47:25.329	2026-11-05 06:33:51.221	\N	Mantequilla PIL	900 g	\N
cmw34ixp30032kx9zy0uqq95e	Mantequilla PIL Paquete (200 g)	mantequilla-pil-paquete-200g	Mantequilla con sal y sin sal — presentación de 200 g.	25.00	24.00	\N	{}	Mantequilla	f	t	cmw34ixjj0002kx9z9gmk73k2	2026-11-05 05:47:25.335	2026-11-05 06:33:51.253	\N	Mantequilla PIL	200 g	\N
cmw34ixk9000akx9zw30s1t02	Leche Sabor Frutilla (Deliciosa)	leche-sabor-frutilla-deliciosa	Leche sabor frutilla con un sabor auténtico y suave.	10.50	\N	\N	{}	Leche	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.161	2026-11-05 06:33:50.318	\N	Leche PIL	Leche	Materia Grasa: 2.3%
cmw34ixko000ikx9zc7o2tyea	Mónaco Leche con Café (Café Premium)	monaco-leche-con-cafe-cafe-premium	Mónaco con leche y café premium — el momento perfecto para comenzar el día.	14.00	\N	\N	{}	Leche	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.176	2026-11-05 06:33:50.387	\N	Leche PIL	Leche	Contenido: 800 ml
cmw34ixp90036kx9ztxkfwljd	Ariel 5L	ariel-5l	Detergente corporal Ariel de 5 litros — potente y concentrado.	48.00	\N	\N	{}	Detergente	f	t	cmw34ixjm0003kx9zxis7j9s0	2026-11-05 05:47:25.341	2026-11-05 06:33:51.296	\N	Ariel	5 L	\N
cmw34ixpe003akx9zlekxz9ls	Olafuturo 17	olafuturo-17	Limpieza con técnica Olafuturo — 17 versiones de potencia.	35.00	\N	\N	{}	Limpiador	f	t	cmw34ixjm0003kx9zxis7j9s0	2026-11-05 05:47:25.346	2026-11-05 06:33:51.337	\N	Olafuturo	1 L	17 efectos
cmw34ixpk003ekx9zgssisbuo	Olafuturo Maquina	olafuturo-maquina	Olafuturo para máquina de lavaplatos — limpieza profunda.	32.00	\N	\N	{}	Limpieza de Lavadora	f	t	cmw34ixjm0003kx9zxis7j9s0	2026-11-05 05:47:25.352	2026-11-05 06:33:51.374	\N	Olafuturo	1 L	\N
cmw34ixps003ikx9zctrqq68z	Olas Suavecito 5L	olas-suavecito-5l	Suavizante Olas Suavecito — 5 litros para ropa suave y fragancia.	38.00	\N	\N	{}	Suavizante	f	t	cmw34ixjm0003kx9zxis7j9s0	2026-11-05 05:47:25.36	2026-11-05 06:33:51.404	\N	Olas	5 L	\N
cmw34ixpz003mkx9zrhcebjxb	Olas Suavecitos Sensaciones 5L	olas-suavecitos-sensaciones-5l	Suavizante Olas Suavecitos — sensaciones y fragancias variados.	36.00	\N	\N	{}	Suavizante	f	t	cmw34ixjm0003kx9zxis7j9s0	2026-11-05 05:47:25.367	2026-11-05 06:33:51.444	\N	Olas	5 L	\N
cmw34ixq6003qkx9zvwmdubuy	Borita Suavizante 900ml (Celeste)	borita-suavizante-900ml-celeste	Suavizante Borita 900ml en color celeste — suavidad y durabilidad.	12.50	\N	\N	{}	Suavizante	f	t	cmw34ixjm0003kx9zxis7j9s0	2026-11-05 05:47:25.374	2026-11-05 06:33:51.479	\N	Borita	900 ml	\N
cmw34ixqb003ukx9zq4d6y4lz	Borita Suavizante 900ml (Purpura)	borita-suavizante-900ml-purpura	Suavizante Borita 900ml en color purpura — teñido ligero y suave.	12.50	\N	\N	{}	Suavizante	f	t	cmw34ixjm0003kx9zxis7j9s0	2026-11-05 05:47:25.38	2026-11-05 06:33:51.51	\N	Borita	900 ml	\N
cmw34ixqg003ykx9zancnxx4e	Borita Suavizante 900ml (Rosita)	borita-suavizante-900ml-rosita	Suavizante Borita 900ml en color rosa — suavidad y fragancia.	12.50	\N	\N	{}	Suavizante	f	t	cmw34ixjm0003kx9zxis7j9s0	2026-11-05 05:47:25.384	2026-11-05 06:33:51.545	\N	Borita	900 ml	\N
cmw34ixql0042kx9zgkjy2zsj	Borita 4L (Amarillo)	borita-4l-amarillo	Suavizante Borita 4L en color amarillo — cantidad generosa.	28.00	\N	\N	{}	Suavizante	f	t	cmw34ixjm0003kx9zxis7j9s0	2026-11-05 05:47:25.389	2026-11-05 06:33:51.626	\N	Borita	4 L	\N
cmw34ixqr0046kx9zty1xsu8b	Borita 4L (Rosa)	borita-4l-rosa	Suavizante Borita 4L en color rosa — suavidad y dureza.	28.00	\N	\N	{}	Suavizante	f	t	cmw34ixjm0003kx9zxis7j9s0	2026-11-05 05:47:25.395	2026-11-05 06:33:51.673	\N	Borita	4 L	\N
cmw34ixqy004akx9z5785yak8	Skip 3L	skip-3l	Suavizante Skip de 3 litros — calidad y durabilidad.	26.00	\N	\N	{}	Suavizante	f	t	cmw34ixjm0003kx9zxis7j9s0	2026-11-05 05:47:25.402	2026-11-05 06:33:51.717	\N	Skip	3 L	\N
cmw34ixr4004ekx9z5r7s4wf5	Skip 5L	skip-5l	Suavizante Skip de 5 litros — para toda la casa.	38.00	\N	\N	{}	Suavizante	f	t	cmw34ixjm0003kx9zxis7j9s0	2026-11-05 05:47:25.408	2026-11-05 06:33:51.751	\N	Skip	5 L	\N
cmw34ixjv0006kx9ztjsbzen4	Leche Chocolatada (Pura energía)	leche-chocolatina-pura-energia	Leche chocolatada con energía — refrescante y nutritiva para toda la familia.	10.50	\N	\N	{}	Leche	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.147	2026-11-05 06:33:50.271	\N	Leche PIL	Leche	Materia Grasa: 1.9%
cmw34ixkg000ekx9zfkybkajs	Leche con Avena (Sabor a canela - Con fibra natural)	leche-con-avena-sabor-canela-con-fibra	Leche con avena, sabor canela y fibra natural — más saludable.	10.50	\N	\N	{}	Leche	f	t	cmw34ixj90000kx9zeclg1lmd	2026-11-05 05:47:25.168	2026-11-05 06:33:50.352	\N	Leche PIL	Leche	Materia Grasa: 1.7%
\.


--
-- Name: BranchStock BranchStock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BranchStock"
    ADD CONSTRAINT "BranchStock_pkey" PRIMARY KEY (id);


--
-- Name: Category Category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY (id);


--
-- Name: Product Product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (id);


--
-- Name: BranchStock_branchId_productId_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "BranchStock_branchId_productId_key" ON public."BranchStock" USING btree ("branchId", "productId");


--
-- Name: BranchStock_productId_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "BranchStock_productId_idx" ON public."BranchStock" USING btree ("productId");


--
-- Name: Category_slug_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Category_slug_key" ON public."Category" USING btree (slug);


--
-- Name: Product_categoryId_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Product_categoryId_idx" ON public."Product" USING btree ("categoryId");


--
-- Name: Product_featured_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Product_featured_idx" ON public."Product" USING btree (featured);


--
-- Name: Product_sku_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Product_sku_key" ON public."Product" USING btree (sku);


--
-- Name: Product_slug_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Product_slug_key" ON public."Product" USING btree (slug);


--
-- Name: BranchStock BranchStock_branchId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BranchStock"
    ADD CONSTRAINT "BranchStock_branchId_fkey" FOREIGN KEY ("branchId") REFERENCES public."Branch"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: BranchStock BranchStock_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BranchStock"
    ADD CONSTRAINT "BranchStock_productId_fkey" FOREIGN KEY ("productId") REFERENCES public."Product"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Product Product_categoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public."Category"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

\unrestrict OsY6xGoQG4UO2GPxVwAlQm93HcSP1y6IEyXwRBm3IpbvnClMxsCoTaVtNBBiKib

