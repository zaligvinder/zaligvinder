(declare-const X String)
; [\u{80}-\u{FF}]
(assert (not (str.in_re X (re.++ (re.range "\u{80}" "\u{ff}") (str.to_re "\u{a}")))))
(check-sat)
