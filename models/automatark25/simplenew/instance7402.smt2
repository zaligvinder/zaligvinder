(declare-const X String)
; \u{7D}\u{7B}Trojan\u{3A}User-Agent\u{3A}byHost\u{3A}\u{b0}\u{ae}\u{b6}\u{f9}\u{cd}\u{f8}\u{b5}\u{c1}
(assert (str.in_re X (str.to_re "}{Trojan:User-Agent:byHost:\u{b0}\u{ae}\u{b6}\u{f9}\u{cd}\u{f8}\u{b5}\u{c1}\u{a}")))
(check-sat)
