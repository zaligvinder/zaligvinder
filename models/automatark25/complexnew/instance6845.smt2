(declare-const X String)
; /filename=[^\n]*\u{2e}pub/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pub/i\u{a}")))))
; password\u{3B}1\u{3B}OptixOwner\u{3A}Barwww\u{2E}accoona\u{2E}com
(assert (not (str.in_re X (str.to_re "password;1;OptixOwner:Barwww.accoona.com\u{a}"))))
(check-sat)
