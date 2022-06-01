(declare-const X String)
; ^([A-Za-z0-9]\s?)+([,]\s?([A-Za-z0-9]\s?)+)*$
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (re.* (re.++ (str.to_re ",") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))) (str.to_re "\u{a}")))))
; ^([1-9]+)?[02468]$
(assert (str.in_re X (re.++ (re.opt (re.+ (re.range "1" "9"))) (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (str.to_re "\u{a}"))))
(check-sat)
