(declare-const X String)
; \u{7D}\u{7B}Sysuptime\u{3A}\d+\u{2F}communicatortb
(assert (not (str.in_re X (re.++ (str.to_re "}{Sysuptime:") (re.+ (re.range "0" "9")) (str.to_re "/communicatortb\u{a}")))))
; ^((\$?\-?)|(\-?\$?))([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)?(\.[0-9]*)?$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "$")) (re.opt (str.to_re "-"))) (re.++ (re.opt (str.to_re "-")) (re.opt (str.to_re "$")))) (re.opt (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") (re.* (re.range "0" "9")))) (str.to_re "\u{a}")))))
; /filename=[a-z]{5,8}\d{2,3}\.xap\u{d}\u{a}/Hm
(assert (str.in_re X (re.++ (str.to_re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ".xap\u{d}\u{a}/Hm\u{a}"))))
; RootviewNetControl\u{2E}Serverdata2\.activshopper\.com
(assert (str.in_re X (str.to_re "RootviewNetControl.Server\u{13}data2.activshopper.com\u{a}")))
(check-sat)
