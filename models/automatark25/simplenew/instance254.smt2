(declare-const X String)
; (< *balise[ *>|:(.|\n)*>| (.|\n)*>](.|\n)*</balise *>)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a<") (re.* (str.to.re " ")) (str.to.re "balise") (re.union (str.to.re " ") (str.to.re "*") (str.to.re ">") (str.to.re "|") (str.to.re ":") (str.to.re "(") (str.to.re ".") (str.to.re "\x0a") (str.to.re ")")) (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "</balise") (re.* (str.to.re " ")) (str.to.re ">")))))
(check-sat)
