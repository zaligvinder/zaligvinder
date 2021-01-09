(declare-const X String)
; Host\x3AlogUser-Agent\x3AonSubject\x3A
(assert (not (str.in.re X (str.to.re "Host:logUser-Agent:onSubject:\x0a"))))
(check-sat)
