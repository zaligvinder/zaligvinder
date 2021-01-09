(declare-const X String)
; ^\d*[1-9]\d*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.range "1" "9") (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
