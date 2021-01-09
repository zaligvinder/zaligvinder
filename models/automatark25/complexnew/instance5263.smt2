(declare-const X String)
; SAccsearchresltOnline100013Agentsvr\x5E\x5EMerlin
(assert (not (str.in.re X (str.to.re "SAccsearchresltOnline100013Agentsvr^^Merlin\x13\x0a"))))
; ^(\s*\d\s*){11}$
(assert (str.in.re X (re.++ ((_ re.loop 11 11) (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "\x0a"))))
; \x3BCIA\s+is\s+User-Agent\x3Acid=tb\x2eCookie\x3A
(assert (str.in.re X (re.++ (str.to.re ";CIA") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "is") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:cid=tb.Cookie:\x0a"))))
; tv\x2E180solutions\x2EcomGirlFriendHost\x3A
(assert (str.in.re X (str.to.re "tv.180solutions.comGirlFriendHost:\x0a")))
; (^[0-9]{0,10}$)
(assert (not (str.in.re X (re.++ ((_ re.loop 0 10) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
