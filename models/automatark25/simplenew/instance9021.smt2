(declare-const X String)
; href(\s*)=(\s*)('|")http:\/\/(.*)(("|'))
(assert (str.in.re X (re.++ (str.to.re "href") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "'") (str.to.re "\x22")) (str.to.re "http://") (re.* re.allchar) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "\x0a"))))
(check-sat)
