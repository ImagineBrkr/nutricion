%Librerías para la interfaz gráfica

:-use_module(library(pce)).
:-use_module(library(pce_style_item)).

%Creación de los primeros botones y labels para el formulario
inicio:-

	new(Menu, dialog('Proyecto Ingeniería de Sistemas', size(1500,1000))),
	new(L,label(nombre,'Asistente inteligente de entrenamiento personal')),
	new(A,label(nombre,'Curso: Sistemas inteligentes')),
	new(Texto,label(nombre,'Elija la opción que desee, responda las preguntas que sean necesarias.')),
	new(@respl,label(nombre,'')),
	new(Salir,button('Salir',and(message(Menu, destroy),message(@prolog, final),message(Menu,free)))),
	new(BotonEjercicio,button('Ejercicio',message(@prolog,buscarEjercicio))),
	new(BotonNutricion,button('Nutrición',message(@prolog,buscarNutricion))),

	send(Menu,append(L)),
	send(Menu,display,L,point(55,20)),
	send(Menu,display,A,point(20,320)),
	send(Menu,display,BotonEjercicio,point(100,240)),
	send(Menu,display,BotonNutricion,point(275,240)),
	send(Menu,display,Texto,point(20,60)),
	send(Menu,display,Salir,point(185,280)),
	send(Menu,display,@respl,point(20,140)),
	send(Menu,open_centered),
	send(L,font,font(comic,bold,10)).

% Resultados ejercicio

ejercicio('10 min en el  banco  de press  para trabajar los pectorales. ') :- gim, prin, musculo, pecho, !.

