(declare-const X String)
; [^"\r\n]*
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re "\u{22}") (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "\u{a}"))))
(check-sat)
