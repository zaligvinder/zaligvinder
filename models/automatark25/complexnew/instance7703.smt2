(declare-const X String)
; (^(\d+)$)|(^(\d{1,3}[ ,\.](\d{3}[ ,\.])*\d{3}|\d{1,3})$)
(assert (not (str.in.re X (re.union (re.+ (re.range "0" "9")) (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re ",") (str.to.re ".")) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re ",") (str.to.re ".")))) ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 1 3) (re.range "0" "9"))) (str.to.re "\x0a"))))))
; ^\{(.+)|^\\(.+)|(\}*)
(assert (str.in.re X (re.union (re.++ (str.to.re "{") (re.+ re.allchar)) (re.++ (str.to.re "\x5c") (re.+ re.allchar)) (re.++ (re.* (str.to.re "}")) (str.to.re "\x0a")))))
; ovpl\s+\x7D\x7BPort\x3A.*SOAPAction\x3A.*adfsgecoiwnfHost\x3A\x3Fsearch\x3D
(assert (str.in.re X (re.++ (str.to.re "ovpl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Port:") (re.* re.allchar) (str.to.re "SOAPAction:") (re.* re.allchar) (str.to.re "adfsgecoiwnf\x1bHost:?search=\x0a"))))
(check-sat)
