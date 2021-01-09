(declare-const X String)
; User-Agent\x3AFiltered
(assert (not (str.in.re X (str.to.re "User-Agent:Filtered\x0a"))))
(check-sat)
