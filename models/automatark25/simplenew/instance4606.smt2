(declare-const X String)
; <!--[\s\S]*?--[ \t\n\r]*>
(assert (str.in.re X (re.++ (str.to.re "<!--") (re.* (re.union (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "--") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re ">\x0a"))))
(check-sat)
