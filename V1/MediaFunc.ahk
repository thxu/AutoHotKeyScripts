



#If MouseIsTouchScreenTopLeft()
WheelDown:: keyFunc_volumeDown() return
WheelUp:: keyFunc_volumeUp() return
#If

#If MouseIsTouchScreenTopRight()
WheelDown:: keyFunc_mediaNext() return
WheelUp:: keyFunc_mediaPrev() return
MButton:: keyFunc_mediaPlayPause() return
#If







MouseIsTouchScreenTopLeft(){
    CoordMode, Mouse, Screen ; set coordinates mode to be relative to the whole screen
    MouseGetPos, mX,mY ;store the X coordinate of the mouse in mX
    if ( mX <= 2 && abs(mY) <= 2) ; if the "absolute" difference is within 2 pixels
        return true
    return false
}
MouseIsTouchScreenTopRight(){
    CoordMode, Mouse, Screen ;set coordinates mode to be relative to the whole screen
    MouseGetPos, mX,mY ;store the X coordinate of the mouse in mx
    SysGet, VirtualScreenWidth, 78
    if ( abs(VirtualScreenWidth-mX) <= 10 && mY < 2) ;if the "absolute" difference is within 2 pixels
        return true
    return false
}





keyFunc_mediaPrev(){
    SendInput, {Media_Prev}
    return
}
keyFunc_mediaNext(){
    SendInput, {Media_Next}
    return
}
keyFunc_mediaPlayPause(){
    SendInput, {Media_Play_Pause}
    return
}


keyFunc_volumeUp(){
    SendInput, {Volume_Up}
    return
}
keyFunc_volumeDown(){
    SendInput, {Volume_Down}
    return
}
keyFunc_volumeMute(){
    SendInput, {Volume_Mute}
    return
}



