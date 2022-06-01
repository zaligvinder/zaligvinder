(declare-const X String)
; Host\u{3A}\w+Host\u{3A}User-Agent\u{3A}TPSystemad\u{2E}searchsquire\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:User-Agent:TPSystemad.searchsquire.com\u{a}"))))
; xbqyosoe\u{2f}cpvmdll\u{3F}
(assert (not (str.in_re X (str.to_re "xbqyosoe/cpvmdll?\u{a}"))))
; ProtoSubject\u{3a}source\=IncrediFindProjectAgentHost\u{3A}Host\u{3A}Host\u{3A}
(assert (str.in_re X (str.to_re "ProtoSubject:source=IncrediFindProjectAgentHost:Host:Host:\u{a}")))
; Subject\u{3A}\swww\u{2E}searchwords\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.searchwords.com\u{a}"))))
; /\*[^\/]+/
(assert (str.in_re X (re.++ (str.to_re "/*") (re.+ (re.comp (str.to_re "/"))) (str.to_re "/\u{a}"))))
(check-sat)
