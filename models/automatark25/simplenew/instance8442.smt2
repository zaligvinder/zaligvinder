(declare-const X String)
; ([0-9]+:)?[0-9]+\s*(am|pm)|[0-9]+:[0-9]+\s*(am|pm)?
(assert (not (str.in_re X (re.union (re.++ (re.opt (re.++ (re.+ (re.range "0" "9")) (str.to_re ":"))) (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "am") (str.to_re "pm"))) (re.++ (re.+ (re.range "0" "9")) (str.to_re ":") (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.union (str.to_re "am") (str.to_re "pm"))) (str.to_re "\u{a}"))))))
(check-sat)
