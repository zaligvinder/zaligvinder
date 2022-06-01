(declare-const X String)
; [^a-zA-Z \-]|(  )|(\-\-)|(^\s*$)
(assert (str.in_re X (re.union (str.to_re "  ") (str.to_re "--") (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")) (re.range "a" "z") (re.range "A" "Z") (str.to_re " ") (str.to_re "-"))))
(check-sat)
