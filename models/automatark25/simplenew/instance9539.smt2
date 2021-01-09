(declare-const X String)
; /\x2eaif[cf]?([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.aif") (re.opt (re.union (str.to.re "c") (str.to.re "f"))) (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
