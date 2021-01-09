(declare-const X String)
; ^(([0]?[1-9])|(1[0-2]))\/(([0]?[1-9])|([1,2]\d{1})|([3][0,1]))\/[12]\d{3}$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re ",") (str.to.re "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re ",") (str.to.re "1")))) (str.to.re "/") (re.union (str.to.re "1") (str.to.re "2")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\/AES\d+O\d+\.jsp\?[a-z0-9=\x2b\x2f]{20}/iU
(assert (not (str.in.re X (re.++ (str.to.re "//AES") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iU\x0a")))))
; ^[0-9]$|[1-9]+[0-9]$
(assert (not (str.in.re X (re.union (re.range "0" "9") (re.++ (re.+ (re.range "1" "9")) (re.range "0" "9") (str.to.re "\x0a"))))))
; /gate\x2ephp\x3freg=[a-z]{10}/U
(assert (str.in.re X (re.++ (str.to.re "/gate.php?reg=") ((_ re.loop 10 10) (re.range "a" "z")) (str.to.re "/U\x0a"))))
(check-sat)
