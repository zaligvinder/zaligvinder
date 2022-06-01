(declare-const X String)
; mPOPUser-Agent\u{3A}gotS\u{3a}Users\u{5c}PORT\u{3D}HXLogOnlyMGS-Internal-Web-Manager
(assert (str.in_re X (str.to_re "mPOPUser-Agent:gotS:Users\u{5c}PORT=HXLogOnlyMGS-Internal-Web-Manager\u{a}")))
(check-sat)
