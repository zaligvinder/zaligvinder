(declare-const X String)
; /^full\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in.re X (re.++ (str.to.re "/full|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a"))))
; \d+([\.|\,][0]+?[1-9]+)?
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re "|") (str.to.re ",")) (re.+ (str.to.re "0")) (re.+ (re.range "1" "9")))) (str.to.re "\x0a")))))
; ^[a-zA-Z]$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a"))))
; X-Spam-Level:\s[*]{11}
(assert (str.in.re X (re.++ (str.to.re "X-Spam-Level:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 11 11) (str.to.re "*")) (str.to.re "\x0a"))))
; ^(([0]?[1-9]|1[0-2])(:)([0-5][0-9]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9")))))
(check-sat)
