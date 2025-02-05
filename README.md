# Домашнее задание к занятию "`Введение в Terraform`" - `Блинов А.С.`

---

### Цели задания

1. Установить и настроить Terrafrom.
2. Научиться использовать готовый код.

------

### Чек-лист готовности к домашнему заданию

1. Скачайте и установите **Terraform** версии >=1.8.4 . Приложите скриншот вывода команды ```terraform --version```.
2. Скачайте на свой ПК этот git-репозиторий. Исходный код для выполнения задания расположен в директории **01/src**.
3. Убедитесь, что в вашей ОС установлен docker.

------

### Инструменты и дополнительные материалы, которые пригодятся для выполнения задания

1. Репозиторий с ссылкой на зеркало для установки и настройки Terraform: [ссылка](https://github.com/netology-code/devops-materials).
2. Установка docker: [ссылка](https://docs.docker.com/engine/install/ubuntu/). 
------
### Внимание!! Обязательно предоставляем на проверку получившийся код в виде ссылки на ваш github-репозиторий!
------

### Задание 1

1. Перейдите в каталог [**src**](https://github.com/netology-code/ter-homeworks/tree/main/01/src). Скачайте все необходимые зависимости, использованные в проекте. 
2. Изучите файл **.gitignore**. В каком terraform-файле, согласно этому .gitignore, допустимо сохранить личную, секретную информацию?(логины,пароли,ключи,токены итд)
3. Выполните код проекта. Найдите  в state-файле секретное содержимое созданного ресурса **random_password**, пришлите в качестве ответа конкретный ключ и его значение.
4. Раскомментируйте блок кода, примерно расположенный на строчках 29–42 файла **main.tf**.
Выполните команду ```terraform validate```. Объясните, в чём заключаются намеренно допущенные ошибки. Исправьте их.
5. Выполните код. В качестве ответа приложите: исправленный фрагмент кода и вывод команды ```docker ps```.
6. Замените имя docker-контейнера в блоке кода на ```hello_world```. Не перепутайте имя контейнера и имя образа. Мы всё ещё продолжаем использовать name = "nginx:latest". Выполните команду ```terraform apply -auto-approve```.
Объясните своими словами, в чём может быть опасность применения ключа  ```-auto-approve```. Догадайтесь или нагуглите зачем может пригодиться данный ключ? В качестве ответа дополнительно приложите вывод команды ```docker ps```.
7. Уничтожьте созданные ресурсы с помощью **terraform**. Убедитесь, что все ресурсы удалены. Приложите содержимое файла **terraform.tfstate**. 
8. Объясните, почему при этом не был удалён docker-образ **nginx:latest**. Ответ **ОБЯЗАТЕЛЬНО НАЙДИТЕ В ПРЕДОСТАВЛЕННОМ КОДЕ**, а затем **ОБЯЗАТЕЛЬНО ПОДКРЕПИТЕ** строчкой из документации [**terraform провайдера docker**](https://docs.comcloud.xyz/providers/kreuzwerker/docker/latest/docs).  (ищите в классификаторе resource docker_image )


------

### Решение 1

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform1/скрины/ter1/0-1.png)
![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform1/скрины/ter1/1-1.png)

### Решение 2
> #### Согласно **.gitignore** допустимо сохранить личную, секретную информацию в файле `personal.auto.tfvars`

### Решение 3

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform1/скрины/ter1/1-3.png)

### Решение 4

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform1/скрины/ter1/1-4-1.png)
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform1/скрины/ter1/1-4-2.png)
![Скриншот 3](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform1/скрины/ter1/1-4-3.png)

> #### Первая ошибка на 24 строке, у нас не указан тип ресурса для docker_image, ведь должно быть 2 значения. На 29 строке видим цифру в названии, а так быть не должно, либо буква, либо нижнее подчеркивание. На 31 строке видно что у нас название ресурса задано random_string, а там random_string_FAKE и еще resulT написан через большие буквы. Исправляем ошибки и приводим код к правильному рабочему виду.



### Решение 5

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform1/скрины/ter1/1-5.png)

### Решение 6

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform1/скрины/ter1/1-6.png)

> #### Очевидно, опасность применения `-auto-approve` в том, что у нас в этом случае нет возможности посмотреть план, все изменения, которые внесет `apply`. Последствия могут быть необратимыми.

### Решение 7

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform1/скрины/ter1/1-7.png)

### Решение 8

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/terraform1/скрины/ter1/1-8.png)

> #### Докер образ nginx:lates не был удален, потому что потому что использовали параметр keep_locally = true при создании image.

Документация:
[Keep_locally (Boolean) If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation](https://docs.comcloud.xyz/providers/kreuzwerker/docker/latest/docs/resources/image)
