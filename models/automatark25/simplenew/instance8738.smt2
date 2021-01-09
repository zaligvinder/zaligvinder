(declare-const X String)
; .\{\d\}
(assert (str.in.re X (re.++ re.allchar (str.to.re "{") (re.range "0" "9") (str.to.re "}\x0a"))))
(check-sat)
