(declare-const X String)
; <(.*?)>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* re.allchar) (str.to_re ">\u{a}"))))
; /filename=[^\n]*\u{2e}jpg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpg/i\u{a}"))))
; /^[0-9a-fA-F]+$/
(assert (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "/\u{a}"))))
(check-sat)
