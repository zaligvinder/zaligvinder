(declare-const X String)
; /filename=[^\n]*\u{2e}ht3/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ht3/i\u{a}")))))
(check-sat)
