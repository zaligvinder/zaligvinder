(declare-const X String)
; \x7D\x7BSysuptime\x3A\d+\x2Fcommunicatortb
(assert (not (str.in.re X (re.++ (str.to.re "}{Sysuptime:") (re.+ (re.range "0" "9")) (str.to.re "/communicatortb\x0a")))))
; ^((\$?\-?)|(\-?\$?))([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)?(\.[0-9]*)?$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "$")) (re.opt (str.to.re "-"))) (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "$")))) (re.opt (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") (re.* (re.range "0" "9")))) (str.to.re "\x0a")))))
; /filename=[a-z]{5,8}\d{2,3}\.xap\x0d\x0a/Hm
(assert (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".xap\x0d\x0a/Hm\x0a"))))
; RootviewNetControl\x2EServerdata2\.activshopper\.com
(assert (str.in.re X (str.to.re "RootviewNetControl.Server\x13data2.activshopper.com\x0a")))
(check-sat)
