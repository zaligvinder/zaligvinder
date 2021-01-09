(declare-const X String)
; RunnerHost\x3a\x2Ehtmldll\x3FCenterspasSubject\x3AHost\x3AconnectedNodes\x26Name=
(assert (str.in.re X (str.to.re "RunnerHost:.htmldll?CenterspasSubject:Host:connectedNodes&Name=\x0a")))
(check-sat)
