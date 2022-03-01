Dim s
Dim objFolder
do
WScript.StdOut.WriteLine "  "
WScript.StdOut.WriteLine "-----МЕНЮ-----"
WScript.StdOut.WriteLine "1. Информация о авторе"
WScript.StdOut.WriteLine "2. Копирование файлов заданного расширения с указанного места в папку <<BackUp>> на указанном диске"
WScript.StdOut.WriteLine "3. Вывод на экран пути к заданной специальной папке"
WScript.StdOut.WriteLine "4. Список специальных папок"
WScript.StdOut.WriteLine "5. Выход"
WScript.StdOut.WriteLine "--------------"
WScript.StdOut.WriteLine "  "
WScript.StdOut.Write "Выберите пункт меню:"

s = WScript.StdIn.ReadLine
Set WshShell = WScript.CreateObject("WScript.Shell")

if (s = "1") Then
  WScript.StdOut.WriteLine "  "
  WScript.StdOut.WriteLine "Воробьев Владислав Алексеевич ИТП-11"
elseif (s = "2") Then
  WScript.StdOut.WriteLine "  "
  WScript.StdOut.Write("Введите расширение файла(например - ini):")
  extn = WScript.StdIn.ReadLine

  
  WScript.StdOut.WriteLine "  "
  WScript.StdOut.Write("Введите папку, из которой копировать файлы(например - C:\Windows):")
  path = WScript.StdIn.ReadLine

  WScript.StdOut.WriteLine "  "
  WScript.StdOut.Write("Введите букву диска, куда будут копироваться файлы(наприме - E: или D:):")
  disk = WScript.StdIn.ReadLine
  
  WScript.StdOut.WriteLine "  "
  WshShell.Run "E:\OP\l2\A.bat "+extn+" "+path+" "+disk
  WScript.StdOut.WriteLine "Файлы успешно скопированы!"
elseif (s = "3") Then
  WScript.StdOut.WriteLine "  "
  WScript.StdOut.Write "Введите имя специальной папки(Например - Desktop: "
  folName = WScript.StdIn.ReadLine
  
  fol = WshShell.specialFolders(folName)
  WScript.StdOut.WriteLine fol
elseif (s = "4") Then
  WScript.StdOut.WriteLine "  "
  WScript.StdOut.WriteLine "AllUsersDesktop"
  WScript.StdOut.WriteLine "AllUsersStartMenu"
  WScript.StdOut.WriteLine "AllUsersPrograms"
  WScript.StdOut.WriteLine "AllUsersStartup"
  WScript.StdOut.WriteLine "Desktop"
  WScript.StdOut.WriteLine "Favorites"
  WScript.StdOut.WriteLine "Fonts"
  WScript.StdOut.WriteLine "MyDocuments"
  WScript.StdOut.WriteLine "NetHood"
  WScript.StdOut.WriteLine "PrintHood"
  WScript.StdOut.WriteLine "Programs"
  WScript.StdOut.WriteLine "Recent"
  WScript.StdOut.WriteLine "SendTo"
  WScript.StdOut.WriteLine "StartMenu"
  WScript.StdOut.WriteLine "Startup"
  WScript.StdOut.WriteLine "Templates"
  WScript.StdOut.WriteLine "  "
End if
loop until (s="5")