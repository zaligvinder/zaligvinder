(declare-const X String)
; \/cgi-bin\/PopupVHost\x3Apiolet\x0D\x0A\x0D\x0AAttached
(assert (not (str.in.re X (str.to.re "/cgi-bin/PopupVHost:piolet\x0d\x0a\x0d\x0aAttached\x0a"))))
(check-sat)
