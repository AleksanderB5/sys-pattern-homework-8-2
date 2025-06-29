# Домашнее задание к занятию "`Helm`" - `Блинов А.С.`

### Цель задания

В тестовой среде Kubernetes необходимо установить и обновить приложения с помощью Helm.

------

### Чеклист готовности к домашнему заданию

1. Установленное k8s-решение, например, MicroK8S.
2. Установленный локальный kubectl.
3. Установленный локальный Helm.
4. Редактор YAML-файлов с подключенным репозиторием GitHub.

------

### Инструменты и дополнительные материалы, которые пригодятся для выполнения задания

1. [Инструкция](https://helm.sh/docs/intro/install/) по установке Helm. [Helm completion](https://helm.sh/docs/helm/helm_completion/).

------

### Задание 1. Подготовить Helm-чарт для приложения

1. Необходимо упаковать приложение в чарт для деплоя в разные окружения. 
2. Каждый компонент приложения деплоится отдельным deployment’ом или statefulset’ом.
3. В переменных чарта измените образ приложения для изменения версии.

------
### Задание 2. Запустить две версии в разных неймспейсах

1. Подготовив чарт, необходимо его проверить. Запуститe несколько копий приложения.
2. Одну версию в namespace=app1, вторую версию в том же неймспейсе, третью версию в namespace=app2.
3. Продемонстрируйте результат.

### Правила приёма работы

1. Домашняя работа оформляется в своём Git репозитории в файле README.md. Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.
2. Файл README.md должен содержать скриншоты вывода необходимых команд `kubectl`, `helm`, а также скриншоты результатов.
3. Репозиторий должен содержать тексты манифестов или ссылки на них в файле README.md.

### Решение
![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Helm/файлы/1-1.png)
------
## Редактируем файлы:
1. [values.yaml](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Helm/файлы/values.yaml)
2. [deployment.yaml](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Helm/файлы/deployment.yaml)
------

![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Helm/файлы/1-2.png)
![Скриншот 3](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Helm/файлы/1-3.png)
![Скриншот 4](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Helm/файлы/1-4.png)
![Скриншот 5](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Helm/файлы/1-5.png)
![Скриншот 6](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Helm/файлы/1-6.png)
![Скриншот 7](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Helm/файлы/1-7.png)
![Скриншот 8](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Helm/файлы/1-8.png)
![Скриншот 9](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/Helm/файлы/1-9.png)

