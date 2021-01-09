(declare-const X String)
; richfind\x2EcomCookie\x3aName=Your\+Host\+is\x3A
(assert (str.in.re X (str.to.re "richfind.comCookie:Name=Your+Host+is:\x0a")))
(check-sat)
