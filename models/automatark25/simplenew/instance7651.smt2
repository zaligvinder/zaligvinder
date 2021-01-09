(declare-const X String)
; ^((6011)((-|\s)?[0-9]{4}){3})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a6011") ((_ re.loop 3 3) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9"))))))))
(check-sat)
