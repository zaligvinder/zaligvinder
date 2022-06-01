(declare-const X String)
; /filename=[^\n]*\u{2e}mid/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mid/i\u{a}"))))
; emailFrom\u{3A}User-Agent\u{3A}User-Agent\u{3A}select\u{2F}Get
(assert (not (str.in_re X (str.to_re "emailFrom:User-Agent:User-Agent:select/Get\u{a}"))))
; ^[a-zA-Z]+(\.[a-zA-Z]+)+$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.+ (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to_re "\u{a}"))))
(check-sat)
