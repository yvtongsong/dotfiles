#Requires AutoHotkey v2

#HotIf WinActive("alacritty")

^+v::
{
    A_Clipboard := StrReplace(A_Clipboard, "`r`n", "`n")
    Send("^+v")
}
return

#HotIf