(declare-const X String)
; /_X(86|64)&a4=/P
(assert (str.in_re X (re.++ (str.to_re "/_X") (re.union (str.to_re "86") (str.to_re "64")) (str.to_re "&a4=/P\u{a}"))))
(check-sat)
