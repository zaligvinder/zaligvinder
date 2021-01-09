(declare-const X String)
; <([^<>\s]*)(\s[^<>]*)?>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re "<") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.* (re.union (str.to.re "<") (str.to.re ">"))))) (str.to.re ">\x0a"))))
(check-sat)
