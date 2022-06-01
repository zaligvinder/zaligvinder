(declare-const X String)
; A + B
(assert (not (str.in_re X (re.++ (str.to_re "A") (re.+ (str.to_re " ")) (str.to_re " B\u{a}")))))
(check-sat)
