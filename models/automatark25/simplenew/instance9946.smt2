(declare-const X String)
; \x7D\x7BTrojan\x3A\w+by\w+dddlogin\x2Edudu\x2EcomSurveillanceIPOblivionhoroscope
(assert (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "by") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "dddlogin.dudu.comSurveillance\x13IPOblivionhoroscope\x0a"))))
(check-sat)
