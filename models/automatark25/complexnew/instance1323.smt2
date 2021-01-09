(declare-const X String)
; /\x3Fp\x3D[0-9]{1,10}\x26d\x3D/U
(assert (str.in.re X (re.++ (str.to.re "/?p=") ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re "&d=/U\x0a"))))
; zzzvmkituktgr\x2fetie\sHost\x3ASoftActivityYeah\!whenu\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "zzzvmkituktgr/etie") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:SoftActivity\x13Yeah!whenu.com\x1b\x0a"))))
; ad\x2Esearchsquire\x2Ecom[^\n\r]*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "ad.searchsquire.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
(check-sat)
