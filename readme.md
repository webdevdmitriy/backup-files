# Общая инфрмация
Bat-файл
Копирование файла из одной директории в другую.
Удаление файлов старше заданного кол-ва дней

## Описание

Перменная **in** - от куда копируем  
Переменная **out** - куда копиуем  
Переменная **curdate** - текущая дата  
Переменная **new_format_date** - текущая дата в заданном формате

Команда **xcopy** - копирование файла  
флаг /Y - Подавление запроса подтверждения на перезапись существующего целевого файла.

Команда **forfiles** - удаление файлов старше n дней  
Перменная **n** - кол-во дней
