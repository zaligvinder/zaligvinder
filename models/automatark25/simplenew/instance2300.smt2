(declare-const X String)
; Subject\x3aHostYWRtaW46cGFzc3dvcmQ
(assert (str.in.re X (str.to.re "Subject:HostYWRtaW46cGFzc3dvcmQ\x0a")))
(check-sat)
