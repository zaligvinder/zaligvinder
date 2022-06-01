(declare-const X String)
; <([^<>\s]*)(\s[^<>]*)?>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.* (re.union (str.to_re "<") (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.* (re.union (str.to_re "<") (str.to_re ">"))))) (str.to_re ">\u{a}")))))
(check-sat)
