(declare-const X String)
; /\/bin\.exe$/U
(assert (not (str.in.re X (str.to.re "//bin.exe/U\x0a"))))
; ^\d{1,2}\.\d{3}\.\d{3}[-][0-9kK]{1}$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 1) (re.union (re.range "0" "9") (str.to.re "k") (str.to.re "K"))) (str.to.re "\x0a"))))
; ^[+-]?\d+(\,\d{3})*\.?\d*\%?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))
; ^\d*\.?((25)|(50)|(5)|(75)|(0)|(00))?$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.union (str.to.re "25") (str.to.re "50") (str.to.re "5") (str.to.re "75") (str.to.re "0") (str.to.re "00"))) (str.to.re "\x0a"))))
(check-sat)
