(declare-const X String)
; ^(([a-zA-Z0-9]+([\-])?[a-zA-Z0-9]+)+(\.)?)+[a-zA-Z]{2,6}$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (str.to.re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (re.opt (str.to.re ".")))) ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; Authorization\x3a\d+lnzzlnbk\x2fpkrm\.fin
(assert (str.in.re X (re.++ (str.to.re "Authorization:") (re.+ (re.range "0" "9")) (str.to.re "lnzzlnbk/pkrm.fin\x0a"))))
; ^(([0-9]{3})[-]?)*[0-9]{6,7}$
(assert (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")))) ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\/app\/\?prj=\d\x26pid=[^\r\n]+\x26mac=/Ui
(assert (str.in.re X (re.++ (str.to.re "//app/?prj=") (re.range "0" "9") (str.to.re "&pid=") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "&mac=/Ui\x0a"))))
(check-sat)
