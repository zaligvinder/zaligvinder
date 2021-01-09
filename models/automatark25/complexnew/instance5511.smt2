(declare-const X String)
; Host\x3A\s+User-Agent\x3A.*v\x3BApofisToolbarUser
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "v;ApofisToolbarUser\x0a")))))
; dialupvpn\x5fpwd\d\<title\>Actual\sSpywareStriketvlistingsUser-Agent\x3Auuid=aadserverfowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (re.++ (str.to.re "dialupvpn_pwd") (re.range "0" "9") (str.to.re "<title>Actual") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "SpywareStriketvlistingsUser-Agent:uuid=aadserverfowclxccdxn/uxwn.ddy\x0a"))))
; (^[a-zA-Z][a-zA-Z0-9_]*)|(^[_][a-zA-Z0-9_]+)
(assert (not (str.in.re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_")))) (re.++ (str.to.re "\x0a_") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))))))))
; &( )
(assert (str.in.re X (str.to.re "& \x0a")))
(check-sat)
