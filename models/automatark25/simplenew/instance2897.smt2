(declare-const X String)
; Host\x3AFrom\x3aKeylogger
(assert (str.in.re X (str.to.re "Host:From:Keylogger\x0a")))
(check-sat)
