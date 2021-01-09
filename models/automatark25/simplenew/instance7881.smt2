(declare-const X String)
; ^([a-zA-Z]:\\)?[^\x00-\x1F"<>\|:\*\?/]+\.[a-zA-Z]{3,4}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":\x5c"))) (re.+ (re.union (re.range "\x00" "\x1f") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "/"))) (str.to.re ".") ((_ re.loop 3 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
(check-sat)
