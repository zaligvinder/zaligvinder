(declare-const X String)
; /^Content-Disposition\u{3A}\s*attachment/smi
(assert (not (str.in_re X (re.++ (str.to_re "/Content-Disposition:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "attachment/smi\u{a}")))))
(check-sat)
