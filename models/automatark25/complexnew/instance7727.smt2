(declare-const X String)
; ^[/]*([^/\\ \:\*\?"\<\>\|\.][^/\\\:\*\?\"\<\>\|]{0,63}/)*[^/\\ \:\*\?"\<\>\|\.][^/\\\:\*\?\"\<\>\|]{0,63}$
(assert (str.in.re X (re.++ (re.* (str.to.re "/")) (re.* (re.++ (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re " ") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|") (str.to.re ".")) ((_ re.loop 0 63) (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re "/"))) (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re " ") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|") (str.to.re ".")) ((_ re.loop 0 63) (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re "\x0a"))))
; /\.php\?j=1&k=[0-9](i=[0-9])?$/U
(assert (not (str.in.re X (re.++ (str.to.re "/.php?j=1&k=") (re.range "0" "9") (re.opt (re.++ (str.to.re "i=") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
(check-sat)
