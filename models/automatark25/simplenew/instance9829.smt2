(declare-const X String)
; <(.|\n)*?>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re ">\x0a")))))
(check-sat)
