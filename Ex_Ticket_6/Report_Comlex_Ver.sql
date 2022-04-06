
ВЫБРАТЬ
	ОстаткиНоменклатурыОстатки.Номенклатура КАК Номенклатура,
	ОстаткиНоменклатурыОстатки.КоличествоОстаток КАК КоличествоОстаток
ПОМЕСТИТЬ втОстаткиКомплектующих
ИЗ
	РегистрНакопления.ОстаткиНоменклатуры.Остатки КАК ОстаткиНоменклатурыОстатки
;

////////////////////////////////////////////////////////////////////////////////
ВЫБРАТЬ
	СоставСтеллажей.Стеллаж КАК Стеллаж,
	СоставСтеллажей.Комплектующее КАК Комплектующее,
	ЕСТЬNULL(втОстаткиКомплектующих.КоличествоОстаток / СоставСтеллажей.Количество, 0) КАК Количество
ПОМЕСТИТЬ втСоставСтеллажей
ИЗ
	РегистрСведений.СоставСтеллажей КАК СоставСтеллажей
		ЛЕВОЕ СОЕДИНЕНИЕ втОстаткиКомплектующих КАК втОстаткиКомплектующих
		ПО СоставСтеллажей.Комплектующее = втОстаткиКомплектующих.Номенклатура
;

////////////////////////////////////////////////////////////////////////////////
ВЫБРАТЬ
	втСоставСтеллажей.Стеллаж КАК Стеллаж,
	МИНИМУМ(втСоставСтеллажей.Количество) КАК Количество
ИЗ
	втСоставСтеллажей КАК втСоставСтеллажей

СГРУППИРОВАТЬ ПО
	втСоставСтеллажей.Стеллаж