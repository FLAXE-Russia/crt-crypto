Данный проект был написан для фермы RDS с перемещаемыми прфоилями.
Данные скрипты сохраняют ветку реестра с ЭЦП 
и на всякий случай надо чтоб папка AppData\Roaming\Microsoft\SystemCertificates - тоже перемещалась. Когда настроил сохранять папку, у меня созранился весь каталог AppData\Roaming\
и профили перемещались с сохранением ЭЦП.
При выходе проверяет наличии ЭЦП в ветке реестра и если есть сохраняет. При входе ищет файлик.
В моей реализации папка reg - создается RDS
