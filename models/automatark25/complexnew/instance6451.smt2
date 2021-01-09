(declare-const X String)
; \x2Fta\x2FNEWS\x2Fpassword\x3B1\x3BOptix
(assert (str.in.re X (str.to.re "/ta/NEWS/password;1;Optix\x0a")))
; [a-z0-9]{1,11}
(assert (str.in.re X (re.++ ((_ re.loop 1 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; /^POST\x20\x2fg[ao]lfstream\x26/
(assert (str.in.re X (re.++ (str.to.re "/POST /g") (re.union (str.to.re "a") (str.to.re "o")) (str.to.re "lfstream&/\x0a"))))
; ^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))))))
(check-sat)
