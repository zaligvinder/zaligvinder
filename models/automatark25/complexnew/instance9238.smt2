(declare-const X String)
; IP\d+horoscopefowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (re.++ (str.to.re "IP") (re.+ (re.range "0" "9")) (str.to.re "horoscopefowclxccdxn/uxwn.ddy\x0a"))))
; /filename=[^\n]*\x2ef4v/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4v/i\x0a"))))
; \x2Ehtml\s+IDENTIFY\s+\x2Fbar_pl\x2Ffav\.fcgiwwwUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re ".html") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "IDENTIFY") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/bar_pl/fav.fcgiwwwUser-Agent:\x0a"))))
(check-sat)
