(declare-const X String)
; ^[12345]$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5")) (str.to_re "\u{a}")))))
; /filename=[^\n]*\u{2e}fdf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".fdf/i\u{a}"))))
(check-sat)
