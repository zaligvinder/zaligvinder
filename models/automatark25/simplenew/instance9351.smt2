(declare-const X String)
; style="[^"]*"|'[^']*'
(assert (not (str.in_re X (re.union (re.++ (str.to_re "style=\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}")) (re.++ (str.to_re "'") (re.* (re.comp (str.to_re "'"))) (str.to_re "'\u{a}"))))))
(check-sat)
