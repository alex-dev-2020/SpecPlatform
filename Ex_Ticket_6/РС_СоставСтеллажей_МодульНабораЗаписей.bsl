
Процедура ПередЗаписью(Отказ, Замещение)
	
	//Контроль  Уникальности Комлпектующих 
	
	Если Количество()> 0 Тогда 
		
		Деталь = Отбор.Деталь.Значение;  
	
		Запрос = Новый Запрос;
		Запрос.Текст = 
		"ВЫБРАТЬ
		|	ПРЕДСТАВЛЕНИЕ(СоставСтеллажей.Стеллаж) КАК СтеллажПредставление,
		|	ПРЕДСТАВЛЕНИЕ(СоставСтеллажей.Деталь) КАК ДетальПредставление
		|ИЗ
		|	РегистрСведений.СоставСтеллажей КАК СоставСтеллажей
		|ГДЕ
		|	СоставСтеллажей.Деталь = &Деталь";
		
		Запрос.УстановитьПараметр("Деталь", Деталь);
		
		РезультатЗапроса = Запрос.Выполнить();
		
		Если НЕ РезультатЗапроса.Пустой() Тогда 

			ЗаписиРС = РезультатЗапроса.Выбрать();  
			ЗаписиРС.Следующий();
			
			Сообщение = Новый СообщениеПользователю;
			Сообщение.Текст = СтрШаблон("Деталь %1 УЖЕ входит в СОСТАВ Стеллажа %2", 
			ЗаписиРС.ДетальПредставление,ЗаписиРС.СтеллажПредставление);
			Сообщение.Сообщить();
			
			Отказ = Истина;
			
			
		КонецЕсли;
	КонецЕсли;
	
	
	
КонецПроцедуры

