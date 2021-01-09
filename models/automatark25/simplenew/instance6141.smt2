(declare-const X String)
; Login\d+dll\x3FHOST\x3Acontains
(assert (str.in.re X (re.++ (str.to.re "Login") (re.+ (re.range "0" "9")) (str.to.re "dll?HOST:contains\x0a"))))
(check-sat)
