(declare-const X String)
; /([^\u{0}-\u{FF}]\s*)/u
(assert (not (str.in_re X (re.++ (str.to_re "//u\u{a}") (re.range "\u{0}" "\u{ff}") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))))
(check-sat)
