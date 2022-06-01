(declare-const X String)
; (\$\s*[\d,]+\.\d{2})\b
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}$") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "0" "9") (str.to_re ","))) (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))
(check-sat)
