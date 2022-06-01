(declare-const X String)
; /^\/\?q=[^&]*##1$/U
(assert (not (str.in_re X (re.++ (str.to_re "//?q=") (re.* (re.comp (str.to_re "&"))) (str.to_re "##1/U\u{a}")))))
(check-sat)
