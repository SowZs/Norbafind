-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2020 a las 13:44:14
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `buscador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `usuario` varchar(20) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`usuario`, `contraseña`, `nombre`, `apellido`) VALUES
('admin1', 'e10adc3949ba59abbe56e057f20f883e', 'David', 'Aspano'),
('admin2', 'e10adc3949ba59abbe56e057f20f883e', 'Fernando', 'López');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paginas`
--

CREATE TABLE `paginas` (
  `titulo` varchar(100) NOT NULL,
  `enlace` varchar(1000) NOT NULL,
  `descripcion` varchar(6000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paginas`
--

INSERT INTO `paginas` (`titulo`, `enlace`, `descripcion`) VALUES
('20minutos.es | El medio social | Última hora, local, España y ...', 'https://www.20minutos.es/', 'Diario de información general y local más leído de España. Consulta las noticias de última hora de España, internacional, local y deportes en 20minutos.'),
('Aemet', 'http://www.aemet.es', 'Información meteorológica y climatológica, predicción, avisos, observación, anuncios, atención al público, divulgación e información de la Agencia.'),
('Agrupación de Cooperativas Valle del Jerte', 'https://www.ac-vallejerte.es/', 'La Agrupación de Cooperativas “Valle del Jerte”, Sdad. Coop. Ltda. es una Cooperativa de 2º Grado integrada por quince Cooperativas socias, ubicadas todas ellas en la Comarca del Valle del Jerte y la Vera, en el Norte de la Provincia de Cáceres, Extremadura.\r\n'),
('AliExpress - Compra online de Electrónica, Moda, Casa y ...', 'https://es.aliexpress.com/', 'Compra online de electrónica, moda, accesorios para móviles, informática, infantil y más artículos que son tendencia on AliExpress.'),
('Amazon.es: compra online de electrónica, libros, deporte ...', 'https://www.amazon.es/', 'Descubre y compra online: electrónica, moda, hogar, libros, deporte y mucho más a precios bajos en Amazon.es. Envío gratis con Amazon Prime.'),
('Ayuntamiento de Cáceres: Inicio', 'https://www.ayto-caceres.es/', 'El Ayuntamiento es el organismo con mayores competencias en la ciudad, ya que regula la vida diaria de los ciudadanos, la planificación urbanística, los ...'),
('Booking.com | Web oficial | Los mejores hoteles y alojamientos', 'https://www.booking.com', 'Hoteles con grandes descuentos en 120.000 destinos de todo el mundo. Consulta los comentarios y encuentra el mejor precio en todo tipo de hoteles con ...'),
('Cáceres - Wikipedia, la enciclopedia libre', 'https://es.wikipedia.org/wiki/C%C3%A1ceres', 'Cáceres es una ciudad​ y municipio español situado en el centro de la comunidad autónoma de Extremadura. La ciudad es capital de la provincia homónima ...'),
('Canal Extremadura: Bienvenidos', 'http://www.canalextremadura.es/', 'Canal Extremadura - Medio de comunicación público de Extremadura.'),
('Carrefour: Ofertas en Electrónica, Moda, Alimentación ...', 'https://www.carrefour.es/', 'Compra con las mejores OFERTAS y descubre las últimas novedades en Electrónica, Moda, Informática, Telefonía y los mejores precios en Alimentación .'),
('Centro Comercial Cáceres | Ruta de la Plata', 'https://centrocomercialrutadelaplata.com/', 'El Centro Comercial Ruta de la Plata se inauguró el 18 de Mayo de 1993, y desde entonces se ha convertido en el principal referente comercial de la Ciudad.'),
('Centro Comercial El Faro: El mayor Centro Comercial de ...', 'https://www.ccelfaro.com/', 'Centro Comercial El Faro es la referencia comercial en Extremadura. Encuentra todo lo que necesitas, desde tiendas con las que ir a la última hasta ...'),
('CEXAC SL: Aceite de Oliva - Aceite de Semilla - Aceite de ...', 'http://www.cexac.com/', 'Empresa extremeña de venta de aceite, envasado y elaboración, de los tipos oliva, girasol, semillas y orujo de oliva.'),
('Comarca de La Vera - Extremadura - España - inicio', 'http://www.comarcadelavera.com/', 'Podrá encontrar toda la información actualizada que sea de su interés sobre todos los municipios de la Comarca de la Vera. Busque ese dato que necesita ...'),
('Compañía Española de Tabaco en Rama ...', 'http://www.cetarsa.es/', 'CETARSA. Comprometidos con los AGRICULTORES. Comprometidos con el EMPLEO. CETARSA. CETARSA. Comprometidos con la CALIDAD. CETARSA.'),
('Educarex - Inicio', 'https://www.educarex.es/', 'Educarex: El portal educativo de Extremadura. ... de plazas escolares para el curso 2020/2021 se presentarán del 19 al 28 de mayo a través de Rayuela.'),
('EL MUNDO - Diario online líder de información en español', 'https://www.elmundo.es/', 'Noticias, actualidad, álbumes, debates, sociedad, servicios, entretenimiento y última hora en España y el mundo.'),
('EL PAÍS: el periódico global', 'https://elpais.com/', 'Noticias de última hora sobre la actualidad en España y el mundo: política, economía, deportes, cultura, sociedad, tecnología, gente, opinión, viajes, moda, ...'),
('El Periódico Extremadura. Noticias de Extremadura, Cáceres ...', 'https://www.elperiodicoextremadura.com/', 'El Periódico Extremadura. Noticias de Extremadura, Cáceres, Badajoz.'),
('El Tiempo', 'https://www.eltiempo.es/', 'El Tiempo de hoy en España y el mundo. Previsión del tiempo para hoy, mañana y los próximos días. El Tiempo en 200.000 ciudades.'),
('Electrocash Electrodomésticos · El pequeño... en precios.', 'https://www.electrocash.es/', 'En Electrocash encontrarás una amplia gama de electrodomésticos, electrónica, climatización, TVs, Smartphones y más para tu hogar a un precio increíble.'),
('eScholarium', 'https://escholarium.educarex.es', 'Tutoría electrónica. La forma de personalizar la educación.'),
('Facebook - Entrar o registrarse', 'https://www.facebook.com/', 'Crea una cuenta o inicia sesión en Facebook. Conecta con amigos, familiares y otras personas que conozcas. Comparte fotos y vídeos, envía mensajes y...'),
('Festival Internacional de Teatro Clásico de Mérida', 'https://www.festivaldemerida.es/', 'Programación · Calendario · El Festival · Mérida · Otras sedes · Otras actividades · Prensa · English. Proximamente. Más información en mayo 2020. Últimos ...'),
('Geoparque Villuercas Ibores Jara | Geoparque Villuercas', 'https://www.geoparquevilluercas.es/', 'El Geoparque de Villuercas-Ibores-Jara es un macizo montañoso de amplia extensión, 2.544 km2 de superficie, situado en el sureste de la provincia de Cáceres, entre las cuencas del Tajo y del Guadiana. '),
('GitHub', 'https://github.com/', 'GitHub es una forja para alojar proyectos utilizando el sistema de control de versiones Git. Se utiliza principalmente para la creación de código fuente de programas de ordenador.'),
('Gmail: correo electrónico y almacenamiento gratuitos de Google', 'https://mail.google.com/', '\"Gmail funciona en todos los dispositivos Android, iOS y ordenadores. Ordena tus mensajes, colabora o llama a un amigo sin salir de tu bandeja de entrada\".'),
('HBO España | Ver las Mejores Series Online', 'https://es.hboespana.com/', 'Tus Series favoritas con más de 5.000 episodios y una selección de las mejores Películas. Prueba gratis hoy y accede a estrenos exclusivos.'),
('HOY Extremadura a diario con noticias y última hora del ...', 'https://www.hoy.es/', 'Diario HOY de Extremadura, edición impresa y digital, con noticias de Cáceres, Badajoz, Plasencia y Mérida.'),
('IES AGORA - Inicio - Cáceres', 'https://iesagora.educarex.es/', 'IES,Instituto de Educación Secundaria, Ciclos Formativos, Comercio, Administración, Informática, 927006716, calle Lima, Cáceres'),
('IMDb', 'https://www.imdb.com/', 'Internet Movie Database es una base de datos en línea que almacena información relacionada con películas, personal de equipo de producción, actores, series de televisión, programas de televisión, ...'),
('InfoJobs - Bolsa de trabajo, ofertas de empleo', 'https://www.infojobs.net', 'Entra y encuentra el trabajo perfecto para ti. Entra en el portal de ofertas de empleo líder de España. InfoJobs, siempre a mejor.'),
('Instagram', 'https://www.instagram.com/', 'Crea una cuenta o inicia sesión en Instagram - Una forma sencilla, divertida y creativa de capturar, editar y compartir fotos, videos y mensajes con amigos y ...'),
('Internet para la gente, no para el lucro — Mozilla', 'https://www.mozilla.org/es-ES/', 'Mozilla es la organización sin ánimo de lucro responsable de Firefox, el navegador alternativo original. Creamos productos y políticas para mantener Internet al ...'),
('Juntaex - Junta de Extremadura Portal Institucional de la ...', 'http://www.juntaex.es', 'Transparencia y participación ciudadana. Portal oficial de la Junta de Extremadura.'),
('LinkedIn: inicio de sesión o registro', 'https://es.linkedin.com/', 'Más de 675 millones de miembros | Gestiona tu identidad profesional. Amplía e interactúa con tu red profesional. Accede a conocimientos, información y ...'),
('Los Barruecos', 'https://www.malpartidadecaceres.es/monumento-natural-los-barruecos/', 'Los Barruecos es un paraje natural declarado monumento natural por la Junta de Extremadura en febrero de 1996, ​ una figura legal que garantiza la protección de este espacio con el objetivo de preservarlo para las generaciones futuras.'),
('Mancomunidad Tajo-Salor: Inicio', 'http://www.tajosalor.es/', 'TURISMO TAJO-SALOR. Eventos de nuestra comarca. Empleo y Formación. Crónica Tajo-Salor. Noticias; Eventos; Anuncios.'),
('MARCA - Diario online líder en información deportiva', 'https://www.marca.com/', 'La mejor información deportiva en castellano actualizada minuto a minuto en noticias, vídeos, fotos, retransmisiones y resultados en directo.'),
('MediaMarkt', 'https://www.mediamarkt.es/', 'MediaMarkt, tiendas de informática, electrónica, electrodomésticos y otros complementos para el entretenimiento en el hogar pone a tu alcance unas ofertas ...'),
('MILANUNCIOS: segunda mano, anuncios gratis, empleo ...', 'https://www.milanuncios.com/', 'Milanuncios.com: tablón de anuncios y clasificados de segunda mano, compra-venta, inmobiliarias, empleo, servicios... Encuentra o publica tu anuncio ...'),
('Multicines Cáceres', 'https://www.multicinescaceres.com/', 'Los últimos estrenos españoles e internacionales, promociones, ciclos de autor, ópera y mucho más'),
('Museo de Cáceres', 'http://museodecaceres.juntaex.es/', 'El Museo de Cáceres se ubica en el casco antiguo de la ciudad, ocupando dos edificios históricos: La Casa de las Veletas y la Casa de los Caballos. '),
('Netflix España - Ver series en línea, ver películas en línea', 'https://www.netflix.com/es/', 'Disfruta de Netflix, películas y series en streaming en tu smart TV, consola, PC, Mac, móvil, tableta y más dispositivos.'),
('Outlook – free personal email and calendar from Microsoft', 'https://outlook.live.com/owa/', 'Get free Outlook email and calendar, plus Office Online apps like Word, Excel and PowerPoint. Sign in to access your Outlook, Hotmail or Live email account.'),
('Páginas Amarillas: Directorio de empresas España', 'https://www.paginasamarillas.es/', 'Busca empresas en tu localidad con el directorio de Páginas Amarillas. Negocios con opiniones, fotos, vídeos, mapa y más. Infórmate en el 91 339 66 66.'),
('Parque de Monfragüe - Espacio salvaje de Extremadura ...', 'https://www.parquedemonfrague.com/', 'Página independiente de información sobre el Parque Nacional de Monfragüe, tanto su historia como sus rutas y alojamientos para los turistas y visitantes que ...'),
('PcComponentes.com | Tienda de Informática y Tecnología ...', 'https://www.pccomponentes.com/', 'Informática, electrónica, tecnología al mejor precio, calidad y servicio. PcComponentes es tu tienda online líder de móviles, ordenadores, tablets y mucho más.'),
('Pinterest - España', 'https://www.pinterest.es/', 'Pinterest es una plataforma que permite a los usuarios crear y administrar, en tableros personales temáticos, colecciones de imágenes como eventos, intereses, aficiones y mucho más.'),
('Portal de Diputación de Cáceres | Diputación Provincial de ...', 'https://www.dip-caceres.es/', 'La Diputación Provincial de Cáceres es el órgano de gobierno y la administración autónoma de la provincia de Cáceres, según lo dispuesto en la Ley Reguladora de las Bases del Régimen Local y en el Estatuto de Autonomía de Extremadura.'),
('Portal de la UEX - Bienvenido a la Universidad de Extremadura', 'https://www.unex.es/', 'Conoce la UEx · Presentación de la UEx · Equipo de Gobierno · Centros · Departamentos · La UEx en cifras · Plan Estratégico de la UEx · Directorio.'),
('Provecaex', 'https://www.provecaex.com/', 'Novedades y ofertas, venta y distribución de productos de primera calidad para la hostelería, restauración, comercio, comunidades y particulares.'),
('Reddit Inc.', 'https://www.reddit.com/', 'Reddit es un sitio web de marcadores sociales y agregador de noticias donde los usuarios pueden añadir texto, imágenes, vídeos o enlaces ...'),
('Samsung España | Móviles | Televisores | Electrodomésticos', 'https://www.samsung.com/es/', 'Bienvenido a Samsung. Descubre nuestros dispositivos con la tecnología más vanguardista. Televisores, smartphones, tablets, electrodomésticos y mucho ...'),
('Segunda Mano en WALLAPOP - La plataforma para comprar ...', 'https://es.wallapop.com/', 'Gana dinero y encuentra oportunidades cerca de ti en wallapop, la plataforma líder de compraventa de productos de segunda mano.'),
('Sitio Oficial Udemy™ | Más de 100mil Cursos En Línea‎', 'https://www.udemy.com/', 'Únete a más de 50 millones de estudiantes en el mundo aprendiendo en Udemy! Acceso de Por Vida. Garantía de 30 días. Cursos: Excel, Scrum, Agile, Finanzas Personales, Macro, VBA, Access.'),
('Sony España | Últimas noticias y tecnología | Electrónica ...', 'https://www.sony.es/', 'Descubre una amplia gama de productos de gran calidad de Sony y la tecnología que los avala, obtén acceso instantáneo a nuestra tienda y a Sony ...'),
('Stack Overflow', 'https://es.stackoverflow.com/', 'Stack Overflow es un sitio web desarrollado por Jeff Atwood en 2008 utilizado por una comunidad de desarrolladores informáticos, en la cual otros desarrolladores pueden encontrar soluciones a problemas de programación ...'),
('Tambo', 'https://www.supertambo.es/', 'Compra online en Tambo desde hoy. Los súper de la tierra desde hoy te llevan la compra a tu hogar. ¡Envíos en 24 horas y precios increíbles!'),
('Turismo Cáceres | Experiencia inolvidable', 'https://www.turismocaceres.org/', 'Cáceres ha evolucionado a lo largo de los siglos, marcada por su topografía. Su elevada ubicación entre la Sierra de la Mosca y la Sierrilla, han marcado su ...'),
('Twitch', 'https://www.twitch.tv/', 'Twitch es una plataforma que ofrece un servicio de Streaming de video en vivo propiedad de Amazon, Inc., siendo una de sus principales funciones la retransmisión de videojuegos en directo.'),
('Twitter. Es lo que está pasando.', 'https://twitter.com/', 'Descubre lo que está pasando en el mundo en este momento. Únete hoy a Twitter. Regístrate Iniciar sesión. Created with Sketch. Sigue lo que te interesa.'),
('Viewnext | Tecnología para el futuro', 'https://www.viewnext.com/', 'Viewnext es una empresa de Servicios de TI del grupo IBM en España, cuyo objetivo es acompañar a las empresas en el viaje hacia la transformación digital'),
('YouTube', 'https://www.youtube.com/', 'Disfruta de los vídeos y la música que te gusta, sube material original y comparte el contenido con tus amigos, tu familia y el resto del mundo en YouTube.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`usuario`);

--
-- Indices de la tabla `paginas`
--
ALTER TABLE `paginas`
  ADD PRIMARY KEY (`titulo`),
  ADD UNIQUE KEY `url` (`enlace`) USING HASH,
  ADD UNIQUE KEY `descripcion` (`descripcion`) USING HASH;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
