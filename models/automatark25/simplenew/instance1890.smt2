(declare-const X String)
; ^(.*?)([^/\\]*?)(\.[^/\\.]*)?$
(assert (str.in.re X (re.++ (re.* re.allchar) (re.* (re.union (str.to.re "/") (str.to.re "\x5c"))) (re.opt (re.++ (str.to.re ".") (re.* (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re "."))))) (str.to.re "\x0a"))))
(check-sat)
