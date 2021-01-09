(declare-const X String)
; ^[$]?[0-9]*(\.)?[0-9]?[0-9]?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to.re "\x0a"))))
; ^0$|^[1-9][0-9]*$|^[1-9][0-9]{0,2}(,[0-9]{3})$
(assert (not (str.in.re X (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "\x0a,") ((_ re.loop 3 3) (re.range "0" "9")))))))
; User-Agent\x3a\s+Host\x3A\s+Referer\x3a
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Referer:\x0a"))))
; ^(-?)(,?)(\d{1,3}(\.\d{3})*|(\d+))(\,\d{2})?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re ",")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ",") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
