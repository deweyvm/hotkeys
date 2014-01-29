#SingleInstance force
#NoEnv
SendMode Input
SetTitleMatchMode 2

SetKeyDelay 0, 10

ModeEnabled := false


;`::`
;1::1
;2::2
;3::3
;4::4
;5::5
;6::6
;7::7
;8::8
;9::9
;0::0
;-::-
;=::=

;q::q
;w::w
;e::f
;r::p
;t::g
;y::j
;u::l
;i::u
;o::y
;p::`;
;[::[
;]::]
;\::\

;a::a
;s::r
;d::s
;f::t
;g::d
;h::h
;j::n
;k::e
;l::i
;`;::o
;'::'

;z::z
;x::x
;c::c
;v::v
;b::b
;n::k
;m::m
;,::,
;.::.
;/::/

$*1::
    If ModeEnabled
        Send {Blind}``
    Else
        Send {Blind}1
Return

$*a::
    If ModeEnabled
        Return
    Else
        Send {Blind}a
Return

$*b::
    If ModeEnabled
        Return
    Else
        Send {Blind}b
Return

$*c::
    If ModeEnabled
        Return
    Else
        Send {Blind}c
Return

$*d::
    If ModeEnabled
        Return
    Else
        Send {Blind}s
Return

$*e::
    If ModeEnabled
        Return
    Else
        Send {Blind}f
Return

$*f::
    If ModeEnabled
        Return
    Else
        Send {Blind}t
Return

$*g::
    If ModeEnabled
        Return
    Else
        Send {Blind}d
Return

$*h::
    If ModeEnabled
        Send {Blind}{Home}
    Else
        Send {Blind}h
Return

$*i::
    If ModeEnabled
        Send {Blind}{Up}
    Else
        Send {Blind}u
Return

$*j::
    If ModeEnabled
        Send {Blind}{Left}
    Else
        Send {Blind}n
Return

$*k::
    If ModeEnabled
        Send {Blind}{Down}
    Else
        Send {Blind}e
Return

$*l::
    If ModeEnabled
        Send {Blind}{Right}
    Else
        Send {Blind}i
Return

$*m::
    If ModeEnabled
        Send {Blind}{Delete}
    Else
        Send {Blind}m
Return

$*n::
    If ModeEnabled
        Send {Blind}{Backspace}
    Else
        Send {Blind}k
Return

$*o::
    If ModeEnabled
        Send {Blind}^y
    Else
        Send {Blind}y
Return

$*p::
    If ModeEnabled
        Return
    Else
        Send {Blind}`;
Return

$*q::
    If ModeEnabled
        Return
    Else
        Send {Blind}q
Return
$*r::
    If ModeEnabled
        Return
    Else
        Send {Blind}p
Return

$*s::
    If ModeEnabled
        Return
    Else
        Send {Blind}r
Return

$*t::
    If ModeEnabled
        Return
    Else
        Send {Blind}g
Return

$*u::
    If ModeEnabled
        Send {Blind}{Enter}
    Else
        Send {Blind}l
Return

$*v::
    If ModeEnabled
        Send {Blind}^v
    Else
        Send {Blind}v
Return

$*w::
    If ModeEnabled
        Return
    Else
        Send {Blind}w
Return

$*x::
    If ModeEnabled
        Send {Blind}^x
    Else
        Send {Blind}x
Return

$*y::
    If ModeEnabled
        Return
    Else
        Send {Blind}j
Return

$*z::
    If ModeEnabled
        Send {Blind}^z
    Else
        Send {Blind}z
Return

$*`;::
    If ModeEnabled
        Send {Blind}{End}
    Else
        Send {Blind}o
Return

ToggleMode(ModeEnabled)
{
    If ModeEnabled
    {
        Menu, Tray, Icon, icon1.ico
        SoundPlay beep.wav
        Return false
    }
    Else
    {
        Menu, Tray, Icon, icon2.ico
        SoundPlay boop.wav
        Return true
    }
}

$*Up::
    SoundBeep 500
Return

$*Down::
    SoundBeep 500
Return

$*Left::
    SoundBeep 500
Return

$*Right::
    SoundBeep 500
Return

;$*Backspace::
;    If ModeEnabled
;        SoundBeep 500
;    Else
;        Send {Blind}{Backspace}
;Return

$`::
    ModeEnabled := ToggleMode(ModeEnabled)
Return



Capslock::RControl

Pause::
    Suspend,Toggle
Return


