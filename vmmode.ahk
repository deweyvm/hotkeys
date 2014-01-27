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
        Send {Blind}{Backspace}
    Else
        Send {Blind}m
Return

$n::
    If ModeEnabled
        Return
    Else
        Send {Blind}k
Return

$*o::
    If ModeEnabled
        Send {Blind}^{Right}
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
        Send {Blind}^{Left}
    Else
        Send {Blind}l
Return

$*v::
    If ModeEnabled
        Return
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
        Return
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
        Return
    Else
        Send {Blind}z
Return

$+Space::
    Send {Tab}
Return












$*`;::
    If ModeEnabled
        Send {Blind}{End}
    Else
        Send {Blind}o
Return



$Tab::
    If ModeEnabled
    {
        Menu, Tray, Icon, C:/Users/M/Desktop/icon1.ico
        ModeEnabled := false
    }
    Else
    {
        Menu, Tray, Icon, C:/Users/M/Desktop/icon2.ico
        ModeEnabled := true
    }
Return

LControl::
    SoundBeep
Return

Capslock::RControl

Pause::
    Suspend,Toggle
Return


