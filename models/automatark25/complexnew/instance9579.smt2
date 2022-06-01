(declare-const X String)
; /filename=[^\n]*\u{2e}sami/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sami/i\u{a}")))))
; /filename=[^\n]*\u{2e}ani/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ani/i\u{a}")))))
; ^([A-Z0-9]{5})$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)
