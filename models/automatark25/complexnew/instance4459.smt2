(declare-const X String)
; ^0[23489]{1}(\-)?[^0\D]{1}\d{6}$
(assert (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "8") (str.to.re "9"))) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3A\d+ver\d+sportsUBAgent
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "ver") (re.+ (re.range "0" "9")) (str.to.re "sportsUBAgent\x0a")))))
; ^[1-9]{1,2}(.5)?$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "1" "9")) (re.opt (re.++ re.allchar (str.to.re "5"))) (str.to.re "\x0a")))))
; vb\s+Host\x3ASubject\x3Aonline-casino-searcher\.com
(assert (not (str.in.re X (re.++ (str.to.re "vb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Subject:online-casino-searcher.com\x0a")))))
; /\x2ep2g([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.p2g") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
