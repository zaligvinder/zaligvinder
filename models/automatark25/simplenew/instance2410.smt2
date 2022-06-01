(declare-const X String)
; ^.+@[^\.].+\.[a-z]{2,}(\.[a-z]{2,}$|$)
(assert (not (str.in_re X (re.++ (re.+ re.allchar) (str.to_re "@") (re.comp (str.to_re ".")) (re.+ re.allchar) (str.to_re ".\u{a}") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z")) (str.to_re ".") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z"))))))
(check-sat)
