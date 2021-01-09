(declare-const X String)
; 1?[ \.\-\+]?[(]?([0-9]{3})?[)]?[ \.\-\+]?[0-9]{3}[ \.\-\+]?[0-9]{4}
(assert (str.in.re X (re.++ (re.opt (str.to.re "1")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-") (str.to.re "+"))) (re.opt (str.to.re "(")) (re.opt ((_ re.loop 3 3) (re.range "0" "9"))) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-") (str.to.re "+"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-") (str.to.re "+"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; weatherSubject\x3aX-Mailer\x3aTOOLBAR\x2Fnewsurfer4\x2F
(assert (str.in.re X (str.to.re "weatherSubject:X-Mailer:\x13TOOLBAR/newsurfer4/\x0a")))
; /\x2eani([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ani") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; [\x80-\xFF]
(assert (not (str.in.re X (re.++ (re.range "\x80" "\xff") (str.to.re "\x0a")))))
(check-sat)
