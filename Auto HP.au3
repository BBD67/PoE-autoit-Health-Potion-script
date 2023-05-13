; BBD67 PoE auto Health Potion script


Global $isScriptActive = True

HotKeySet("{F10}", "ToggleScript") ; Key F10 to toggle on/off script

While True
    If $isScriptActive Then
        CheckColor()
    EndIf
    
    Sleep(100)
WEnd

Func CheckColor()
    Local $posX = 115 ; Set here X position, default is 115
    Local $posY = 900 ; Set here Y position, default is 900
    
    Local $color = PixelGetColor($posX, $posY)
    
    If Hex($color, 6) <> "7D2E2F" Then ; Set here HEX color, default is 7D2E2F
        Local $delay = Random(500, 1500, 1) ; Randomise time, default is between 500 and 1500 miliseconds
        Sleep($delay)
        Send("1")
        Sleep(1000) ; Delay for key "1" aka anti spam ---- do not change it!
    EndIf
EndFunc

Func ToggleScript()
    $isScriptActive = Not $isScriptActive
    
    If $isScriptActive Then
        MsgBox(0, "BBD67 PoE auto HP", "Auto HP is ON.")
    Else
        MsgBox(0, "BBD67 PoE auto HP", "Auto HP is OFF.")
    EndIf
EndFunc
