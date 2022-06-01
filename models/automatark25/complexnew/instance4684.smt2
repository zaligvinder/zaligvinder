(declare-const X String)
; ppcdomain\u{2E}co\u{2E}uk.*Spy\-Locked\s+Exploiter\w+\u{2F}r\u{2F}keys\u{2F}keysS\u{3a}Users\u{5c}Iterenet
(assert (str.in_re X (re.++ (str.to_re "ppcdomain.co.uk") (re.* re.allchar) (str.to_re "Spy-Locked") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Exploiter") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/r/keys/keysS:Users\u{5c}Iterenet\u{a}"))))
; /filename=[^\n]*\u{2e}mny/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mny/i\u{a}"))))
(check-sat)
