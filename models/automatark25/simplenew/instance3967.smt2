(declare-const X String)
; (1[8,9]|20)[0-9]{2}
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "8") (str.to.re ",") (str.to.re "9"))) (str.to.re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
