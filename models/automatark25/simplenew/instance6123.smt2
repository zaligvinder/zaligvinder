(declare-const X String)
; [0][x][0-9a-fA-F]+
(assert (str.in.re X (re.++ (str.to.re "0x") (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a"))))
(check-sat)
