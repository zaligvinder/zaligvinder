(declare-const X String)
; \u{2F}rssaboutinformationHost\u{3A}\u{2F}ezsbu=DISKHost\u{3A}ad\u{2E}mokead\u{2E}com
(assert (str.in_re X (str.to_re "/rssaboutinformationHost:/ezsbu=DISKHost:ad.mokead.com\u{a}")))
; \u{7D}\u{7B}Trojan\u{3A}\w+by\d+to\w+dddlogin\u{2E}dudu\u{2E}comSurveillanceIPOblivion
(assert (not (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "by") (re.+ (re.range "0" "9")) (str.to_re "to") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "dddlogin.dudu.comSurveillance\u{13}IPOblivion\u{a}")))))
(check-sat)
