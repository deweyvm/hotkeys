#SingleInstance force
#NoEnv
SendMode Input
SetTitleMatchMode 2

$e::f
$r::p
$t::g
$y::j
$u::l
$i::u
$o::y
$p::`;

$s::r
$d::s
$f::t
$g::d
$j::n
$k::e
$l::i
$`;::o
$n::k

LControl & n::Send {Backspace}
LControl & m::Send {Delete}

LControl & j::
    GetKeyState,state,Shift
    If state = D
        Send +{Left}
    Else
        Send {Left}
Return

LControl & k::
    GetKeyState,state,Shift
    If state = D
        Send +{Down}
    Else
        Send {Down}
Return

LControl & l::
    GetKeyState,state,Shift
    If state = D
        Send +{Right}
    Else
        Send {Right}
Return

LControl & i::
    GetKeyState,state,Shift
    If state = D
        Send +{Up}
    Else
        Send {Up}
Return

LControl & u::
    GetKeyState,state,Shift
    If state = D
        Send ^+{Left}
    Else
        Send ^{Left}
Return

LControl & o::
    GetKeyState,state,Shift
    If state = D
        Send ^+{Right}
    Else
        Send ^{Right}
Return

LControl & h::
    GetKeyState,state,Shift
    If state = D
        Send +{Home}
    Else
        Send {Home}
Return

LControl & `;::
    GetKeyState,state,Shift
    If state = D
        Send +{End}
    Else
        Send {End}
Return

LControl & +::
    Send {Raw}=>
Return

LControl & -::
    Send {Raw}->
Return

LControl & ,::
    Send {Raw}<-
Return

LControl & .::
    Send {Raw}=>
Return

LControl & 4::
    Send {Raw}<$>
Return

LControl & =::
    Send {Raw}<+>
Return

LControl & |::
    Send {Raw}<|>
Return

LControl & *::
    Send {Raw}<*>
Return

Enter & Space::
    GetKeyState,state,Shift
    If state = D
        Send +{Enter}
    Else
        Send {Enter}
Return

Enter & f::
    Send {Raw}}
Return

Enter & d::
    Send {Raw}{
Return

Enter & s::
    Send {Raw}=
Return

LControl & Space::
    Send {Enter}
Return

ModeEnabled := false


SetKeyDelay 0, 10
Pause::
    Suspend,Toggle
    Return


F6::
    IfWinExist #
    {
        WinActivate, #
    }
    Return


F4::
    IfWinExist Sublime Text 2
    {
        WinActivate, Sublime Text 2
    }
    Return

F3::
    IfWinExist IntelliJ IDEA
    {
        WinActivate, IntelliJ IDEA
    }
    return
