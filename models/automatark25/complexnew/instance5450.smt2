(declare-const X String)
; ProtoSubject\x3asource\=IncrediFindProjectAgentHost\x3AHost\x3AHost\x3A
(assert (not (str.in.re X (str.to.re "ProtoSubject:source=IncrediFindProjectAgentHost:Host:Host:\x0a"))))
; trackwww\x2Ealfacleaner\x2Ecom
(assert (str.in.re X (str.to.re "trackwww.alfacleaner.com\x0a")))
; (8[^0]\d|8\d[^0]|[0-79]\d{2})-\d{3}-\d{4}
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "8") (re.comp (str.to.re "0")) (re.range "0" "9")) (re.++ (str.to.re "8") (re.range "0" "9") (re.comp (str.to.re "0"))) (re.++ (re.union (re.range "0" "7") (str.to.re "9")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
