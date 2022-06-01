(declare-const X String)
; /filename=[^\n]*\u{2e}max/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".max/i\u{a}")))))
; \u{7c}roogoo\u{7c}Testiufilfwulmfi\u{2f}riuf\.lioHeaders
(assert (not (str.in_re X (str.to_re "|roogoo|Testiufilfwulmfi/riuf.lioHeaders\u{a}"))))
(check-sat)
