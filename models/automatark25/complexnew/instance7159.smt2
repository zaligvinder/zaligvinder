(declare-const X String)
; (^\d{5}$)|(^\d{5}-\d{4}$)
(assert (str.in.re X (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))))))
; ^[-+]?\d*\.?\d*$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; <img[^>]*src=\"?([^\"]*)\"?([^>]*alt=\"?([^\"]*)\"?)?[^>]*>
(assert (str.in.re X (re.++ (str.to.re "<img") (re.* (re.comp (str.to.re ">"))) (str.to.re "src=") (re.opt (str.to.re "\x22")) (re.* (re.comp (str.to.re "\x22"))) (re.opt (str.to.re "\x22")) (re.opt (re.++ (re.* (re.comp (str.to.re ">"))) (str.to.re "alt=") (re.opt (str.to.re "\x22")) (re.* (re.comp (str.to.re "\x22"))) (re.opt (str.to.re "\x22")))) (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
; ^\d{5}-\d{4}$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^([A-Z]{2}?(\d{7}))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 7 7) (re.range "0" "9")))))
(check-sat)
