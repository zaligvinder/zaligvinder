(declare-const X String)
; /\.background\s*=\s*[\x22\x27]{2}/i
(assert (not (str.in.re X (re.++ (str.to.re "/.background") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/i\x0a")))))
; /\x2eqt([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.qt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Referer\x3A\s+www\x2eproventactics\x2ecom
(assert (str.in.re X (re.++ (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.proventactics.com\x0a"))))
; vb\s+Host\x3ASubject\x3Aonline-casino-searcher\.com
(assert (str.in.re X (re.++ (str.to.re "vb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Subject:online-casino-searcher.com\x0a"))))
; ((\(\d{2}\) ?)|(\d{2}/))?\d{2}/\d{4} ([0-2][0-9]\:[0-6][0-9])
(assert (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ")") (re.opt (str.to.re " "))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "/")))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " \x0a") (re.range "0" "2") (re.range "0" "9") (str.to.re ":") (re.range "0" "6") (re.range "0" "9"))))
(check-sat)
