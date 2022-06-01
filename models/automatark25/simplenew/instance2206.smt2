(declare-const X String)
; http://[^/]*/
(assert (str.in_re X (re.++ (str.to_re "http://") (re.* (re.comp (str.to_re "/"))) (str.to_re "/\u{a}"))))
(check-sat)
