(declare-const X String)
; richfind\u{2E}comCookie\u{3a}Name=Your\+Host\+is\u{3A}
(assert (str.in_re X (str.to_re "richfind.comCookie:Name=Your+Host+is:\u{a}")))
(check-sat)
