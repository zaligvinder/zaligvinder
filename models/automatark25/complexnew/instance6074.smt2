(declare-const X String)
; /filename=[^\n]*\x2ehtc/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".htc/i\x0a"))))
; ^(((0[0-9])|(1[0-9])|(2[0-3])):[0-5][0-9])$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
