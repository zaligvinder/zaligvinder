(declare-const X String)
; \d{1,3}.?\d{0,3}\s[a-zA-Z]{2,30}\s[a-zA-Z]{2,15}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 0 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 2 30) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 2 15) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; ^(20|21|22|23|[0-1]\d)[0-5]\d$
(assert (str.in.re X (re.++ (re.union (str.to.re "20") (str.to.re "21") (str.to.re "22") (str.to.re "23") (re.++ (re.range "0" "1") (re.range "0" "9"))) (re.range "0" "5") (re.range "0" "9") (str.to.re "\x0a"))))
; ([0-9]{1,2}[:][0-9]{1,2}[:]{0,2}[0-9]{0,2}[\s]{0,}[AMPamp]{0,2})
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ":") ((_ re.loop 1 2) (re.range "0" "9")) ((_ re.loop 0 2) (str.to.re ":")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 0 2) (re.union (str.to.re "A") (str.to.re "M") (str.to.re "P") (str.to.re "a") (str.to.re "m") (str.to.re "p"))))))
; /\x3d\x3d$/P
(assert (not (str.in.re X (str.to.re "/==/P\x0a"))))
(check-sat)
