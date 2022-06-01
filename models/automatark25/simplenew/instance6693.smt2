(declare-const X String)
; /filename=[^\n]*\u{2e}webm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".webm/i\u{a}"))))
(check-sat)
