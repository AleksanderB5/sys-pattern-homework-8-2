# Домашнее задание к занятию "`Основы Terraform. Yandex Cloud`" - `Блинов А.С.`

### Цели задания

1. Создать свои ресурсы в облаке Yandex Cloud с помощью Terraform.
2. Освоить работу с переменными Terraform.


### Чек-лист готовности к домашнему заданию

1. Зарегистрирован аккаунт в Yandex Cloud. Использован промокод на грант.
2. Установлен инструмент Yandex CLI.
3. Исходный код для выполнения задания расположен в директории [**02/src**](https://github.com/netology-code/ter-homeworks/tree/main/02/src).


### Задание 0

1. Ознакомьтесь с [документацией к security-groups в Yandex Cloud](https://cloud.yandex.ru/docs/vpc/concepts/security-groups?from=int-console-help-center-or-nav). 
Этот функционал понадобится к следующей лекции.

------
### Внимание!! Обязательно предоставляем на проверку получившийся код в виде ссылки на ваш github-репозиторий!
------

### Задание 1
В качестве ответа всегда полностью прикладывайте ваш terraform-код в git.
Убедитесь что ваша версия **Terraform** ~>1.8.4

1. Изучите проект. В файле variables.tf объявлены переменные для Yandex provider.
2. Создайте сервисный аккаунт и ключ. [service_account_key_file](https://terraform-provider.yandexcloud.net).
4. Сгенерируйте новый или используйте свой текущий ssh-ключ. Запишите его открытую(public) часть в переменную **vms_ssh_public_root_key**.
5. Инициализируйте проект, выполните код. Исправьте намеренно допущенные синтаксические ошибки. Ищите внимательно, посимвольно. Ответьте, в чём заключается их суть.
6. Подключитесь к консоли ВМ через ssh и выполните команду ``` curl ifconfig.me```.
Примечание: К OS ubuntu "out of a box, те из коробки" необходимо подключаться под пользователем ubuntu: ```"ssh ubuntu@vm_ip_address"```. Предварительно убедитесь, что ваш ключ добавлен в ssh-агент: ```eval $(ssh-agent) && ssh-add``` Вы познакомитесь с тем как при создании ВМ создать своего пользователя в блоке metadata в следующей лекции.;
8. Ответьте, как в процессе обучения могут пригодиться параметры ```preemptible = true``` и ```core_fraction=5``` в параметрах ВМ.

В качестве решения приложите:

- скриншот ЛК Yandex Cloud с созданной ВМ, где видно внешний ip-адрес;
- скриншот консоли, curl должен отобразить тот же внешний ip-адрес;
- ответы на вопросы.


### Задание 2

1. Замените все хардкод-**значения** для ресурсов **yandex_compute_image** и **yandex_compute_instance** на **отдельные** переменные. К названиям переменных ВМ добавьте в начало префикс **vm_web_** .  Пример: **vm_web_name**.
2. Объявите нужные переменные в файле variables.tf, обязательно указывайте тип переменной. Заполните их **default** прежними значениями из main.tf. 
3. Проверьте terraform plan. Изменений быть не должно. 


### Задание 3

1. Создайте в корне проекта файл 'vms_platform.tf' . Перенесите в него все переменные первой ВМ.
2. Скопируйте блок ресурса и создайте с его помощью вторую ВМ в файле main.tf: **"netology-develop-platform-db"** ,  ```cores  = 2, memory = 2, core_fraction = 20```. Объявите её переменные с префиксом **vm_db_** в том же файле ('vms_platform.tf').  ВМ должна работать в зоне "ru-central1-b"
3. Примените изменения.


### Задание 4

1. Объявите в файле outputs.tf **один** output , содержащий: instance_name, external_ip, fqdn для каждой из ВМ в удобном лично для вас формате.(без хардкода!!!)
2. Примените изменения.

В качестве решения приложите вывод значений ip-адресов команды ```terraform output```.


### Задание 5

1. В файле locals.tf опишите в **одном** local-блоке имя каждой ВМ, используйте интерполяцию ${..} с НЕСКОЛЬКИМИ переменными по примеру из лекции.
2. Замените переменные внутри ресурса ВМ на созданные вами local-переменные.
3. Примените изменения.


### Задание 6

1. Вместо использования трёх переменных  ".._cores",".._memory",".._core_fraction" в блоке  resources {...}, объедините их в единую map-переменную **vms_resources** и  внутри неё конфиги обеих ВМ в виде вложенного map(object).  
   ```
   пример из terraform.tfvars:
   vms_resources = {
     web={
       cores=2
       memory=2
       core_fraction=5
       hdd_size=10
       hdd_type="network-hdd"
       ...
     },
     db= {
       cores=2
       memory=4
       core_fraction=20
       hdd_size=10
       hdd_type="network-ssd"
       ...
     }
   }
   ```
3. Создайте и используйте отдельную map(object) переменную для блока metadata, она должна быть общая для всех ваших ВМ.
   ```
   пример из terraform.tfvars:
   metadata = {
     serial-port-enable = 1
     ssh-keys           = "ubuntu:ssh-ed25519 AAAAC..."
   }
   ```  
  
5. Найдите и закоментируйте все, более не используемые переменные проекта.
6. Проверьте terraform plan. Изменений быть не должно.

------

### Решение 1

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/1-1.png)
-----
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/1-2.png)

4. Ошибки были следующие:

* В строке ***platform_id = "standart-v4"*** должно быть слово standard
* Версия v4 неправильная. Согласно документации Yandex.Cloud (https://cloud.yandex.ru/docs/compute/concepts/vm-platforms) платформы могут быть только v1, v2 и v3.
* В строке ***cores         = 1*** указано неправильное количество ядер процессора. Согласно документации Yandex.Cloud (https://cloud.yandex.ru/docs/compute/concepts/performance-levels) минимальное количество виртуальных ядер процессора для всех платформ равно двум.

6-1. Параметр ```preemptible = true``` применяется в том случае, если нужно сделать виртуальную машину прерываемой, то есть возможность остановки ВМ в любой момент. Применятся если с момента запуска машины прошло 24 часа либо возникает нехватка ресурсов для запуска ВМ. Прерываемые ВМ не обеспечивают отказоустойчивость.

6-2. Параметр ```core_fraction=5``` указывает базовую производительность ядра в процентах. Указывается для экономии ресурсов.

### Решение 2

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/2-1.png)

### Решение 3

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/3-1.png)
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/3-2.png)
![Скриншот 3](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/3-3.png)
![Скриншот 4](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/3-4.png)
![Скриншот 5](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/3-5.png)

### Решение 4

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/4-1.png)
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/4-2.png)

### Решение 5

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/5-1%20лок.png)
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/5-2%20вар.png)
![Скриншот 3](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/5-3%20мейн.png)
![Скриншот 4](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/5-4%20мейн.png)
![Скриншот 5](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/5-5.png)

### Решение 6

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/6-1.png)
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/6-2.png)
![Скриншот 3](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/6-3.png)
![Скриншот 4](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/6-4.png)
![Скриншот 5](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform2/Скрины/6-5.png)

Все файлы [ТУТ](https://github.com/AleksanderB5/sys-pattern-homework-8-2/tree/terraform2/файлы/src)
