(declare-const X String)
; gpstool\x2eglobaladserver\x2ecomfriend_nickname=CIA-Notify-Tezt
(assert (str.in.re X (str.to.re "gpstool.globaladserver.comfriend_nickname=CIA-Notify-Tezt\x0a")))
; /^\/\d\x2eexe/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.range "0" "9") (str.to.re ".exe/Ui\x0a")))))
(check-sat)
