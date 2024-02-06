# rate


## Interfaces

### Schema: CurrencyRateRequest

#### Fields

- string from
- string to


## System Components


### Model: CurrencyRate

Сервис для мониторинга курса валюты



#### Components
- CurrencyRateServer server
- CurrencyRateClient client


#### Behavior


### Model: CurrencyRateServer

Сервис для получения текущего курса



#### Behavior

***returnCurrencyRate***

Получить текущий курс


This is a REQUEST_RESPONSE type of behavior.


**Inputs**

- CurrencyRateRequest сurrencyRateRequest




**Scenario: Получить курс валюты USD - RUB**

*Procedure:*

1. Given Текущей курс валюты
1. When Пользователь запрашивает новый курс
1. Then Пользователю отправляется текущий курс валюты на вызов ручки


### Model: CurrencyRateClient

Сервис для выводна экран текущего курса



#### Behavior

***getCurrencyRate***

Вывод на экран текущего курса


This is a REQUEST_RESPONSE type of behavior.



**Outputs**

- CurrencyRateRequest сurrencyRateRequest



**Scenario: Отображение курса валюты USD - RUB**

*Procedure:*

1. Given Отображается курс валюты
1. When Прошла минута с прошлого обновления курса
1. Then Делается запрос на сервер и отображения новый курс валюты



## Use Cases

### Usecase: Отображение текущего курса валюты

Пользователю на экран выводится текущий курс валюты


#### Participants

- CurrencyRateClient client
- CurrencyRateServer server


#### Steps


***Клиент запрашивает актуальный курс***

 **Source:** client
 **Target:** server
 **Action:** getCurrencyRate

***Сервер возвращает текущий курс***

 **Source:** server
 **Target:** client
 **Action:** returnCurrencyRate

