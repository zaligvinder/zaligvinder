(declare-const X String)
; /filename=[^\n]*\u{2e}j2k/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".j2k/i\u{a}"))))
(check-sat)
