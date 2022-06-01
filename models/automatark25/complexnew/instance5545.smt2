(declare-const X String)
; \\$\\d+[.]?\\d*
(assert (not (str.in_re X (re.++ (str.to_re "\u{5c}\u{5c}") (re.+ (str.to_re "d")) (re.opt (str.to_re ".")) (str.to_re "\u{5c}") (re.* (str.to_re "d")) (str.to_re "\u{a}")))))
; /filename=[^\n]*\u{2e}ppsx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ppsx/i\u{a}"))))
; /filename=[^\n]*\u{2e}pdf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pdf/i\u{a}"))))
(check-sat)
