#SingleInstance force
#NoEnv
SendMode Input
SetTitleMatchMode 2



e::f
r::p
t::g
y::j
u::l
i::u
o::y
p::`;

s::r
d::s
f::t
g::d
j::n
k::e
l::i
`;::o


n::k

ModeEnabled := false

LControl::
    SoundBeep
    Return

Capslock::RControl

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

;^$F5::
;    IfWinActive Mozilla Firefox
;    {
;        Send ^{F5}
;    }
;    else
;    {
;
;        IfWinExist TEST
;        {
;            WinActivate, TEST
;            SendInput {Raw}cd /cygdrive/c/Users/M/Desktop && sh run-test.sh
;            Send {Enter}
;            IfWinExist Sublime Text 2
;            {
;                WinActivate, Sublime Text 2
;            }
;        }
;
;    }
;    Return

$F5::
    IfWinActive Mozilla Firefox
    {
        Send ^{F5}
    }
    else
    {
        IfWinActive IntelliJ IDEA
        {
            Send {F5}
        }
        else
        {
        IfWinExist TEST
            {
                GetKeyState, state, Control
                If state = D
                {
                    WinActivate, TEST
                    SendInput {Raw}cd /cygdrive/c/Users/M/Desktop && sh run-test.sh
                    Send {Enter}
                    IfWinExist Sublime Text 2
                    {
                        WinActivate, Sublime Text 2
                    }
                }
                else
                {
                    WinActivate, TEST
                }

            }
        }
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
