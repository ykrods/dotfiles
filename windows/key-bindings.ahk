#If WinActive("ahk_exe ubuntu2004.exe")
    ; underscore
    vkE2::_
    ; emacs undo
    ^-::Send,^/
#If !WinActive("ahk_exe ubuntu2004.exe")
    ^h::Send,{Backspace}
    ^d::Send {Delete}
    ^f::Send,{Right}
    ^b::Send, {Left}
    ^n::Send, {Down}
    ^p::Send, {Up}
    ^a::Send, {Home}
    ^e::Send, {End}
#If
