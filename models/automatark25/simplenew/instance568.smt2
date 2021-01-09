(declare-const X String)
; A + B
(assert (not (str.in.re X (re.++ (str.to.re "A") (re.+ (str.to.re " ")) (str.to.re " B\x0a")))))
(check-sat)
