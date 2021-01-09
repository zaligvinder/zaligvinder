(declare-const X String)
; [ ]*=[ ]*[\"]*cid[ ]*:[ ]*([^\"<> ]+)
(assert (str.in.re X (re.++ (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (re.* (str.to.re "\x22")) (str.to.re "cid") (re.* (str.to.re " ")) (str.to.re ":") (re.* (str.to.re " ")) (re.+ (re.union (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re " "))) (str.to.re "\x0a"))))
(check-sat)
