~LShift:: func_SwitchIme(0) return
~RShift:: func_SwitchIme(1) return
LShift & Space:: func_SwitchIme(1) return

#If CapsLockMode
LButton:: keyFunc_selectCurrentWordAfterClick() return
RButton:: keyFunc_paste() return
#If

#n::
{
    Run notepads.exe
}


func_SwitchIme(ime := "A"){
	if (ime = 1)
    {
		DllCall("SendMessage", UInt, WinActive("A"), UInt, 80, UInt, 1, UInt, DllCall("LoadKeyboardLayout", Str,"00000804", UInt, 1))
	}
    else if (ime = 0)
	{
		DllCall("SendMessage", UInt, WinActive("A"), UInt, 80, UInt, 1, UInt, DllCall("LoadKeyboardLayout", Str,, UInt, 1))
	}
    else if (ime = "A")
	{
		Send, ^{Space}
	}
    return
}

keyFunc_selectCurrentWordAfterClick(){
	SendInput, {LButton 2}
	;SendInput, ^{Left}
    ;SendInput, +^{Right}
    return
}
