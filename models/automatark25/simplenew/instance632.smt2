(declare-const X String)
; <img([^>]*[^/])>
(assert (str.in_re X (re.++ (str.to_re "<img>\u{a}") (re.* (re.comp (str.to_re ">"))) (re.comp (str.to_re "/")))))
(check-sat)
