(declare-const X String)
; (\s+|)((\(\d{3}\) +)|(\d{3}-)|(\d{3} +))?\d{3}(-| +)\d{4}( +x\d{1,4})?(\s+|)
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.+ (str.to.re " "))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.+ (str.to.re " "))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (re.+ (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (re.+ (str.to.re " ")) (str.to.re "x") ((_ re.loop 1 4) (re.range "0" "9")))) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; X-Mailer\x3aSpyAgentRootHost\x3A
(assert (str.in.re X (str.to.re "X-Mailer:\x13SpyAgentRootHost:\x0a")))
; TM_SEARCH3Host\x3aUser-Agent\x3Amedia\x2Edxcdirect\x2Ecom
(assert (not (str.in.re X (str.to.re "TM_SEARCH3Host:User-Agent:media.dxcdirect.com\x0a"))))
(check-sat)
