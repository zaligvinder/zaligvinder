(declare-const X String)
; name.matches("a-z")
(assert (not (str.in.re X (re.++ (str.to.re "name") re.allchar (str.to.re "matches\x22a-z\x22\x0a")))))
(check-sat)
