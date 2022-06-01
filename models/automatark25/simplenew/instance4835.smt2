(declare-const X String)
; Spywww\u{2E}lookquick\u{2E}com
(assert (not (str.in_re X (str.to_re "Spywww.lookquick.com\u{a}"))))
(check-sat)
