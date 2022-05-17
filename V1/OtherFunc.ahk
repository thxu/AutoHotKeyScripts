global ImeType
;~LShift:: func_SwitchIme(0) return
~RShift:: func_SwitchIme(1) return
LShift & Space:: func_SwitchIme(1) return
~LShift:: func_AutoSwitchToEn() return

#If CapsLockMode
LButton:: keyFunc_selectCurrentWordAfterClick() return
RButton:: keyFunc_paste() return
#If

#n::
{
    Run notepads.exe
}

func_AutoSwitchToEn(){
	if(ImeType = ""){
		ImeType = 0;
	}
	imeTmp:=ImeType
	func_SwitchIme(0)
	KeyWait, LShift
	if(A_PriorKey = "Space")
	{
		func_SwitchIme(1) return
	}
	else if(A_PriorKey = "LShift")
	{
		func_SwitchIme(0) return
	}else
	{
		func_SwitchIme(imeTmp) return
	}
}

func_SwitchIme(ime := "A"){
	if (ime = 1)
    {
		DllCall("SendMessage", UInt, WinActive("A"), UInt, 80, UInt, 1, UInt, DllCall("LoadKeyboardLayout", Str,"00000804", UInt, 1))
		ImeType = 1
	}
    else if (ime = 0)
	{
		DllCall("SendMessage", UInt, WinActive("A"), UInt, 80, UInt, 1, UInt, DllCall("LoadKeyboardLayout", Str,, UInt, 1))
		ImeType = 0
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
