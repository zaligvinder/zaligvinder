(declare-const X String)
; /(bot|spider|crawler|google)/
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "bot") (str.to_re "spider") (str.to_re "crawler") (str.to_re "google")) (str.to_re "/\u{a}"))))
(check-sat)
