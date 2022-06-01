(declare-const X String)
; ToolbarUser-Agent\u{3A}www\u{2E}webcruiser\u{2E}ccDaemonUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "ToolbarUser-Agent:www.webcruiser.ccDaemonUser-Agent:\u{a}"))))
; /[a-z]=[a-f0-9]{98}/P
(assert (str.in_re X (re.++ (str.to_re "/") (re.range "a" "z") (str.to_re "=") ((_ re.loop 98 98) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/P\u{a}"))))
; xbqyosoe\u{2f}cpvmdll\u{3F}
(assert (not (str.in_re X (str.to_re "xbqyosoe/cpvmdll?\u{a}"))))
(check-sat)
