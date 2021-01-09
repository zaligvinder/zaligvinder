(declare-const X String)
; are\d+Version\d+JMailBoxHostGENERAL_PARAM2
(assert (str.in.re X (re.++ (str.to.re "are") (re.+ (re.range "0" "9")) (str.to.re "Version") (re.+ (re.range "0" "9")) (str.to.re "JMailBoxHostGENERAL_PARAM2\x0a"))))
; ^\d+\/?\d*$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re "/")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; User-Agent\x3aUser-Agent\x3AReport\x2EHost\x3Afhfksjzsfu\x2fahm\.uqs
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:Report.Host:fhfksjzsfu/ahm.uqs\x0a"))))
(check-sat)
