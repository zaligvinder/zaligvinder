(declare-const X String)
; /filename=[^\n]*\u{2e}dws/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dws/i\u{a}"))))
; /filename=[^\n]*\u{2e}pjpeg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pjpeg/i\u{a}")))))
(check-sat)
