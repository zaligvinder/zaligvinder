(declare-const X String)
; ProtoSubject\x3asource\=IncrediFindProjectAgentHost\x3AHost\x3AHost\x3A
(assert (str.in.re X (str.to.re "ProtoSubject:source=IncrediFindProjectAgentHost:Host:Host:\x0a")))
(check-sat)
