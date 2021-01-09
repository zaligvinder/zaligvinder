(declare-const X String)
; loomcompany\x2EcomBasedURLS\swww\.fast-finder\.com
(assert (not (str.in.re X (re.++ (str.to.re "loomcompany.comBasedURLS") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com\x0a")))))
; /\x2efon([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.fon") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
