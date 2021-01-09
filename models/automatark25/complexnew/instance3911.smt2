(declare-const X String)
; ^((\$?\-?)|(\-?\$?))([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)?(\.[0-9]*)?$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "$")) (re.opt (str.to.re "-"))) (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "$")))) (re.opt (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") (re.* (re.range "0" "9")))) (str.to.re "\x0a"))))
; /\x2epng([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.png") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^([0-9]|[1-9][0-9]|[1-9][0-9][0-9])$
(assert (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
