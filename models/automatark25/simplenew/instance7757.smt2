(declare-const X String)
; ^((\\){2})(([A-Za-z ',.;]+)(\\?)([A-Za-z ',.;]\\?)*)$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (str.to.re "\x5c")) (str.to.re "\x0a") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re " ") (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re ";"))) (re.opt (str.to.re "\x5c")) (re.* (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re " ") (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re ";")) (re.opt (str.to.re "\x5c"))))))))
(check-sat)
