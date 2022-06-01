(declare-const X String)
; \u{22}reaction\u{2E}txt\u{22}.*Cookie\u{3a}[^\n\r]*richfind\u{2E}comSimpsonFrom\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "\u{22}reaction.txt\u{22}") (re.* re.allchar) (str.to_re "Cookie:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "richfind.comSimpsonFrom:\u{a}")))))
(check-sat)
