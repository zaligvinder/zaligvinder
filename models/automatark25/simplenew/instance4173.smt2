(declare-const X String)
; \u{7D}\u{7B}Port\u{3A}Host\u{3A}mqnqgijmng\u{2f}ojNavhelperUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\u{a}"))))
(check-sat)
