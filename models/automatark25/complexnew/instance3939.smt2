(declare-const X String)
; ^([0-9]|[1-9][0-9]|[1-9][0-9][0-9])$
(assert (not (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /\x2e(jpg|png|gif)\x3fs?v.*?&tq=g[A-Z0-9]{2}/U
(assert (str.in.re X (re.++ (str.to.re "/.") (re.union (str.to.re "jpg") (str.to.re "png") (str.to.re "gif")) (str.to.re "?") (re.opt (str.to.re "s")) (str.to.re "v") (re.* re.allchar) (str.to.re "&tq=g") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; ((8|\+7)-?)?\(?\d{3,5}\)?-?\d{1}-?\d{1}-?\d{1}-?\d{1}-?\d{1}((-?\d{1})?-?\d{1})?
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "8") (str.to.re "+7")) (re.opt (str.to.re "-")))) (re.opt (str.to.re "(")) ((_ re.loop 3 5) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
