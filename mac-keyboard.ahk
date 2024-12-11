
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



#HotIf IsChromeActive()
; prev tab
; win+shift+[
^+[::Send "^{PgUp}"

; next tab
; win+shift+]
^+]::Send "^{PgDn}"
#HotIf

IsChromeActive() {
    processName := WinGetProcessName("A")
    return (
        processName = "chrome.exe"
        or processName = "code.exe"
        or processName = "obsidian.exe"
    )
}

