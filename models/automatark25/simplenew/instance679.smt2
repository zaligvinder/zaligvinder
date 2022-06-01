(declare-const X String)
; 195\.225\.\<title\>Actual
(assert (str.in_re X (str.to_re "195.225.<title>Actual\u{a}")))
(check-sat)
