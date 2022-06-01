(declare-const X String)
; ^\d$
(assert (str.in_re X (re.++ (re.range "0" "9") (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}csv/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".csv/i\u{a}"))))
(check-sat)
