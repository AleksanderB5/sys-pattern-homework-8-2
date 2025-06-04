# Домашнее задание к занятию "`Базовые объекты K8S`" - `Блинов А.С.`

### Цель задания

В тестовой среде для работы с Kubernetes, установленной в предыдущем ДЗ, необходимо развернуть Pod с приложением и подключиться к нему со своего локального компьютера. 

------

### Чеклист готовности к домашнему заданию

1. Установленное k8s-решение (например, MicroK8S).
2. Установленный локальный kubectl.
3. Редактор YAML-файлов с подключенным Git-репозиторием.

------

### Инструменты и дополнительные материалы, которые пригодятся для выполнения задания

1. Описание [Pod](https://kubernetes.io/docs/concepts/workloads/pods/) и примеры манифестов.
2. Описание [Service](https://kubernetes.io/docs/concepts/services-networking/service/).

------

### Задание 1. Создать Pod с именем hello-world

1. Создать манифест (yaml-конфигурацию) Pod.
2. Использовать image - gcr.io/kubernetes-e2e-test-images/echoserver:2.2.
3. Подключиться локально к Pod с помощью `kubectl port-forward` и вывести значение (curl или в браузере).

------

### Задание 2. Создать Service и подключить его к Pod

1. Создать Pod с именем netology-web.
2. Использовать image — gcr.io/kubernetes-e2e-test-images/echoserver:2.2.
3. Создать Service с именем netology-svc и подключить к netology-web.
4. Подключиться локально к Service с помощью `kubectl port-forward` и вывести значение (curl или в браузере).

------

### Правила приёма работы

1. Домашняя работа оформляется в своем Git-репозитории в файле README.md. Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.
2. Файл README.md должен содержать скриншоты вывода команд `kubectl get pods`, а также скриншот результата подключения.
3. Репозиторий должен содержать файлы манифестов и ссылки на них в файле README.md.

------

### Решение 1

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БазовыеобъектыK8S/файлы/1-1.png)
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БазовыеобъектыK8S/файлы/1-2.png)
![Скриншот 3](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БазовыеобъектыK8S/файлы/1-3.png)
![Скриншот 4](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БазовыеобъектыK8S/файлы/1-4.png)

### Решение 2

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БазовыеобъектыK8S/файлы/2-1.png)
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БазовыеобъектыK8S/файлы/2-2.png)
![Скриншот 3](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БазовыеобъектыK8S/файлы/2-3.png)
![Скриншот 4](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БазовыеобъектыK8S/файлы/2-4.png)
![Скриншот 5](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БазовыеобъектыK8S/файлы/2-5.png)
![Скриншот 6](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БазовыеобъектыK8S/файлы/2-6.png)
![Скриншот 7](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БазовыеобъектыK8S/файлы/2-7.png)
