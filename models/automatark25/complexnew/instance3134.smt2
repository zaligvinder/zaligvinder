(declare-const X String)
; <([^<>\s]*)(\s[^<>]*)?>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.union (str.to_re "<") (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.* (re.union (str.to_re "<") (str.to_re ">"))))) (str.to_re ">\u{a}"))))
; ^(Function|Sub)(\s+[\w]+)\([^\(\)]*\)
(assert (not (str.in_re X (re.++ (re.union (str.to_re "Function") (str.to_re "Sub")) (str.to_re "(") (re.* (re.union (str.to_re "(") (str.to_re ")"))) (str.to_re ")\u{a}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))))
(check-sat)
