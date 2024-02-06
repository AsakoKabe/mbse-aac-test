# ATTENTION - This generated file is safe to modify. It will not be overwritten.

Feature: Получить текущий курс

    Scenario: Получить курс валюты USD - RUB
    Given Текущей курс валюты
    When Пользователь запрашивает новый курс
    Then Пользователю отправляется текущий курс валюты на вызов ручки
