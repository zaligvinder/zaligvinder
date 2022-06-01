(declare-const X String)
; /filename=[^\n]*\u{2e}zip/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".zip/i\u{a}")))))
; ^[a-zA-Z][a-zA-Z\-' ]*[a-zA-Z ]$
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "-") (str.to_re "'") (str.to_re " "))) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re " ")) (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}eps/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".eps/i\u{a}"))))
(check-sat)
