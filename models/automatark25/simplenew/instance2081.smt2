(declare-const X String)
; ^01[1,2,3,4,6,7,8,9]\d{7,8}$
(assert (str.in.re X (re.++ (str.to.re "01") (re.union (str.to.re "1") (str.to.re ",") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9")) ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
