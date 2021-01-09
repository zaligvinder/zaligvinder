(declare-const X String)
; <a\s*href=(.*?)[\s|>]
(assert (str.in.re X (re.++ (str.to.re "<a") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "href=") (re.* re.allchar) (re.union (str.to.re "|") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a"))))
(check-sat)
