(declare-const X String)
; Subject\x3areportGatorNavExcel
(assert (not (str.in.re X (str.to.re "Subject:reportGatorNavExcel\x0a"))))
(check-sat)
