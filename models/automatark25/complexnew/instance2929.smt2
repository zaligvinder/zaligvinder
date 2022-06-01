(declare-const X String)
; /\.php\?b=[A-F0-9]+&v=1\./U
(assert (not (str.in_re X (re.++ (str.to_re "/.php?b=") (re.+ (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&v=1./U\u{a}")))))
; /\u{25}3D$/Im
(assert (str.in_re X (str.to_re "/%3D/Im\u{a}")))
; toolbar\.wishbone\.com\s+GET.*toowww\.123mania\.com\u{2E}phpLibrary
(assert (str.in_re X (re.++ (str.to_re "toolbar.wishbone.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "GET") (re.* re.allchar) (str.to_re "toowww.123mania.com.phpLibrary\u{a}"))))
(check-sat)
