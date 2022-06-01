(declare-const X String)
; Subject\u{3a}HostYWRtaW46cGFzc3dvcmQ
(assert (str.in_re X (str.to_re "Subject:HostYWRtaW46cGFzc3dvcmQ\u{a}")))
(check-sat)
