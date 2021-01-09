(declare-const X String)
; <img[^>]* src=\"([^\"]*)\"[^>]*>
(assert (not (str.in.re X (re.++ (str.to.re "<img") (re.* (re.comp (str.to.re ">"))) (str.to.re " src=\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22") (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a")))))
(check-sat)
