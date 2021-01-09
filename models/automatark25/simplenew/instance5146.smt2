(declare-const X String)
; Points\s+newszzzvmkituktgr\x2fetieWatcherUser-Agent\x3Awww\x2Emyarmory\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Points") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "newszzzvmkituktgr/etieWatcherUser-Agent:www.myarmory.com\x0a"))))
(check-sat)
