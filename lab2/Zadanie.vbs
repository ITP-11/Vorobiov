Dim s
Dim objFolder
do
WScript.StdOut.WriteLine "  "
WScript.StdOut.WriteLine "-----����-----"
WScript.StdOut.WriteLine "1. ���������� � ������"
WScript.StdOut.WriteLine "2. ����������� ������ ��������� ���������� � ���������� ����� � ����� <<BackUp>> �� ��������� �����"
WScript.StdOut.WriteLine "3. ����� �� ����� ���� � �������� ����������� �����"
WScript.StdOut.WriteLine "4. ������ ����������� �����"
WScript.StdOut.WriteLine "5. �����"
WScript.StdOut.WriteLine "--------------"
WScript.StdOut.WriteLine "  "
WScript.StdOut.Write "�������� ����� ����:"

s = WScript.StdIn.ReadLine
Set WshShell = WScript.CreateObject("WScript.Shell")

if (s = "1") Then
  WScript.StdOut.WriteLine "  "
  WScript.StdOut.WriteLine "�������� ��������� ���������� ���-11"
elseif (s = "2") Then
  WScript.StdOut.WriteLine "  "
  WScript.StdOut.Write("������� ���������� �����(�������� - ini):")
  extn = WScript.StdIn.ReadLine

  
  WScript.StdOut.WriteLine "  "
  WScript.StdOut.Write("������� �����, �� ������� ���������� �����(�������� - C:\Windows):")
  path = WScript.StdIn.ReadLine

  WScript.StdOut.WriteLine "  "
  WScript.StdOut.Write("������� ����� �����, ���� ����� ������������ �����(������� - E: ��� D:):")
  disk = WScript.StdIn.ReadLine
  
  WScript.StdOut.WriteLine "  "
  WshShell.Run "E:\OP\l2\A.bat "+extn+" "+path+" "+disk
  WScript.StdOut.WriteLine "����� ������� �����������!"
elseif (s = "3") Then
  WScript.StdOut.WriteLine "  "
  WScript.StdOut.Write "������� ��� ����������� �����(�������� - Desktop: "
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