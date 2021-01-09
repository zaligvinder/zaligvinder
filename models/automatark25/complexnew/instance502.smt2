(declare-const X String)
; weatherSubject\x3aX-Mailer\x3aTOOLBAR\x2Fnewsurfer4\x2F
(assert (str.in.re X (str.to.re "weatherSubject:X-Mailer:\x13TOOLBAR/newsurfer4/\x0a")))
; ^\d+\/?\d*$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re "/")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
