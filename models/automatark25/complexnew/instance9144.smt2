(declare-const X String)
; ToolbarUser-Agent\x3Awww\x2Ewebcruiser\x2EccDaemonUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "ToolbarUser-Agent:www.webcruiser.ccDaemonUser-Agent:\x0a"))))
; /[a-z]=[a-f0-9]{98}/P
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 98 98) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/P\x0a"))))
; xbqyosoe\x2fcpvmdll\x3F
(assert (not (str.in.re X (str.to.re "xbqyosoe/cpvmdll?\x0a"))))
(check-sat)
