(declare-const X String)
; (.|[\r\n]){1,5}
(assert (not (str.in_re X (re.++ ((_ re.loop 1 5) (re.union re.allchar (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "\u{a}")))))
(check-sat)
