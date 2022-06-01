(declare-const X String)
; securityon\u{3A}Host\u{3A}Redirector\u{22}ServerHost\u{3A}
(assert (str.in_re X (str.to_re "securityon:Host:Redirector\u{22}ServerHost:\u{a}")))
; /^\/[a-f0-9]{32}\/\d{10}\/[a-f0-9]{32}\.jar$/Ui
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ".jar/Ui\u{a}"))))
(check-sat)
