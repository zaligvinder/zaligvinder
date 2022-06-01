(declare-const X String)
; /filename=[^\n]*\u{2e}sln/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sln/i\u{a}")))))
(check-sat)
