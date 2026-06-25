Set objShell = CreateObject("WScript.Shell")
objShell.CurrentDirectory = objShell.SpecialFolders("Desktop")
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Get the directory where this script lives
strPath = objFSO.GetParentFolderName(WScript.ScriptFullName)
objShell.CurrentDirectory = strPath

' Check if node_modules exists
If Not objFSO.FolderExists(strPath & "\node_modules") Then
    objShell.Run "cmd /c cd /d """ & strPath & """ & echo [1/2] Installing dependencies... & npm install & echo. & echo [2/2] Starting website... & start http://localhost:5173 & npm run docs:dev", 1, False
Else
    objShell.Run "cmd /c cd /d """ & strPath & """ & echo Starting Codex Skills website... & start http://localhost:5173 & npm run docs:dev", 1, False
End If