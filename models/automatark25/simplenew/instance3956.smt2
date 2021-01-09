(declare-const X String)
; /^USER\x20(XP|98|95|NT|ME|WIN|2K3)\x2d\d+\x20\x2a\x20\x30\x20\x3a/mi
(assert (str.in.re X (re.++ (str.to.re "/USER ") (re.union (str.to.re "XP") (str.to.re "98") (str.to.re "95") (str.to.re "NT") (str.to.re "ME") (str.to.re "WIN") (str.to.re "2K3")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " * 0 :/mi\x0a"))))
(check-sat)
