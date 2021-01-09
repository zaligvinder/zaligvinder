(declare-const X String)
; User-Agent\x3AFrom\x3Awww\x2Eonlinecasinoextra\x2EcomHost\x3A
(assert (str.in.re X (str.to.re "User-Agent:From:www.onlinecasinoextra.comHost:\x0a")))
(check-sat)
