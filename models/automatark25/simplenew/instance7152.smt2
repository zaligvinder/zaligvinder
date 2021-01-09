(declare-const X String)
; to\d+User-Agent\x3AFiltered
(assert (str.in.re X (re.++ (str.to.re "to") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:Filtered\x0a"))))
(check-sat)
