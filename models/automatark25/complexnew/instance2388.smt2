(declare-const X String)
; /filename=[^\n]*\x2em3u/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m3u/i\x0a"))))
; \x28BDLL\x29\s+CD\x2F.*Host\x3A
(assert (str.in.re X (re.++ (str.to.re "(BDLL)\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CD/") (re.* re.allchar) (str.to.re "Host:\x0a"))))
(check-sat)
