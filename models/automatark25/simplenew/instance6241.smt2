(declare-const X String)
; <[^>]*name[\s]*=[\s]*"?[^\w_]*"?[^>]*>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.comp (str.to.re ">"))) (str.to.re "name") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "\x22")) (re.* (re.union (str.to.re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re "\x22")) (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
(check-sat)
