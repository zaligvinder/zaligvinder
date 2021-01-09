(declare-const X String)
; <[^>]*\n?.*=("|')?(.*\.jpg)("|')?.*\n?[^<]*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.comp (str.to.re ">"))) (re.opt (str.to.re "\x0a")) (re.* re.allchar) (str.to.re "=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* re.allchar) (re.opt (str.to.re "\x0a")) (re.* (re.comp (str.to.re "<"))) (str.to.re ">\x0a") (re.* re.allchar) (str.to.re ".jpg")))))
(check-sat)
