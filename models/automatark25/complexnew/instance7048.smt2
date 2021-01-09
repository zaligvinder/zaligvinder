(declare-const X String)
; trustyfiles\x2Ecom\d+lnzzlnbk\x2fpkrm\.fin\s+
(assert (str.in.re X (re.++ (str.to.re "trustyfiles.com") (re.+ (re.range "0" "9")) (str.to.re "lnzzlnbk/pkrm.fin") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; ^(((0|((\+)?91(\-)?))|((\((\+)?91\)(\-)?)))?[7-9]\d{9})?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (re.union (re.++ (str.to.re "(") (re.opt (str.to.re "+")) (str.to.re "91)") (re.opt (str.to.re "-"))) (str.to.re "0") (re.++ (re.opt (str.to.re "+")) (str.to.re "91") (re.opt (str.to.re "-"))))) (re.range "7" "9") ((_ re.loop 9 9) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
