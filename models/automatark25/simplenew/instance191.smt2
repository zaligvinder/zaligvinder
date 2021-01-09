(declare-const X String)
; Computer\x7D\x7BSysuptime\x3Awww\x2Eezula\x2EcomanswerServerHost\x3Aserveradfsgecoiwnf
(assert (str.in.re X (str.to.re "Computer}{Sysuptime:www.ezula.comanswerServerHost:serveradfsgecoiwnf\x1b\x0a")))
(check-sat)
