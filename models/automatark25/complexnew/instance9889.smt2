(declare-const X String)
; ^(([0-9]{5})*-([0-9]{4}))|([0-9]{5})$
(assert (str.in.re X (re.union (re.++ (re.* ((_ re.loop 5 5) (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
; <!--[\\.|\\W|\\w]*?-->
(assert (str.in.re X (re.++ (str.to.re "<!--") (re.* (re.union (str.to.re "\x5c") (str.to.re ".") (str.to.re "|") (str.to.re "W") (str.to.re "w"))) (str.to.re "-->\x0a"))))
; /^connect\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in.re X (re.++ (str.to.re "/connect|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a")))))
(check-sat)
