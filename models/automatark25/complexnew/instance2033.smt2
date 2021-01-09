(declare-const X String)
; /^\x7b\x22[a-f0-9]{4}\x22\x3a\x22([a-f0-9]{32}|false)\x22,/smiP
(assert (str.in.re X (re.++ (str.to.re "/{\x22") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x22:\x22") (re.union ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "false")) (str.to.re "\x22,/smiP\x0a"))))
; e(vi?)?
(assert (not (str.in.re X (re.++ (str.to.re "e") (re.opt (re.++ (str.to.re "v") (re.opt (str.to.re "i")))) (str.to.re "\x0a")))))
(check-sat)
