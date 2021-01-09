(declare-const X String)
; ([0-9]{4})-([0-9]{1,2})-([0-9]{1,2})
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^DOMAIN\\\w+$
(assert (not (str.in.re X (re.++ (str.to.re "DOMAIN\x5c") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
(check-sat)
