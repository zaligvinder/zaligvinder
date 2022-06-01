(declare-const X String)
; ^([a-zA-Z]:\\)?[^\u{0}-\u{1F}"<>\|:\*\?/]+\.[a-zA-Z]{3,4}$
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":\u{5c}"))) (re.+ (re.union (re.range "\u{0}" "\u{1f}") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "/"))) (str.to_re ".") ((_ re.loop 3 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}"))))
(check-sat)
