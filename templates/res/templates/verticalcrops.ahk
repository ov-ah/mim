; This template will work for your average normal crop farms that HAVE lane switched ie. wheat carrot potato and wart.
; This script assumes you have your farming binds set up to use space for attack (use skyhanni custom farming keybinds)
#SingleInstance force
#Persistent
#include Lib\AutoHotInterception.ahk
#NoEnv
SetWorkingDir %A_ScriptDir%

; Global variables
global breakKey = "space" ; Modify this if you would like!
global leftKey = "LAlt" ; Modify this if you would like!
global rightKey = "RAlt" ; Modify this if you would like!

global AHI := new AutoHotInterception()
global MinecraftWindowTitle := "Minecraft 1.8.9"

keyboardId := AHI.GetKeyboardId(INSERT YOUR KEYBOARD ID) ; CHANGE KEYBOARD ID
AHI.SubscribeKey(keyboardId, GetKeySC(breakKey), true, Func("handleBreak"))
AHI.SubscribeKey(keyboardId, GetKeySC(leftKey), true, Func("handleLeft"))
AHI.SubscribeKey(keyboardId, GetKeySC(rightKey), true, Func("handleRight"))

handleBreak(state) {
    global MinecraftWindowTitle
    IfWinExist, %MinecraftWindowTitle%
    {
        if (state = 1) {
            ControlSend,, {space down}, %MinecraftWindowTitle%
        } else {
            ControlSend,, {space up}, %MinecraftWindowTitle%
        }
    }
}

handleLeft(state) {
    global MinecraftWindowTitle
    IfWinExist, %MinecraftWindowTitle%
    {
        if (state = 1) {
            ControlSend,, {a down}, %MinecraftWindowTitle%
        } else {
            ControlSend,, {a up}, %MinecraftWindowTitle%
        }
    }
}

handleRight(state) {
    global MinecraftWindowTitle
    IfWinExist, %MinecraftWindowTitle%
    {
        if (state = 1) {
            ControlSend,, {d down}, %MinecraftWindowTitle%
        } else {
            ControlSend,, {d up}, %MinecraftWindowTitle%
        }
    }
}