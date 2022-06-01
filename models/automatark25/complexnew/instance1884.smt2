(declare-const X String)
; (([\w-]+://?|www[.])[^\s()<>]+)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ":/") (re.opt (str.to_re "/"))) (str.to_re "www.")) (re.+ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "<") (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))
; A + B
(assert (str.in_re X (re.++ (str.to_re "A") (re.+ (str.to_re " ")) (str.to_re " B\u{a}"))))
(check-sat)
