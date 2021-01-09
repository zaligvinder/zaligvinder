(declare-const X String)
; /\x2eogg([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ogg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; filename=\x22\s+www\x2Epeer2mail\x2Ecom.*LOG
(assert (not (str.in.re X (re.++ (str.to.re "filename=\x22") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com") (re.* re.allchar) (str.to.re "LOG\x0a")))))
; serverUSER-AttachedReferer\x3AyouPointsUser-Agent\x3AHost\x3a
(assert (not (str.in.re X (str.to.re "serverUSER-AttachedReferer:youPointsUser-Agent:Host:\x0a"))))
(check-sat)
