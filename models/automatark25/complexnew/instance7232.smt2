(declare-const X String)
; ^(((\.\.){1}/)*|(/){1})?(([a-zA-Z0-9]*)/)*([a-zA-Z0-9]*)+([.jpg]|[.gif])+$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.* (re.++ ((_ re.loop 1 1) (str.to.re "..")) (str.to.re "/"))) ((_ re.loop 1 1) (str.to.re "/")))) (re.* (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/"))) (re.+ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.+ (re.union (str.to.re ".") (str.to.re "j") (str.to.re "p") (str.to.re "g") (str.to.re "i") (str.to.re "f"))) (str.to.re "\x0a")))))
; /\x2ejp2([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jp2") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
