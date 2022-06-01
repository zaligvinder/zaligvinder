(declare-const X String)
; gpstool\u{2e}globaladserver\u{2e}comfriend_nickname=CIA-Notify-Tezt
(assert (str.in_re X (str.to_re "gpstool.globaladserver.comfriend_nickname=CIA-Notify-Tezt\u{a}")))
(check-sat)
