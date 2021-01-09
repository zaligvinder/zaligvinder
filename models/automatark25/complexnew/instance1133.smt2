(declare-const X String)
; Logger.*aresflashdownloader\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Logger") (re.* re.allchar) (str.to.re "aresflashdownloader.com\x0a")))))
; gpstool\x2eglobaladserver\x2ecomfriend_nickname=CIA-Notify-Tezt
(assert (not (str.in.re X (str.to.re "gpstool.globaladserver.comfriend_nickname=CIA-Notify-Tezt\x0a"))))
(check-sat)
