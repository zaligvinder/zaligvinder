(declare-const X String)
; ^.+@[^\.].*\.[a-z]{2,}$
(assert (str.in_re X (re.++ (re.+ re.allchar) (str.to_re "@") (re.comp (str.to_re ".")) (re.* re.allchar) (str.to_re ".\u{a}") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z")))))
; /filename=[^\n]*\u{2e}m4r/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m4r/i\u{a}"))))
(check-sat)
