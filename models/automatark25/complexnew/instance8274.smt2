(declare-const X String)
; protocolNetControl\u{2E}ServerKEYLOGGERUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "protocolNetControl.Server\u{13}KEYLOGGERUser-Agent:\u{a}")))
; \u{1f}\u{8b}\u{8}\u{0}.+\u{0}\u{0}
(assert (str.in_re X (re.++ (str.to_re "\u{1f}\u{8b}\u{8}\u{0}") (re.+ re.allchar) (str.to_re "\u{0}\u{0}\u{a}"))))
(check-sat)
