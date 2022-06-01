(declare-const X String)
; X-OSSproxy\u{3a}\dMicrosoft\u{2A}PORT3\u{2A}ProLive\+Version\+3A
(assert (not (str.in_re X (re.++ (str.to_re "X-OSSproxy:") (re.range "0" "9") (str.to_re "Microsoft*PORT3*ProLive+Version+3A\u{a}")))))
(check-sat)
