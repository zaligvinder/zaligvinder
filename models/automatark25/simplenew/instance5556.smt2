(declare-const X String)
; (\_\_)(.+)(\_\_)
(assert (str.in_re X (re.++ (str.to_re "__") (re.+ re.allchar) (str.to_re "__\u{a}"))))
(check-sat)
