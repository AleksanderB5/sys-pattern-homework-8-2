# Домашнее задание к занятию "`Система мониторинга Zabbix`" - `Блинов А.С.`


### Инструкция по выполнению домашнего задания

   1. Сделайте `fork` данного репозитория к себе в Github и переименуйте его по названию или номеру занятия, например, https://github.com/имя-вашего-репозитория/git-hw или  https://github.com/имя-вашего-репозитория/7-1-ansible-hw).
   2. Выполните клонирование данного репозитория к себе на ПК с помощью команды `git clone`.
   3. Выполните домашнее задание и заполните у себя локально этот файл README.md:
      - впишите вверху название занятия и вашу фамилию и имя
      - в каждом задании добавьте решение в требуемом виде (текст/код/скриншоты/ссылка)
      - для корректного добавления скриншотов воспользуйтесь [инструкцией "Как вставить скриншот в шаблон с решением](https://github.com/netology-code/sys-pattern-homework/blob/main/screen-instruction.md)
      - при оформлении используйте возможности языка разметки md (коротко об этом можно посмотреть в [инструкции  по MarkDown](https://github.com/netology-code/sys-pattern-homework/blob/main/md-instruction.md))
   4. После завершения работы над домашним заданием сделайте коммит (`git commit -m "comment"`) и отправьте его на Github (`git push origin`);
   5. Для проверки домашнего задания преподавателем в личном кабинете прикрепите и отправьте ссылку на решение в виде md-файла в вашем Github.
   6. Любые вопросы по выполнению заданий спрашивайте в чате учебной группы и/или в разделе “Вопросы по заданию” в личном кабинете.
   
Желаем успехов в выполнении домашнего задания!
   
### Дополнительные материалы, которые могут быть полезны для выполнения задания

1. [Руководство по оформлению Markdown файлов](https://gist.github.com/Jekins/2bf2d0638163f1294637#Code)

---

### Задание 1
![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/main/img/1-1Z.png)
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/main/img/1-2Z.png)

#### Используемые команды:

   1. sudo apt update
   2. sudo apt install postgresql
   3. wget https://repo.zabbix.com/zabbix/6.0/debian/pool/main/z/zabbix-release/zabbix-release_6.0-5+debian12_all.deb
   4. sudo dpkg -i zabbix-release_6.0-5+debian12_all.deb
   5. sudo apt update
   6. sudo apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts
   7. sudo systemctl status zabbix-server.service
   8. sudo -u postgres createuser --pwprompt zabbix
   9. sudo -u postgres createdb -O zabbix zabbix
   10. zcat /usr/share/zabbix-sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix
   11. nano /etc/zabbix/zabbix_server.conf; меняем строчку DBPassword=password на свой пароль
   12. systemctl restart zabbix-server apache2
   13. systemctl enable zabbix-server apache2 
   14. systemctl status zabbix-server.service

---

### Задание 2
![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/main/img/2-1Z.png)
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/main/img/2-2Z.png)
![Скриншот 3](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/main/img/2-3Z.png)
![Скриншот 4](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/main/img/2-4Z.png)

#### Используемые команды:

   1. sudo apt update
   2. wget https://repo.zabbix.com/zabbix/6.0/debian/pool/main/z/zabbix-release>
   3. sudo dpkg -i zabbix-release_6.0-5+debian12_all.deb
   4. sudo apt update
   5. sudo apt install zabbix-agent
   6. sudo systemctl status zabbix-agent.service

---

### Задание 3
![Скриншот 1](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/zabbix/img/3-1Z.png)
![Скриншот 2](https://github.com/AleksanderB5/sys-pattern-homework-8-2/blob/zabbix/img/3-2Z.png)

---
