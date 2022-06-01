(declare-const X String)
; \u{7D}\u{7B}Trojan\u{3A}\w+by\w+dddlogin\u{2E}dudu\u{2E}comSurveillanceIPOblivionhoroscope
(assert (not (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "by") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "dddlogin.dudu.comSurveillance\u{13}IPOblivionhoroscope\u{a}")))))
(check-sat)
