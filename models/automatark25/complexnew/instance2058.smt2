(declare-const X String)
; ^([34|37]{2})([0-9]{13})$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "3") (str.to.re "4") (str.to.re "|") (str.to.re "7"))) ((_ re.loop 13 13) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^([1-9]|1[0-2]|0[1-9]){1}(:[0-5][0-9][ ][aApP][mM]){1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "1" "9") (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (str.to.re "0") (re.range "1" "9")))) ((_ re.loop 1 1) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (str.to.re " ") (re.union (str.to.re "a") (str.to.re "A") (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "m") (str.to.re "M")))) (str.to.re "\x0a")))))
; ^([0]\d|[1][0-2])\/([0-2]\d|[3][0-1])\/([2][01]|[1][6-9])\d{2}(\s([0-1]\d|[2][0-3])(\:[0-5]\d){1,2})?$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") (re.union (re.++ (str.to.re "2") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (str.to.re "1") (re.range "6" "9"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) ((_ re.loop 1 2) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))))) (str.to.re "\x0a")))))
; Points\d+Host\x3a\stoBasicwww\x2Ewebcruiser\x2Ecc
(assert (not (str.in.re X (re.++ (str.to.re "Points") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toBasicwww.webcruiser.cc\x0a")))))
; [a-zA-Z0-9!#\$%&'\*\+\-\/=\?\^_`{\|}~]
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "!") (str.to.re "#") (str.to.re "$") (str.to.re "%") (str.to.re "&") (str.to.re "'") (str.to.re "*") (str.to.re "+") (str.to.re "-") (str.to.re "/") (str.to.re "=") (str.to.re "?") (str.to.re "^") (str.to.re "_") (str.to.re "`") (str.to.re "{") (str.to.re "|") (str.to.re "}") (str.to.re "~")) (str.to.re "\x0a"))))
(check-sat)
