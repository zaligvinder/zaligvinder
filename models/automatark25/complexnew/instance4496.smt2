(declare-const X String)
; weatherSubject\x3aX-Mailer\x3aTOOLBAR\x2Fnewsurfer4\x2F
(assert (str.in.re X (str.to.re "weatherSubject:X-Mailer:\x13TOOLBAR/newsurfer4/\x0a")))
; [a-zA-Z_:][a-zA-Z0-9_,\.\-]*?
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re ":")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re ",") (str.to.re ".") (str.to.re "-"))) (str.to.re "\x0a")))))
; /^(\d+\*)+(\d)+$/gm
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.++ (re.+ (re.range "0" "9")) (str.to.re "*"))) (re.+ (re.range "0" "9")) (str.to.re "/gm\x0a")))))
(check-sat)
