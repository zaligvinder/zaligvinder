(declare-const X String)
; (t|T)(o|O)\s\d{4}($|\D)
(assert (str.in.re X (re.++ (re.union (str.to.re "t") (str.to.re "T")) (re.union (str.to.re "o") (str.to.re "O")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 4 4) (re.range "0" "9")) (re.comp (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
