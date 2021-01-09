(declare-const X String)
; HXLogOnlyanHost\x3AspasHost\x3A
(assert (str.in.re X (str.to.re "HXLogOnlyanHost:spasHost:\x0a")))
(check-sat)
