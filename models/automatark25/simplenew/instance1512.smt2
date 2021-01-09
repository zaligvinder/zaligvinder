(declare-const X String)
; ((<body)|(<BODY))([^>]*)>
(assert (str.in.re X (re.++ (re.union (str.to.re "<body") (str.to.re "<BODY")) (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
(check-sat)
