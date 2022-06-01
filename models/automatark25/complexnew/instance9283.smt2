(declare-const X String)
; [\u{80}-\u{FF}]
(assert (not (str.in_re X (re.++ (re.range "\u{80}" "\u{ff}") (str.to_re "\u{a}")))))
; /filename=[^\n]*\u{2e}eot/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".eot/i\u{a}"))))
(check-sat)
