(declare-const X String)
; ^[F][O][\s]?[0-9]{3}$
(assert (str.in.re X (re.++ (str.to.re "FO") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
