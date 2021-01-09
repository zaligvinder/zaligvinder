(declare-const X String)
; ^(100(\.0{0,2}?)?$|([1-9]|[1-9][0-9])(\.\d{1,2})?)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (str.to.re "0"))))) (re.++ (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.range "1" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
; \x2Fta\x2FNEWS\x2Fpassword\x3B1\x3BOptix
(assert (not (str.in.re X (str.to.re "/ta/NEWS/password;1;Optix\x0a"))))
; ^([1-zA-Z0-1@.\s]{1,255})$
(assert (str.in.re X (re.++ ((_ re.loop 1 255) (re.union (re.range "1" "z") (re.range "A" "Z") (re.range "0" "1") (str.to.re "@") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
