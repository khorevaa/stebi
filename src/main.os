#Использовать cli
#Использовать "."


Процедура ВыполнитьПриложение()

    имяПриложения = ОПриложении.Имя();
    версияПриложения = ОПриложении.Версия();

    Приложение = Новый КонсольноеПриложение( имяПриложения, "Приложение для управления внешними ишузами в SonarQube 1C (BSL) Community Plugin");
    Приложение.Версия("v version", версияПриложения);

    Приложение.ДобавитьКоманду("c convert", "Конвертировать результат EDT в json для SonarQube 1C (BSL) Community Plugin", Новый edtExport);
    Приложение.ДобавитьКоманду("p prepare", "Подготовить файл настроек", Новый ПодготовитьФайлНастроек);
    Приложение.ДобавитьКоманду("t transform", "Применить файл настроек к generic-issue.json", Новый ПрименениеФайлаНастроек);

    Приложение.Запустить(АргументыКоманднойСтроки);

КонецПроцедуры

Попытка

    ВыполнитьПриложение();

Исключение

    Сообщить(ОписаниеОшибки());

КонецПопытки;