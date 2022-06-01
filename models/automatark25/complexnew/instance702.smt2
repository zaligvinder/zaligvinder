(declare-const X String)
; ^[89][0-9]{9}
(assert (str.in_re X (re.++ (re.union (str.to_re "8") (str.to_re "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^\d{5}((-|\s)?\d{4})?$
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}mkv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mkv/i\u{a}")))))
(check-sat)
