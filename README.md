# Домашнее задание к занятию "`Управление доступом`" - `Блинов А.С.`
### Цель задания

В тестовой среде Kubernetes нужно предоставить ограниченный доступ пользователю.

------

### Чеклист готовности к домашнему заданию

1. Установлено k8s-решение, например MicroK8S.
2. Установленный локальный kubectl.
3. Редактор YAML-файлов с подключённым github-репозиторием.

------

### Инструменты / дополнительные материалы, которые пригодятся для выполнения задания

1. [Описание](https://kubernetes.io/docs/reference/access-authn-authz/rbac/) RBAC.
2. [Пользователи и авторизация RBAC в Kubernetes](https://habr.com/ru/company/flant/blog/470503/).
3. [RBAC with Kubernetes in Minikube](https://medium.com/@HoussemDellai/rbac-with-kubernetes-in-minikube-4deed658ea7b).

------

### Задание 1. Создайте конфигурацию для подключения пользователя

1. Создайте и подпишите SSL-сертификат для подключения к кластеру.
2. Настройте конфигурационный файл kubectl для подключения.
3. Создайте роли и все необходимые настройки для пользователя.
4. Предусмотрите права пользователя. Пользователь может просматривать логи подов и их конфигурацию (`kubectl logs pod <pod_id>`, `kubectl describe pod <pod_id>`).
5. Предоставьте манифесты и скриншоты и/или вывод необходимых команд.

------

### Решение 1
![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Управлениедоступом/файлы/1-1.png)
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Управлениедоступом/файлы/1-2.png)
![Скриншот 3](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Управлениедоступом/файлы/1-3.png)
![Скриншот 4](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Управлениедоступом/файлы/1-4.png)
![Скриншот 5](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Управлениедоступом/файлы/1-5.png)
![Скриншот 6](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Управлениедоступом/файлы/1-6.png)
![Скриншот 7](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Управлениедоступом/файлы/1-7.png)
![Скриншот 8](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Управлениедоступом/файлы/1-8.png)
