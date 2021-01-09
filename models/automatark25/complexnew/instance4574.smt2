(declare-const X String)
; (\*\*)(.+)(\*\*)
(assert (str.in.re X (re.++ (str.to.re "**") (re.+ re.allchar) (str.to.re "**\x0a"))))
; (0[289][0-9]{2})|([1345689][0-9]{3})|(2[0-8][0-9]{2})|(290[0-9])|(291[0-4])|(7[0-4][0-9]{2})|(7[8-9][0-9]{2})
(assert (str.in.re X (re.union (re.++ (str.to.re "0") (re.union (str.to.re "2") (str.to.re "8") (str.to.re "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union (str.to.re "1") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "8") (str.to.re "9")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "8") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "290") (re.range "0" "9")) (re.++ (str.to.re "291") (re.range "0" "4")) (re.++ (str.to.re "7") (re.range "0" "4") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "\x0a7") (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9"))))))
; ^(\(\d{3}\)[- ]?|\d{3}[- ])?\d{3}[- ]\d{4}$
(assert (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.opt (re.union (str.to.re "-") (str.to.re " ")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " "))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
