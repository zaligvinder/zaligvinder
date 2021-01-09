(declare-const X String)
; ([A-Z]:\\[^/:\*;\/\:\?<>\|]+)|(\\{2}[^/:\*;\/\:\?<>\|]+)
(assert (str.in.re X (re.union (re.++ (re.range "A" "Z") (str.to.re ":\x5c") (re.+ (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re ";") (str.to.re "?") (str.to.re "<") (str.to.re ">") (str.to.re "|")))) (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (str.to.re "\x5c")) (re.+ (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re ";") (str.to.re "?") (str.to.re "<") (str.to.re ">") (str.to.re "|")))))))
(check-sat)
