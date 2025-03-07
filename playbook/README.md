Плейбук для установки ClickHouse и параметров в окружении Python. 
## Плейбук выполняет следующие действия:
1. Устанавливает необходимые зависимости для Python.
2. Создает виртуальное окружение Python.
3. Устанавливает библиотеку Paramiko в виртуальном окружении.
4. Загружает и устанавливает дистрибутивы ClickHouse (общий статический, клиент и сервер).
5. Проверяет, что сервис ClickHouse запущен. 
Используется на хостах, указанных в группе 'clickhouse'.
После выполнения плейбука ClickHouse будет готов к использованию в системе.

## Задачи плейбука

Плейбук включает следующие задачи:

1. Install necessary dependencies:Устанавливает необходимые зависимости Python, включая python3-paramiko, python3-pycurl и python3-pip.
2. Install python3-venv:Устанавливает пакет python3-venv, который необходим для создания виртуальных окружений Python.
3. Create a virtual environment:Создает виртуальное окружение Python в указанной директории /opt/venv, если оно еще не существует.
4. Install Paramiko in virtual environment:Устанавливает библиотеку Paramiko в созданном виртуальном окружении Python. Использует команду pip для установки.
5. Get Clickhouse common static distrib:Загружает дистрибутив clickhouse-common-static с GitHub и сохраняет его в /tmp.
6. Get Clickhouse client distrib:Загружает дистрибутив клиента clickhouse и сохраняет его в /tmp.
7. Get Clickhouse server distrib:Загружает дистрибутив сервера clickhouse и сохраняет его в /tmp.
8. Install Clickhouse common static:Устанавливает загруженный файл clickhouse-common-static с помощью dpkg.
9. Install Clickhouse client:Устанавливает загруженный файл клиента clickhouse.
10. Install Clickhouse server:Устанавливает загруженный файл сервера clickhouse.
11. Ensure Clickhouse service is running:Проверяет, что сервис clickhouse-server запущен.
