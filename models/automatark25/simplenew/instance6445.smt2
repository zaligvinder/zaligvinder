(declare-const X String)
; gpstool\x2eglobaladserver\x2ecomfriend_nickname=CIA-Notify-Tezt
(assert (str.in.re X (str.to.re "gpstool.globaladserver.comfriend_nickname=CIA-Notify-Tezt\x0a")))
(check-sat)
