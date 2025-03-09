#Requires AutoHotkey v2

#HotIf WinActive("Terminal")

^p::
{
    Send("^v")
}
return

#HotIf