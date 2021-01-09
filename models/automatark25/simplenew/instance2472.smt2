(declare-const X String)
; \x2Fta\x2FNEWS\x2Fpassword\x3B1\x3BOptix
(assert (not (str.in.re X (str.to.re "/ta/NEWS/password;1;Optix\x0a"))))
(check-sat)
