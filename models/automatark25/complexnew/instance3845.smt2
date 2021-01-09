(declare-const X String)
; /^\/[a-z0-9]{32}\/[a-z0-9]{32}\.jnlp/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jnlp/U\x0a"))))
; (\+91(-)?|91(-)?|0(-)?)?(9)[0-9]{9}
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "+91") (re.opt (str.to.re "-"))) (re.++ (str.to.re "91") (re.opt (str.to.re "-"))) (re.++ (str.to.re "0") (re.opt (str.to.re "-"))))) (str.to.re "9") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
; (ISBN[-]*(1[03])*[ ]*(: ){0,1})*(([0-9Xx][- ]*){13}|([0-9Xx][- ]*){10})
(assert (not (str.in.re X (re.++ (re.* (re.++ (str.to.re "ISBN") (re.* (str.to.re "-")) (re.* (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "3")))) (re.* (str.to.re " ")) (re.opt (str.to.re ": ")))) (re.union ((_ re.loop 13 13) (re.++ (re.union (re.range "0" "9") (str.to.re "X") (str.to.re "x")) (re.* (re.union (str.to.re "-") (str.to.re " "))))) ((_ re.loop 10 10) (re.++ (re.union (re.range "0" "9") (str.to.re "X") (str.to.re "x")) (re.* (re.union (str.to.re "-") (str.to.re " ")))))) (str.to.re "\x0a")))))
; mPOPUser-Agent\x3AgotS\x3aUsers\x5cPORT\x3DHXLogOnlyMGS-Internal-Web-Manager
(assert (str.in.re X (str.to.re "mPOPUser-Agent:gotS:Users\x5cPORT=HXLogOnlyMGS-Internal-Web-Manager\x0a")))
; ^(0?[1-9]|1[012])/([012][0-9]|[1-9]|3[01])/([12][0-9]{3})$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (str.to.re "/") (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.range "1" "9") (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "/\x0a") (re.union (str.to.re "1") (str.to.re "2")) ((_ re.loop 3 3) (re.range "0" "9")))))
(check-sat)
