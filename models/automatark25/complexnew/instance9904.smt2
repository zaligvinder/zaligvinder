(declare-const X String)
; /(sIda\/sId|urua\/uru)[abcd]\.classPK/ims
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "sIda/sId") (str.to.re "urua/uru")) (re.union (str.to.re "a") (str.to.re "b") (str.to.re "c") (str.to.re "d")) (str.to.re ".classPK/ims\x0a"))))
; Server.*Host\x3a.*SpyAgentRootHost\x3A
(assert (str.in.re X (re.++ (str.to.re "Server") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "SpyAgentRootHost:\x0a"))))
; ^\$(\d{1,3}(\,\d{3})*|(\d+))(\.\d{2})?$
(assert (str.in.re X (re.++ (str.to.re "$") (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
