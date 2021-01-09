(declare-const X String)
; ^([30|36|38]{2})([0-9]{12})$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "3") (str.to.re "0") (str.to.re "|") (str.to.re "6") (str.to.re "8"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2fblackmuscats?\x3f\d/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//blackmuscat") (re.opt (str.to.re "s")) (str.to.re "?") (re.range "0" "9") (str.to.re "/Ui\x0a")))))
; User-Agent\x3aUser-Agent\x3AReport\x2EHost\x3Afhfksjzsfu\x2fahm\.uqs
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:Report.Host:fhfksjzsfu/ahm.uqs\x0a")))
(check-sat)
