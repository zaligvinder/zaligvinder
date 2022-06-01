(declare-const X String)
; ProtoSubject\u{3a}source\=IncrediFindProjectAgentHost\u{3A}Host\u{3A}Host\u{3A}
(assert (str.in_re X (str.to_re "ProtoSubject:source=IncrediFindProjectAgentHost:Host:Host:\u{a}")))
; ^[a-zA-Z]+((\s|\-|\')[a-zA-Z]+)?$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.++ (re.union (str.to_re "-") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to_re "\u{a}"))))
(check-sat)
