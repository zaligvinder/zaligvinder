(declare-const X String)
; RunnerHost\u{3a}\u{2E}htmldll\u{3F}CenterspasSubject\u{3A}Host\u{3A}connectedNodes\u{26}Name=
(assert (str.in_re X (str.to_re "RunnerHost:.htmldll?CenterspasSubject:Host:connectedNodes&Name=\u{a}")))
(check-sat)
