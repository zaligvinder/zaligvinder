(declare-const X String)
; /\bobj\u{a}\u{20}*?\/Pattern\u{20}*?\u{a}endobj\b/i
(assert (not (str.in_re X (re.++ (str.to_re "/obj\u{a}") (re.* (str.to_re " ")) (str.to_re "/Pattern") (re.* (str.to_re " ")) (str.to_re "\u{a}endobj/i\u{a}")))))
(check-sat)
