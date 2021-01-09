(declare-const X String)
; <\/?(tag1|tag2)[^>]*\/?>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.opt (str.to.re "/")) (re.* (re.comp (str.to.re ">"))) (re.opt (str.to.re "/")) (str.to.re ">\x0atag") (re.union (str.to.re "1") (str.to.re "2"))))))
(check-sat)
