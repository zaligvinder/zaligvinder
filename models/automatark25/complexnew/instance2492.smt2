(declare-const X String)
; ^([987]{1})(\d{1})(\d{8})
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "9") (str.to.re "8") (str.to.re "7"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; Apofis.*Port\x2E\s+\x2FNFO\x2CRegistered
(assert (str.in.re X (re.++ (str.to.re "Apofis") (re.* re.allchar) (str.to.re "Port.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/NFO,Registered\x0a"))))
; \x2Frss\d+answer\sHost\x3A
(assert (str.in.re X (re.++ (str.to.re "/rss") (re.+ (re.range "0" "9")) (str.to.re "answer") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:\x0a"))))
; ^((\$?\-?)|(\-?\$?))([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)?(\.[0-9]*)?$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "$")) (re.opt (str.to.re "-"))) (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "$")))) (re.opt (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") (re.* (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
