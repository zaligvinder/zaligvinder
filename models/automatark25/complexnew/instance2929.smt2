(declare-const X String)
; /\.php\?b=[A-F0-9]+&v=1\./U
(assert (not (str.in.re X (re.++ (str.to.re "/.php?b=") (re.+ (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&v=1./U\x0a")))))
; /\x253D$/Im
(assert (str.in.re X (str.to.re "/%3D/Im\x0a")))
; toolbar\.wishbone\.com\s+GET.*toowww\.123mania\.com\x2EphpLibrary
(assert (str.in.re X (re.++ (str.to.re "toolbar.wishbone.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GET") (re.* re.allchar) (str.to.re "toowww.123mania.com.phpLibrary\x0a"))))
(check-sat)
