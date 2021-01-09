(declare-const X String)
; ^(((\\\\([^\\/:\*\?"\|<>\. ]+))|([a-zA-Z]:\\))(([^\\/:\*\?"\|<>\. ]*)([\\]*))*)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "\x5c\x5c") (re.+ (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "|") (str.to.re "<") (str.to.re ">") (str.to.re ".") (str.to.re " ")))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":\x5c"))) (re.* (re.++ (re.* (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "|") (str.to.re "<") (str.to.re ">") (str.to.re ".") (str.to.re " "))) (re.* (str.to.re "\x5c"))))))))
(check-sat)
