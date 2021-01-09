(declare-const X String)
; /^("(\\["\\]|[^"])*"|[^\n])*$/gm
(assert (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (re.++ (str.to.re "\x22") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.comp (str.to.re "\x0a")))) (str.to.re "/gm\x0a"))))
; ^([1-9]{0,1})([0-9]{1})((\.[0-9]{0,1})([0-9]{1})|(\,[0-9]{0,1})([0-9]{1}))?$
(assert (str.in.re X (re.++ (re.opt (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re ".") (re.opt (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re ",") (re.opt (re.range "0" "9"))))) (str.to.re "\x0a"))))
; ^(([$])?((([0-9]{1,3},)+[0-9]{3})|[0-9]+)(\.[0-9]{2})?)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "$")) (re.union (re.++ (re.+ (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))))))
(check-sat)
