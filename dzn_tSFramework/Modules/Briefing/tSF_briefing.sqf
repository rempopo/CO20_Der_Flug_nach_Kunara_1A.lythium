//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"Разведка узнала о штабе местной группировки талибана в нашей зоне ответственности. К сожалению, командование отказало нам в авиаударе и поручило сначала проверить информацию, после чего уничтожить штаб самостоятельно.<br /><br />Нашему взводу, расположенному на FOB Buschsucher, предстоит проверить возможные локации штаба и уничтожить его.<br /><br />"
END

TOPIC("А. Враждебные силы:")
"Боевики Талибана - иррегулярные силы:<br />   Патрули на возвышенностях<br />   Отряды около предполагаемого штаба<br /><br />"
END

TOPIC("Б. Дружественные силы:")
"Luftbewegliche Brigade 1, Division Luftbewegliche Operationen, deutsches Einsatzkontingent ISAF:  <br /><br />1. Zug, 3. Kompanie, Jägerregiment 1<br />   1'6 - 3 чел.<br />   1'1 - 9 чел.      <br />   1'2 - 9 чел.<br /><br />2. Staffel, Transporthubschrauberregiment 10<br />   Bubby-1-1 - вертолёт UH-1D<br />   Bubby-1-2 - вертолёт UH-1D<br />   Baron - вертолёт UH-1D(Gunship)<br /><br />1. Mörserzug, 5. Schwere Jägerkompanie<br />   Stahlregen-1-1 - 82мм миномёты"
END

TOPIC("II. Задание")
"1. Уничтожить штаб противника (подорвать комнату с радио)<br /><br />"
END

TOPIC("III. Выполнение:")
"Нам известно, что противник разместил патрули на высотах вокруг нашей цели. Возможно, противник обладает станковыми пулемётами ДШК. <br /><br />Вражеские подкрепления не ожидаются.<br /><br />Вы можете передвигаться на бронемашинах Dingo или воспользоваться транспортными вертолётами."
END

TOPIC("IV. Поддержка:")
"4x бронемашина Dingo (MG3)<br />1x бронемашина Fennek <br /><br />Транспортный вертолёт UH-1D (M240), позывной Bubby-1-1<br />Транспортный вертолёт UH-1D (M240), позывной Bubby-1-2<br />Вертолёт поддержки UH-1D (Gunship), позывной Baron<br /><br />Миномётная батарея 82мм, позывной Stahlregen-1-1<br /><br />CCP<br />FARP<br /><br />Резерв:<br />1x бронемашина Fennek<br />2x бронемашина Dingo (MG3)"
END

TOPIC("V. Сигналы:")
"PL NET 50<br />PL SUP NET 51<br />JTAC/CAS NET 52<br />1'1 - SR CH 1<br />1'2 - SR CH 2<br />1'6 - SR CH 6<br />"
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"-"
END
};

ADD_TOPICS