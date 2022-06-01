(declare-const X String)
; ^[0-9,+,(), ,]{1,}(,[0-9]+){0,}$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re ",") (str.to_re "+") (str.to_re "(") (str.to_re ")") (str.to_re " "))) (re.* (re.++ (str.to_re ",") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
