(declare-const X String)
; Agent\s+\x2Ftoolbar\x2Fico\x2F
(assert (str.in.re X (re.++ (str.to.re "Agent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/\x0a"))))
; ^([0-1][0-9]|[2][0-3]):([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
