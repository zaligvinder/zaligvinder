(declare-const X String)
; HXLogOnlyanHost\x3AspasHost\x3A
(assert (str.in.re X (str.to.re "HXLogOnlyanHost:spasHost:\x0a")))
; logs\d+X-Mailer\x3a\d+url=enews\x2Eearthlink\x2Enet
(assert (str.in.re X (re.++ (str.to.re "logs") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13") (re.+ (re.range "0" "9")) (str.to.re "url=enews.earthlink.net\x0a"))))
; Host\x3A\s+twfofrfzlugq\x2feve\.qd\s+\x2Ftoolbar\x2Fsupremetb
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "twfofrfzlugq/eve.qd") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/supremetb\x0a")))))
; ^#?(([a-fA-F0-9]{3}){1,2})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "#")) ((_ re.loop 1 2) ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2epls/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pls/i\x0a")))))
(check-sat)
