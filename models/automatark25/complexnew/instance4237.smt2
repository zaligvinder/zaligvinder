(declare-const X String)
; ^(([0-1]?[1-9]|2[0-3])(:)([0-5][0-9]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "1" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))))
; ^(-|\+)?(((100|((0|[1-9]{1,2})(\.[0-9]+)?)))|(\.[0-9]+))%?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.union (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))) (str.to.re "100") (re.++ (re.union (str.to.re "0") ((_ re.loop 1 2) (re.range "1" "9"))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))))) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
; /\/setup_b\.asp\?prj=\d\x26pid=[^\r\n]*\x26mac=/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//setup_b.asp?prj=") (re.range "0" "9") (str.to.re "&pid=") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "&mac=/Ui\x0a")))))
; /^.{27}/sR
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 27 27) re.allchar) (str.to.re "/sR\x0a"))))
(check-sat)
