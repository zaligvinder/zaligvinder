(declare-const X String)
; ^[^<>&~\s^%A-Za-z\\][^A-Za-z%^\\<>]{1,25}$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "<") (str.to.re ">") (str.to.re "&") (str.to.re "~") (str.to.re "^") (str.to.re "%") (re.range "A" "Z") (re.range "a" "z") (str.to.re "\x5c") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 1 25) (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re "%") (str.to.re "^") (str.to.re "\x5c") (str.to.re "<") (str.to.re ">"))) (str.to.re "\x0a")))))
(check-sat)
