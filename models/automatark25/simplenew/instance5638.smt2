(declare-const X String)
; ^\S{2}\d{7}$
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
