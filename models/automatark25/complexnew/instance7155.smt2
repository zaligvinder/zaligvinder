(declare-const X String)
; [^a-zA-Z \-]|(  )|(\-\-)|(^\s*$)
(assert (not (str.in_re X (re.union (str.to_re "  ") (str.to_re "--") (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")) (re.range "a" "z") (re.range "A" "Z") (str.to_re " ") (str.to_re "-")))))
; searchnugget.*Referer\u{3A}\s+User-Agent\u{3A}Host\u{3A}
(assert (str.in_re X (re.++ (str.to_re "searchnugget\u{13}") (re.* re.allchar) (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:Host:\u{a}"))))
(check-sat)
