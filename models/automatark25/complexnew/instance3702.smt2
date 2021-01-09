(declare-const X String)
; Host\x3A[^\n\r]*Travel[^\n\r]*From\x3Awww\x2EZSearchResults\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Travel") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "From:www.ZSearchResults.com\x13\x0a"))))
; snprtz\x7Cdialno\s+3Awww\x2eurlblaze\x2enetulmxct\x2fmqoyc
(assert (not (str.in.re X (re.++ (str.to.re "snprtz|dialno") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "3Awww.urlblaze.netulmxct/mqoyc\x0a")))))
; /filename=[^\n]*\x2eses/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ses/i\x0a")))))
; User-Agent\x3AX-Mailer\x3aHWAEHost\x3AHost\x3AHost\x3aStableUser-Agent\x3AUser-Agent\x3Awww\x2enavisearch\x2enet
(assert (not (str.in.re X (str.to.re "User-Agent:X-Mailer:\x13HWAEHost:Host:Host:StableUser-Agent:User-Agent:www.navisearch.net\x0a"))))
(check-sat)
