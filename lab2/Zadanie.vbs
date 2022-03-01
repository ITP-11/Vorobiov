Dim s
Dim objFolder
do
WScript.StdOut.WriteLine "  "
WScript.StdOut.WriteLine "-----MENU-----"
WScript.StdOut.WriteLine "1. Information about the author"
WScript.StdOut.WriteLine "2. Copying a file to the folder <<BackUp>> in a disk"
WScript.StdOut.WriteLine "3. Show a path of a special folder"
WScript.StdOut.WriteLine "4. The list of special folders"
WScript.StdOut.WriteLine "5. Exit
WScript.StdOut.WriteLine "--------------"
WScript.StdOut.WriteLine "  "
WScript.StdOut.Write "Chose a menu item:"

s = WScript.StdIn.ReadLine
Set WshShell = WScript.CreateObject("WScript.Shell")

if (s = "1") Then
  WScript.StdOut.WriteLine "  "
  WScript.StdOut.WriteLine "Vorobiov Vladislav Alekseevich ITP-11"
elseif (s = "2") Then
  WScript.StdOut.WriteLine "  "
  WScript.StdOut.Write("Enter an extension of a file(for example - ini):")
  extn = WScript.StdIn.ReadLine

  
  WScript.StdOut.WriteLine "  "
  WScript.StdOut.Write("Enter a folder, where you're going to copy files(for example - C:\Windows):")
  path = WScript.StdIn.ReadLine

  WScript.StdOut.WriteLine "  "
  WScript.StdOut.Write("Enter a disk, where you copy your files(for example - E: or D:):")
  disk = WScript.StdIn.ReadLine
  
  WScript.StdOut.WriteLine "  "
  WshShell.Run "E:\OP\l2\A.bat "+extn+" "+path+" "+disk
  WScript.StdOut.WriteLine "The files are successfully copied!"
elseif (s = "3") Then
  WScript.StdOut.WriteLine "  "
  WScript.StdOut.Write "Enter a special folder(for example - Desktop: "
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