(declare-const X String)
; ^(([0-1]?[0-9])|([2][0-3])):([0-5]?[0-9])(:([0-5]?[0-9]))?$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.opt (re.++ (str.to.re ":") (re.opt (re.range "0" "5")) (re.range "0" "9"))) (str.to.re "\x0a") (re.opt (re.range "0" "5")) (re.range "0" "9")))))
; /\x2edoc([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.doc") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
