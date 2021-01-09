(declare-const X String)
; ^[ABCGHJMPQRTWXYZ]$
(assert (str.in.re X (re.++ (re.union (str.to.re "A") (str.to.re "B") (str.to.re "C") (str.to.re "G") (str.to.re "H") (str.to.re "J") (str.to.re "M") (str.to.re "P") (str.to.re "Q") (str.to.re "R") (str.to.re "T") (str.to.re "W") (str.to.re "X") (str.to.re "Y") (str.to.re "Z")) (str.to.re "\x0a"))))
; ^((\+)?(\d{2}[-])?(\d{10}){1})?(\d{11}){0,1}?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (re.opt (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))))) (re.opt ((_ re.loop 11 11) (re.range "0" "9"))) (str.to.re "\x0a"))))
; configINTERNAL\.inikwdwww\x2Ewordiq\x2Ecomas\x2Estarware\x2Ecom
(assert (str.in.re X (str.to.re "configINTERNAL.inikwdwww.wordiq.com\x1bas.starware.com\x0a")))
(check-sat)
