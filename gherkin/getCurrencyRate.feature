# ATTENTION - This generated file is safe to modify. It will not be overwritten.

Feature: Вывод на экран текущего курса

    Scenario: Отображение курса валюты USD - RUB
    Given Отображается курс валюты
    When Прошла минута с прошлого обновления курса
    Then Делается запрос на сервер и отображения новый курс валюты
