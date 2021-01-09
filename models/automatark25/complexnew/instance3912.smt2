(declare-const X String)
; ^((\d{2,4})/)?((\d{6,8})|(\d{2})-(\d{2})-(\d{2,4})|(\d{3,4})-(\d{3,4}))$
(assert (str.in.re X (re.++ (re.opt (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "/"))) (re.union ((_ re.loop 6 8) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 4) (re.range "0" "9"))) (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; RunnerHost\x3a\x2Ehtmldll\x3FCenterspasSubject\x3AHost\x3AconnectedNodes\x26Name=
(assert (str.in.re X (str.to.re "RunnerHost:.htmldll?CenterspasSubject:Host:connectedNodes&Name=\x0a")))
(check-sat)
