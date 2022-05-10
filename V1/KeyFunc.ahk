#If CapsLockMode
i:: keyFunc_moveUp(1) return
k:: keyFunc_moveDown(1) return
j:: keyFunc_moveLeft(1) return
l:: keyFunc_moveRight(1) return

!i:: keyFunc_moveUp(4) return
!k:: keyFunc_moveDown(4)  return
!j:: keyFunc_moveWordLeft(1) return
!l:: keyFunc_moveWordRight() return




+i:: keyFunc_selectUp(1) return
+k:: keyFunc_selectDown(1) return
+j:: keyFunc_selectLeft(1) return
+l:: keyFunc_selectRight(1) return

!+i:: keyFunc_selectUp(4) return
!+k:: keyFunc_selectDown(4) return
!+j:: keyFunc_selectLeft(5) return
!+l:: keyFunc_selectRight(5) return




n:: keyFunc_moveLeft(5)  return
m:: keyFunc_moveRight(5) return

!n:: keyFunc_moveWordLeft(3) return
!m:: keyFunc_moveWordRight(3) return

,:: keyFunc_selectWordLeft(1) return
.:: keyFunc_selectWordRight(1) return
!,:: keyFunc_selectWordLeft(3) return
!.:: keyFunc_selectWordRight(3) return




h:: keyFunc_selectCurrentWord() return
a:: keyFunc_selectCurrentLine() return




u:: keyFunc_home() return
o:: keyFunc_end() return
!u:: keyFunc_selectHome() return
!o:: keyFunc_selectEnd() return
y:: keyFunc_selectHome() return
p:: keyFunc_selectEnd() return




f:: keyFunc_backspace() return
d:: keyFunc_delete() return



Enter:: keyFunc_enterWherever() return
!Enter:: keyFunc_preEnterWherever() return
Space:: keyFunc_enter() return



z:: keyFunc_undo() return
x:: keyFunc_cut() return
c:: keyFunc_copy() return
v:: keyFunc_paste() return

s:: keyFunc_save() return
q:: keyFunc_quit() return
w:: keyFunc_close() return


e:: keyFunc_back() return
r:: keyFunc_forward() return 

t:: keyFunc_vsJumpToDefinition() return
g:: keyFunc_vsJumpToImplementation() return

#if


keyFunc_moveUp(i:=1){
    SendInput, {up %i%}
    return
}
keyFunc_moveDown(i:=1){
    SendInput, {down %i%}
    return
}
keyFunc_moveLeft(i:=1){
    SendInput, {left %i%}
    return
}
keyFunc_moveRight(i:=1){
    SendInput, {right %i%}
    return
}


keyFunc_selectUp(i:=1){
    SendInput, +{Up %i%}
    return
}
keyFunc_selectDown(i:=1){
    SendInput, +{Down %i%}
    return
}
keyFunc_selectLeft(i:=1){
    SendInput, +{Left %i%}
    return
}
keyFunc_selectRight(i:=1){
    SendInput, +{Right %i%}
    return
}
;move word left
keyFunc_moveWordLeft(i:=1){
    SendInput, ^{Left %i%}
    ;showToolTip("ss")
    ;SendInput,^{Left %i%}
    return
}
keyFunc_moveWordRight(i:=1){
    SendInput,^{Right %i%}
    return
}



keyFunc_selectWordLeft(i:=1){
    SendInput, +^{Left %i%}
    return
}
keyFunc_selectWordRight(i:=1){
    SendInput, +^{Right %i%}
    return
}



keyFunc_selectCurrentWord(){
    SendInput, ^{Left}
    SendInput, +^{Right}
    return
}
keyFunc_selectCurrentLine(){
    SendInput, {Home}
    SendInput, +{End}
    return
}



keyFunc_home(){
    SendInput,{Home}
    return
}
keyFunc_end(){
    SendInput,{End}
    return
}
keyFunc_selectHome(){
    SendInput, +{Home}
    return
}
keyFunc_selectEnd(){
    SendInput, +{End}
    return
}



keyFunc_backspace(){
    SendInput,{backspace}
    return
}
keyFunc_delete(){
    SendInput,{delete}
    return
}
keyFunc_forwardDeleteWord(){
    SendInput, +^{right}
    SendInput, {delete}
    return
}
keyFunc_deleteWord(){
    SendInput, +^{left}
    SendInput, {delete}
    return
}


keyFunc_preEnterWherever(){
    SendInput,{Home}{Enter}{Left}
    return
}
keyFunc_enterWherever(){
    SendInput,{End}{Enter}
    return
}
keyFunc_enter(){
    SendInput, {Enter}
    return
}


keyFunc_undo(){
    SendInput, ^z
    return
}
keyFunc_cut(){
    SendInput, ^x
    return
}
keyFunc_paste(){
    SendInput, ^v
    return
}
keyFunc_copy(){
    SendInput, ^c
    return
}

keyFunc_save(){
    SendInput, ^s
    return
}
keyFunc_quit(){
    SendInput, !{F4}
    return
}
keyFunc_close(){
    SendInput, ^w
    return
}

keyFunc_back(){
    SendInput, {XButton1}
    return
}
keyFunc_forward(){
    SendInput, {XButton2} 
    return
}

keyFunc_vsJumpToDefinition(){
    SendInput, {F12}  
    return
}
keyFunc_vsJumpToImplementation(){
    SendInput, ^{F12}  
    return
}
