(declare-const X String)
; /filename=[^\n]*\u{2e}cy3/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cy3/i\u{a}"))))
; ^\\w*$
(assert (not (str.in_re X (re.++ (str.to_re "\u{5c}") (re.* (str.to_re "w")) (str.to_re "\u{a}")))))
(check-sat)
