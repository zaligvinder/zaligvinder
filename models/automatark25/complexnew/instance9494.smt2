(declare-const X String)
; /filename=[^\n]*\u{2e}emf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".emf/i\u{a}")))))
; \b4[0-9]\b
(assert (str.in_re X (re.++ (str.to_re "4") (re.range "0" "9") (str.to_re "\u{a}"))))
; /(A|B|AB|O)[+-]/
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "AB") (str.to_re "O")) (re.union (str.to_re "+") (str.to_re "-")) (str.to_re "/\u{a}"))))
(check-sat)
