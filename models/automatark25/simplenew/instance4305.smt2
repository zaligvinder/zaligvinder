(declare-const X String)
; ^.{2,}$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) re.allchar) (re.* re.allchar))))
(check-sat)
