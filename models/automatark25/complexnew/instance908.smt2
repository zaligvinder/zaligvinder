(declare-const X String)
; /\x2eqt([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.qt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^[5,6]\d{7}|^$
(assert (not (str.in.re X (re.union (re.++ (re.union (str.to.re "5") (str.to.re ",") (str.to.re "6")) ((_ re.loop 7 7) (re.range "0" "9"))) (str.to.re "\x0a")))))
; /\/app\/\?prj=\d\x26pid=[^\r\n]+\x26mac=/Ui
(assert (str.in.re X (re.++ (str.to.re "//app/?prj=") (re.range "0" "9") (str.to.re "&pid=") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "&mac=/Ui\x0a"))))
; ^[+-]? *(\$)? *((\d+)|(\d{1,3})(\,\d{3})*)(\.\d{0,2})?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.* (str.to.re " ")) (re.opt (str.to.re "$")) (re.* (str.to.re " ")) (re.union (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
