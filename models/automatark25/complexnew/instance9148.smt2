(declare-const X String)
; /filename=[^\n]*\u{2e}f4a/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".f4a/i\u{a}")))))
; /filename=[^\n]*\u{2e}pmd/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pmd/i\u{a}")))))
; /filename=[^\n]*\u{2e}jnlp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jnlp/i\u{a}"))))
(check-sat)
