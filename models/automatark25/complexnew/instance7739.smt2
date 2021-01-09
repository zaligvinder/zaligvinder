(declare-const X String)
; zzzvmkituktgr\x2fetie\s+WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in.re X (re.++ (str.to.re "zzzvmkituktgr/etie") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WindowsAttachedPalas.starware.com/dp/search?x=\x0a")))))
; www\x2Ecameup\x2Ecom\s+spyblini\x2Eini
(assert (str.in.re X (re.++ (str.to.re "www.cameup.com\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblini.ini\x0a"))))
(check-sat)
