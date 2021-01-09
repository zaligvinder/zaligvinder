(declare-const X String)
; <!--[\d\D]*?-->
(assert (str.in.re X (re.++ (str.to.re "<!--") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to.re "-->\x0a"))))
; \x7D\x7BTrojan\x3A\w+by\w+dddlogin\x2Edudu\x2EcomSurveillanceIPOblivionhoroscope
(assert (not (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "by") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "dddlogin.dudu.comSurveillance\x13IPOblivionhoroscope\x0a")))))
; \-?(90|[0-8]?[0-9]\.[0-9]{0,6})\,\-?(180|(1[0-7][0-9]|[0-9]{0,2})\.[0-9]{0,6})
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (str.to.re "90") (re.++ (re.opt (re.range "0" "8")) (re.range "0" "9") (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))) (str.to.re ",") (re.opt (str.to.re "-")) (re.union (str.to.re "180") (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "7") (re.range "0" "9")) ((_ re.loop 0 2) (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
