(declare-const X String)
; Host\u{3A}logUser-Agent\u{3A}onSubject\u{3A}
(assert (str.in_re X (str.to_re "Host:logUser-Agent:onSubject:\u{a}")))
(check-sat)
