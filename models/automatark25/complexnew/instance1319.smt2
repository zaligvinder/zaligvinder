(declare-const X String)
; .*-[0-9]{1,10}.*
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "-") ((_ re.loop 1 10) (re.range "0" "9")) (re.* re.allchar) (str.to.re "\x0a"))))
; ^(([0-9]{2})|([a-zA-Z][0-9])|([a-zA-Z]{2}))[0-9]{6}$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\/stat_u\/$/U
(assert (str.in.re X (str.to.re "//stat_u//U\x0a")))
(check-sat)
