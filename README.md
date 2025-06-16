# Домашнее задание к занятию "`Конфигурация приложений`" - `Блинов А.С.`

### Цель задания

В тестовой среде Kubernetes необходимо создать конфигурацию и продемонстрировать работу приложения.

------

### Чеклист готовности к домашнему заданию

1. Установленное K8s-решение (например, MicroK8s).
2. Установленный локальный kubectl.
3. Редактор YAML-файлов с подключённым GitHub-репозиторием.

------

### Инструменты и дополнительные материалы, которые пригодятся для выполнения задания

1. [Описание](https://kubernetes.io/docs/concepts/configuration/secret/) Secret.
2. [Описание](https://kubernetes.io/docs/concepts/configuration/configmap/) ConfigMap.
3. [Описание](https://github.com/wbitt/Network-MultiTool) Multitool.

------

### Задание 1. Создать Deployment приложения и решить возникшую проблему с помощью ConfigMap. Добавить веб-страницу

1. Создать Deployment приложения, состоящего из контейнеров nginx и multitool.
2. Решить возникшую проблему с помощью ConfigMap.
3. Продемонстрировать, что pod стартовал и оба конейнера работают.
4. Сделать простую веб-страницу и подключить её к Nginx с помощью ConfigMap. Подключить Service и показать вывод curl или в браузере.
5. Предоставить манифесты, а также скриншоты или вывод необходимых команд.

------

### Задание 2. Создать приложение с вашей веб-страницей, доступной по HTTPS 

1. Создать Deployment приложения, состоящего из Nginx.
2. Создать собственную веб-страницу и подключить её как ConfigMap к приложению.
3. Выпустить самоподписной сертификат SSL. Создать Secret для использования сертификата.
4. Создать Ingress и необходимый Service, подключить к нему SSL в вид. Продемонстировать доступ к приложению по HTTPS. 
4. Предоставить манифесты, а также скриншоты или вывод необходимых команд.

------

### Правила приёма работы

1. Домашняя работа оформляется в своём GitHub-репозитории в файле README.md. Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.
2. Файл README.md должен содержать скриншоты вывода необходимых команд `kubectl`, а также скриншоты результатов.
3. Репозиторий должен содержать тексты манифестов или ссылки на них в файле README.md.

------

### Решение 1
![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/1-1.png)
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/1-2.png)
![Скриншот 3](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/1-3.png)
![Скриншот 4](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/1-4.png)
![Скриншот 5](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/1-5.png)
![Скриншот 6](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/1-6.png)

------

### Решение 2
![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/2-1.png)
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/2-2.png)
![Скриншот 3](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/2-3.png)
![Скриншот 4](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/2-4.png)
![Скриншот 5](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/2-5.png)
![Скриншот 6](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/2-6.png)
![Скриншот 7](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/2-7.png)
![Скриншот 8](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/2-8.png)
![Скриншот 9](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/КонфигурацияПриложений/файлы/2-9.png)
