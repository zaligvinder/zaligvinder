(declare-const X String)
; ^[a-zA-Z0-9\s.\-_']+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
; .*\$AVE|\$ave.*
(assert (not (str.in_re X (re.union (re.++ (re.* re.allchar) (str.to_re "$AVE")) (re.++ (str.to_re "$ave") (re.* re.allchar) (str.to_re "\u{a}"))))))
; /filename=[^\n]*\u{2e}sami/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sami/i\u{a}")))))
(check-sat)
