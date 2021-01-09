(declare-const X String)
; \<img ((src|height|width|border)=:q:Wh*)*/\>
(assert (str.in.re X (re.++ (str.to.re "<img ") (re.* (re.++ (re.union (str.to.re "src") (str.to.re "height") (str.to.re "width") (str.to.re "border")) (str.to.re "=:q:W") (re.* (str.to.re "h")))) (str.to.re "/>\x0a"))))
; /\x2f\{\x23[^\x2f{}]+?\}(\.action)?\x2f?$/miU
(assert (not (str.in.re X (re.++ (str.to.re "//{#") (re.+ (re.union (str.to.re "/") (str.to.re "{") (str.to.re "}"))) (str.to.re "}") (re.opt (str.to.re ".action")) (re.opt (str.to.re "/")) (str.to.re "/miU\x0a")))))
; /^\x2f[0-9A-F]{42}$/Um
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 42 42) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/Um\x0a")))))
(check-sat)
