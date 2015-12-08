'Sourced from http://www.computerhope.com/forum/index.php?topic=137593.0

'Get command-line arguments.
Set objArgs = WScript.Arguments
InputFolder = objArgs(0)
ZipFile = objArgs(1)

'Create empty ZIP file.
CreateObject("Scripting.FileSystemObject").CreateTextFile(ZipFile, True).Write "PK" & Chr(5) & Chr(6) & String(18, vbNullChar)

Set objShell = CreateObject("Shell.Application")

Set source = objShell.NameSpace(InputFolder).Items

objShell.NameSpace(ZipFile).CopyHere(source)

'Required! Adjust if zipping doesn't finish and leaves files corrupted.
wScript.Sleep 8000