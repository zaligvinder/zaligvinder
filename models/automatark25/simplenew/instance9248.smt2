(declare-const X String)
; \$(\d)*\d
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.* (re.range "0" "9")) (re.range "0" "9") (str.to.re "\x0a")))))
(check-sat)
