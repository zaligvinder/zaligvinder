(declare-const X String)
; ProtoSubject\u{3a}source\=IncrediFindProjectAgentHost\u{3A}Host\u{3A}Host\u{3A}
(assert (str.in_re X (str.to_re "ProtoSubject:source=IncrediFindProjectAgentHost:Host:Host:\u{a}")))
(check-sat)
