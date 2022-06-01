(declare-const X String)
; /filename=[^\n]*\u{2e}wm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wm/i\u{a}"))))
(check-sat)
