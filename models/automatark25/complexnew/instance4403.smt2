(declare-const X String)
; /^([0-2]\d\d){75}/P
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 75 75) (re.++ (re.range "0" "2") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "/P\x0a"))))
; ^(4915[0-1]|491[0-4]\d|490\d\d|4[0-8]\d{3}|[1-3]\d{4}|[1-9]\d{0,3}|0)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "4915") (re.range "0" "1")) (re.++ (str.to.re "491") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "490") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "4") (re.range "0" "8") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "3") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 3) (re.range "0" "9"))) (str.to.re "0")) (str.to.re "\x0a"))))
; (\bprotected\b.*(public))|(\bprivate\b.*(protected))|(\bprivate\b.*(public))
(assert (str.in.re X (re.union (re.++ (str.to.re "protected") (re.* re.allchar) (str.to.re "public")) (re.++ (str.to.re "private") (re.* re.allchar) (str.to.re "protected")) (re.++ (str.to.re "\x0aprivate") (re.* re.allchar) (str.to.re "public")))))
; /\x2Epor([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.por") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
