(declare-const X String)
; ^100(\.0{0,2}?)?$|^\d{0,2}(\.\d{0,2})?$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (str.to.re "0"))))) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a"))))))
; User-Agent\x3AUser-Agent\x3AHost\x3ASoftActivityYeah\!
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:Host:SoftActivity\x13Yeah!\x0a")))
; InformationAgentReferer\x3AClient
(assert (str.in.re X (str.to.re "InformationAgentReferer:Client\x0a")))
; /filename=[^\n]*\x2epfa/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfa/i\x0a")))))
; <[^>]*?>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a")))))
(check-sat)
