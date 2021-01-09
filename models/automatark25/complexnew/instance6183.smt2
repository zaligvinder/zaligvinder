(declare-const X String)
; /filename=[^\n]*\x2exap/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xap/i\x0a")))))
; ProtoSubject\x3asource\=IncrediFindProjectAgentHost\x3AHost\x3AHost\x3A
(assert (not (str.in.re X (str.to.re "ProtoSubject:source=IncrediFindProjectAgentHost:Host:Host:\x0a"))))
; ^.{0,0}
(assert (str.in.re X (re.++ ((_ re.loop 0 0) re.allchar) (str.to.re "\x0a"))))
(check-sat)
