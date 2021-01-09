(declare-const X String)
; searchnugget\s+User-Agent\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (re.++ (str.to.re "searchnugget\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Downloadfowclxccdxn/uxwn.ddy\x0a"))))
; /\x2ef4p([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.f4p") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
