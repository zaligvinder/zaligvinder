(declare-const X String)
; mPOPUser-Agent\x3AgotS\x3aUsers\x5cPORT\x3DHXLogOnlyMGS-Internal-Web-Manager
(assert (str.in.re X (str.to.re "mPOPUser-Agent:gotS:Users\x5cPORT=HXLogOnlyMGS-Internal-Web-Manager\x0a")))
(check-sat)
