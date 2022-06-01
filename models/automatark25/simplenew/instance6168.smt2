(declare-const X String)
; ^.{4,8}$
(assert (str.in_re X (re.++ ((_ re.loop 4 8) re.allchar) (str.to_re "\u{a}"))))
(check-sat)
