(declare-const X String)
; /filename=[^\n]*\u{2e}pkp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pkp/i\u{a}"))))
; Login\d+dll\u{3F}HOST\u{3A}contains
(assert (str.in_re X (re.++ (str.to_re "Login") (re.+ (re.range "0" "9")) (str.to_re "dll?HOST:contains\u{a}"))))
(check-sat)
