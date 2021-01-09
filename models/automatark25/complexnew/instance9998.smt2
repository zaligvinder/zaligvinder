(declare-const X String)
; /filename=[^\n]*\x2emka/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mka/i\x0a")))))
; zzzvmkituktgr\x2fetie\sHost\x3ASoftActivityYeah\!whenu\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "zzzvmkituktgr/etie") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:SoftActivity\x13Yeah!whenu.com\x1b\x0a")))))
; /\x2elzh([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.lzh") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
