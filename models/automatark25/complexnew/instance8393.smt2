(declare-const X String)
; \x2Fcs\x2Fpop4\x2FA-Spywww\x2Eyoogee\x2Ecom
(assert (not (str.in.re X (str.to.re "/cs/pop4/A-Spywww.yoogee.com\x13\x0a"))))
; /filename=[^\n]*\x2epng/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".png/i\x0a")))))
; X-Mailer\x3aUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "X-Mailer:\x13User-Agent:\x0a"))))
(check-sat)
