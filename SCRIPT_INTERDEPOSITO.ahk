#NoEnv
#Warn
SendMode Input

; Variable para controlar el estado del script
scriptActivo := false

; Comando para iniciar el script con Ctrl + Alt + S
^!s::
    if (scriptActivo = false) {
        scriptActivo := true
        MsgBox, El script ha sido activado.
        Hotkey, Enter, EjecutarAcciones, On
    }
Return

; Comando para detener el script con Ctrl + Alt + E
^!e::
    if (scriptActivo = true) {
        scriptActivo := false
        MsgBox, El script ha sido detenido.
        Hotkey, Enter, Off
    }
Return

EjecutarAcciones:
    if (scriptActivo = true) {
        Send, {Tab}
        Sleep, 100
        Send, {Up}
        Sleep, 100
        Send, {Tab}
        Sleep, 100
        Send, {Enter}
    }
Return
