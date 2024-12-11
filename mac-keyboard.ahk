
; switch window application
; win+tab -> alt+tab
; see https://gist.github.com/Konfekt/077ed3d9c2dc2e40dbb9c4d06353edaa
#HotIf WinActive("ahk_class XamlExplorerHostIslandWindow")
*!Tab::Send("{Alt Down}{Right}")
~*Alt Up::Send("{Enter}")
#HotIf 
*!Tab::#Tab
LCtrl & Tab::AltTab



; lock screen
; win+ctrl+q
^#q::DllCall("LockWorkStation")



; close wechat window
; win+w
#HotIf WinActive("ahk_exe WeChat.exe")
<^w::Esc
#HotIf



;GroupAdd "commonSwitchTab", "ahk_exe chrome.exe"
;GroupAdd "commonSwitchTab", "ahk_exe Code.exe"
;#HotIf WinActive("ahk_group commonSwitchTab")
#HotIf WinActive("ahk_exe chrome.exe")
; prev tab
; win+shift+[
Hotkey "^+[", CtrlPageUp
CtrlPageUp(ThisHotkey)
{
    Send "^{PgUp}"
}

; next tab
; win+shift+]
Hotkey "^+]", CtrlPageDown
CtrlPageDown(ThisHotkey)
{
    Send "^{PgDn}"
}
#HotIf

