
&НаКлиенте
Процедура ПересчетСтроки(СтрокаТЧ, ПересчитатьСумму) 
	
	Если ПересчитатьСумму Тогда 
		
		СтрокаТЧ.Сумма = СтрокаТЧ.Количество * СтрокаТЧ.Цена;    
		
	Иначе  
		Если СтрокаТЧ.Количество = 0 Тогда  //Хардкодим Количество
			СтрокаТЧ.Количество = 1; 
			СтрокаТЧ.Цена = СтрокаТЧ.Сумма / СтрокаТЧ.Количество; 	
			
		Иначе   
			
			СтрокаТЧ.Цена = СтрокаТЧ.Сумма / СтрокаТЧ.Количество; 			
			
		КонецЕсли;
		
	КонецЕсли;	
	
КонецПроцедуры


&НаКлиенте
Процедура СписокНоменклатурыКоличествоПриИзменении(Элемент)
	
	ТекущаяСтрокаТЧ = Элементы.СписокНоменклатуры.ТекущиеДанные; 
	
	ПересчетСтроки(ТекущаяСтрокаТЧ, Истина);
	
	
КонецПроцедуры

&НаКлиенте
Процедура СписокНоменклатурыЦенаПриИзменении(Элемент)   
	
	ТекущаяСтрокаТЧ = Элементы.СписокНоменклатуры.ТекущиеДанные; 
	
	ПересчетСтроки(ТекущаяСтрокаТЧ, Истина); 
	
КонецПроцедуры

&НаКлиенте
Процедура СписокНоменклатурыСуммаПриИзменении(Элемент)    
	
	ТекущаяСтрокаТЧ = Элементы.СписокНоменклатуры.ТекущиеДанные;
	ПересчетСтроки(ТекущаяСтрокаТЧ, Ложь);
	
КонецПроцедуры


