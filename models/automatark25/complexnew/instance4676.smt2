(declare-const X String)
; ^[http://www.|www.][\S]+$
(assert (str.in.re X (re.++ (re.union (str.to.re "h") (str.to.re "t") (str.to.re "p") (str.to.re ":") (str.to.re "/") (str.to.re "w") (str.to.re ".") (str.to.re "|")) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a"))))
; ^\(?082|083|084|072\)?[\s-]?[\d]{3}[\s-]?[\d]{4}$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "(")) (str.to.re "082")) (str.to.re "083") (str.to.re "084") (re.++ (str.to.re "072") (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))))
; Referer\x3AHost\x3AHost\x3ASubject\x3Aonline-casino-searcher\.comnetid=Excite
(assert (str.in.re X (str.to.re "Referer:Host:Host:Subject:online-casino-searcher.comnetid=Excite\x0a")))
(check-sat)
