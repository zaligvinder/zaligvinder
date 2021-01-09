(declare-const X String)
; User-Agent\x3aUser-Agent\x3AReport\x2EHost\x3Afhfksjzsfu\x2fahm\.uqs
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:Report.Host:fhfksjzsfu/ahm.uqs\x0a"))))
; ((\d{2})|(\d))\/((\d{2})|(\d))\/((\d{4})|(\d{2}))
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.range "0" "9")) (str.to.re "/") (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.range "0" "9")) (str.to.re "/") (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^(((\(\d{3}\)|\d{3})( |-|\.))|(\(\d{3}\)|\d{3}))?\d{3}( |-|\.)?\d{4}(( |-|\.)?([Ee]xt|[Xx])[.]?( |-|\.)?\d{4})?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")")) ((_ re.loop 3 3) (re.range "0" "9")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) (re.union (re.++ (re.union (str.to.re "E") (str.to.re "e")) (str.to.re "xt")) (str.to.re "X") (str.to.re "x")) (re.opt (str.to.re ".")) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^[1-9]0?$
(assert (str.in.re X (re.++ (re.range "1" "9") (re.opt (str.to.re "0")) (str.to.re "\x0a"))))
(check-sat)