ejercicio('10 min en abductores para trabajar abductores y aductores,
	fijar bien los pies en los estribos y usar poco peso.') :- gim, prin, musculo, pierna, !.

ejercicio('10 min en dorsalera  para trabajar los dorsales y
	músculos de la espalda') :- gim, prin, musculo, espalda, !.

ejercicio('Serie de 20 repeticiones levantando mancuerdas de poco peso en una mano,
	alternar la serie para cada brazo. ') :- gim, prin, musculo, brazo, !.

ejercicio('10 min en Stepper, simulador de subir escaleras,
	para estimular todos los músculos del cuerpo.') :- gim, prin, musculo, !.

ejercicio('10 min en cinta de correr para quemar grasas mediante
	el ejercicio combinado de todo el cuerpo.') :- gim, prin, !.

ejercicio('15 min en el  banco  de press  para trabajar los pectorales.') :- gim, int, musculo, pecho, !.

ejercicio('15 min en abductores para trabajar abductores y aductores,
	fijar bien los pies en los estribos y usar poco peso. ') :- gim, int, musculo, pierna, !.

ejercicio('15 min en dorsalera  para trabajar los dorsales y músculos de la espalda') :- gim, int, musculo, espalda, !.

ejercicio('Banco de Musculación, 10 min para ejercitar los
	brazos en posición de plancha.') :- gim, int, musculo, brazo, !.

ejercicio('15 min en bicicletas elípticas para el entrenamiento
	aeróbico combinando el ejercicio tanto de piernas como de los brazos.') :- gim, int, musculo, !.

ejercicio('20 min en cinta de correr para quemar grasas
	mediante el ejercicio combinado de todo el cuerpo.') :- gim, int, !.

ejercicio('20 min en el  banco  de press  para trabajar los pectorales.') :- gim, musculo, pecho, !.

ejercicio('20 min en abductores para trabajar abductores y aductores,
	fijar bien los pies en los estribos y usar poco peso.') :- gim, musculo, pierna, !.

ejercicio('Usar la Peck Deck durante 15 min para trabajar espalda
con los codos en ángulo recto.') :- gim, musculo, espalda, !.

ejercicio('Levantar tu propio peso en el Power Tower, para
	trabajar brazos y abdomen  durante 15 min. ') :- gim, musculo, brazo, !.

ejercicio('Máquinas de remo para fortalecer
	la parte superior del cuerpo, el abdomen y las piernas.') :- gim, musculo, !.

ejercicio('45 min a más en cinta de correr para quemar grasas
	mediante el ejercicio combinado de todo el cuerpo.') :- gim, !.

ejercicio('Hacer 3 series de 10 lagartijas
	tomando unos 30 segundos de descanso por cada serie') :- prin, musculo, pecho, !.

ejercicio('Realizar 10 min de sentadillas en casa
	tomando unos 20 segundos de descanso por cada serie ') :- prin, musculo, pierna, !.

ejercicio('Realizar el ejercicio del remo invertido en una mesa por 10 min
	con un descanso de 30 segundos por cada serie') :- prin, musculo, espalda, !.

ejercicio('Hacer el press de hombros por un tiempo de 10 min
	con un descanso de 30 segundos por cada serie ') :- prin, musculo, brazo, !.

ejercicio('Realizar flexiones de cualquier tipo por un tiempo de 10 min
	tomando en cuenta 30 segundos de descanso por cada serie realizada.') :- prin, musculo, !.

ejercicio('Realizar trotes de un lado a otro y saltar la cuerda por 10 min') :- prin, !.

ejercicio('Hacer 3 series de 15 lagartijas
	tomando unos 30 segundos de descanso por cada serie') :- int, musculo, pecho, !.

ejercicio('Realizar 15 min de sentadillas en casa
	tomando unos 20 segundos de descanso por cada serie ') :- int, musculo, pierna, !.

ejercicio('Realizar el ejercicio del remo invertido en una mesa
	por 15 min con un descanso de 30 segundos por cada serie') :- int, musculo, espalda, !.

ejercicio('Hacer el press de hombros por un tiempo de 15 min
	con un descanso de 30 segundos por cada serie ') :- int, musculo, brazo, !.

ejercicio('Realizar flexiones de cualquier tipo por un tiempo de 15 min
	tomando en cuenta 30 segundos de descanso por cada serie realizada.') :- int, musculo, !.

ejercicio('Realizar trotes de un lado a otro y saltar la cuerda por 15 min') :- int, !.

ejercicio('Hacer 5 series de 20 lagartijas
	tomando unos 30 segundos de descanso por cada serie') :- musculo, pecho, !.

ejercicio('Realizar 25 min de sentadillas en casa
	tomando unos 20 segundos de descanso por cada serie ') :- musculo, pierna, !.

ejercicio('Realizar el ejercicio del remo invertido en una mesa por 25 min
	con un descanso de 30 segundos por cada serie') :- musculo, espalda, !.

ejercicio('Hacer el press de hombros por un tiempo de 25 min
	con un descanso de 30 segundos por cada serie ') :- musculo, brazo, !.

ejercicio('Realizar flexiones de cualquier tipo por un tiempo de 25 min
	tomando en cuenta 30 segundos de descanso por cada serie realizada.') :- musculo, !.

ejercicio('Realizar trotes de un lado a otro y saltar la cuerda por 25 min').

% Resultados nutrición

nutricion('Lo recomendado son frutas con bajo índice glucémico como:
manzanas con piel entera, plátanos, cerezas y uvas. ') :- durante, musculo, diabetes, !.

nutricion('Alimentos ricos en vitamina C:
papaya, kiwi, frutas rojas y piña') :- durante, musculo, higado, !.

nutricion('Buenas opciones son: Manzanas, plátano,
arándano, naranja, toronja, Yogurt descremado. ') :- durante, musculo, !.

nutricion('Es conveniente ingerir una pieza de fruta por cada hora de ejercicio
para evitar que se produzca una hipoglucemia. ') :- durante, diabetes, !.

nutricion('Consumir pomelo ayuda a quemar grasas
disminuyendo el porcentaje de grasa corporal ') :- durante, higado, !.

nutricion('Comer de 60 a 80 gr de carbohidratos por hora.
Como plátanos, barra de cereales y bebidas isotónicas. ') :- durante, !.

nutricion('Avena, proteína en polvo y arándanos
Muslos de pollo, arroz y verduras al vapor
 ') :- musculo, diabetes, !.

nutricion('Huevos revueltos, verduras y aguacate
Tortilla de berenjena y cebolla
 ') :- musculo, higado, !.

nutricion('Pan integral tostado, mantequilla de maní o de almendra, y rebanadas de plátano
Muslos de pollo, arroz y verduras al vapor
Batido de proteína
 ') :- musculo, !.

nutricion('Ensalada verde
Sopa fría de pepino
Ensalada de brotes, cherrys, maíz y arroz
 ') :- diabetes, !.

nutricion('Yogur desnatado
Dos rodajas de piña
Garbanzos con hortalizas crudas como cebolla, pimiento verde y rojo
 ') :- higado, !.

nutricion('Merluza con cebolla y tomate al horno
2 kiwis
Espinacas salteadas con ajo y patata
 ').


%Preguntas rutina ejercicios

gim :- pregunta('¿Haces ejercicio en un gimnasio?')->true;
	pregunta('¿Posees máquinas de ejercicio en tu casa?').

prin :- pregunta('¿Posees sobrepeso u obesidad?')->true;
	pregunta('¿Posee alguna enfermedad cardiaca o respiratoria severa?')->true;
	pregunta('¿Se cansa al hacer 15 sentadillas?')->true;
	pregunta('¿Se cansa al hacer 5 flexiones de brazo?')->true;
	pregunta('¿Se cansa al hacer 10 abdominales?').

int :-	pregunta('¿Tiene alguna condición que no le permita hacer ejercicio intenso?')->true;
	(pregunta('¿Se cansa al hacer 50 sentadillas?'),
	pregunta('¿Se cansa al hacer 20 flexiones de brazo?'),
        pregunta('¿Se cansa al hacer 30 abdominales?'))->true,fail.

musculo :- pregunta('¿Tiene como objetivo ganar masa muscular?')->true;
	pregunta('¿Busca tonificar alguna región de su cuerpo?')->true;
	pregunta('¿Está buscando bajar su peso?').

pecho :- pregunta('¿Quiére enfocarse en el área del pecho?').

pierna :- pregunta('¿Quiére enfocarse en las piernas?')->true;
	pregunta('¿Busca aumentar su velocidad al correr?').

espalda :- pregunta('¿Quiére enfocarse en el área de la espalda?').

brazo :- pregunta('¿Busca tener más fuerza física?'),
	pregunta('¿Quiére enfocarse en el área de los brazos?').

%Preguntas nutrición

durante :- pregunta('¿Busca consejos para alimentación durante los ejercicios?').

diabetes :- pregunta('¿Posee algún tipo de diabetes?').

higado :- pregunta('¿Sufre de hígado graso?').

% Formulario para las preguntas de forma SÍ, NO, guarda las respuestas como hechos.

:-dynamic si/1,no/1.
preguntar(Problema):- new(Di,dialog('Preguntas')),
     new(L2,label(texto,'Responde las siguientes preguntas')),
     new(La,label(prob,Problema)),
     new(B1,button(si,and(message(Di,return,si)))),
     new(B2,button(no,and(message(Di,return,no)))),

         send(Di,append(L2)),
	 send(Di,append(La)),
	 send(Di,append(B1)),
	 send(Di,append(B2)),

	 send(Di,default_button,si),
	 send(Di,open_centered),get(Di,confirm,Answer),
	 send(Di,destroy),
	 ((Answer==si)->assert(si(Problema));
	 assert(no(Problema)),fail).

% Busca si está la información, caso no este, genera un formulario de pregunta.

pregunta(S):-(si(S)->true; (no(S)->fail; preguntar(S))).

% Procesos para buscar el ejercicio o nutrición que más le convenga, según la información del usuario.
% Caso no haya información empieza a preguntar.

buscarEjercicio :- send(@respl,selection('')),
		ejercicio(Ejercicio),
		send(@respl,selection(Ejercicio)).

buscarNutricion :- send(@respl,selection('')),
		nutricion(Nutricion),
		send(@respl,selection(Nutricion)).

final :- send(@respl, free), retractall(si(_)), retractall(no(_)).
