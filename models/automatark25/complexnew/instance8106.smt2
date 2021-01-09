(declare-const X String)
; /\x2ertf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rtf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Word\s+User-Agent\x3awww\x2Esogou\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Word") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:www.sogou.com\x0a"))))
(check-sat)
