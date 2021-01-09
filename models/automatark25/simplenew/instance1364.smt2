(declare-const X String)
; X-OSSproxy\x3a\dMicrosoft\x2APORT3\x2AProLive\+Version\+3A
(assert (not (str.in.re X (re.++ (str.to.re "X-OSSproxy:") (re.range "0" "9") (str.to.re "Microsoft*PORT3*ProLive+Version+3A\x0a")))))
(check-sat)
