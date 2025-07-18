# Домашнее задание к занятию "`Вычислительные мощности. Балансировщики нагрузки`" - `Блинов А.С.`

### Подготовка к выполнению задания

1. Домашнее задание состоит из обязательной части, которую нужно выполнить на провайдере Yandex Cloud, и дополнительной части в AWS (выполняется по желанию). 
2. Все домашние задания в блоке 15 связаны друг с другом и в конце представляют пример законченной инфраструктуры.  
3. Все задания нужно выполнить с помощью Terraform. Результатом выполненного домашнего задания будет код в репозитории. 
4. Перед началом работы настройте доступ к облачным ресурсам из Terraform, используя материалы прошлых лекций и домашних заданий.

---
## Задание 1. Yandex Cloud 

**Что нужно сделать**

1. Создать бакет Object Storage и разместить в нём файл с картинкой:

 - Создать бакет в Object Storage с произвольным именем (например, _имя_студента_дата_).
 - Положить в бакет файл с картинкой.
 - Сделать файл доступным из интернета.
 
2. Создать группу ВМ в public подсети фиксированного размера с шаблоном LAMP и веб-страницей, содержащей ссылку на картинку из бакета:

 - Создать Instance Group с тремя ВМ и шаблоном LAMP. Для LAMP рекомендуется использовать `image_id = fd827b91d99psvq5fjit`.
 - Для создания стартовой веб-страницы рекомендуется использовать раздел `user_data` в [meta_data](https://cloud.yandex.ru/docs/compute/concepts/vm-metadata).
 - Разместить в стартовой веб-странице шаблонной ВМ ссылку на картинку из бакета.
 - Настроить проверку состояния ВМ.
 
3. Подключить группу к сетевому балансировщику:

 - Создать сетевой балансировщик.
 - Проверить работоспособность, удалив одну или несколько ВМ.
4. (дополнительно)* Создать Application Load Balancer с использованием Instance group и проверкой состояния.

Полезные документы:

- [Compute instance group](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/compute_instance_group).
- [Network Load Balancer](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/lb_network_load_balancer).
- [Группа ВМ с сетевым балансировщиком](https://cloud.yandex.ru/docs/compute/operations/instance-groups/create-with-balancer).

---

### Решение 1-3

- [terraform](https://github.com/AleksanderB5/sys-pattern-homework-8-2/tree/БалансировщикиНагрузки/terraform)
-----

![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/1-1.png)
---
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/1-2.png)
---
![Скриншот 3](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/1-3.png)
---
![Скриншот 4](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/1-4.png)
---
![Скриншот 5](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/1-5.png)
---
![Скриншот 6](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/1-6.png)
---
![Скриншот 7](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/1-7.png)
---
![Скриншот 8](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/1-8.png)
---
![Скриншот 9](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/1-9.png)
---
![Скриншот 10](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/1-10.png)
---
![Скриншот 11](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/1-11.png)
---

### Решение 4
---
![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/4-1.png)
---
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/4-2.png)
---
![Скриншот 3](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/4-3.png)
---
![Скриншот 4](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/4-4.png)
---
![Скриншот 5](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/4-5.png)
---
![Скриншот 6](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/4-6.png)
---
![Скриншот 7](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/4-7.png)
---
![Скриншот 8](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/БалансировщикиНагрузки/Скрины/4-8.png)
---

