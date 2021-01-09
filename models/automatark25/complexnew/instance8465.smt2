(declare-const X String)
; name.matches("a-z")
(assert (str.in.re X (re.++ (str.to.re "name") re.allchar (str.to.re "matches\x22a-z\x22\x0a"))))
; ^([0-9]{5})([\-]{1}[0-9]{4})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
