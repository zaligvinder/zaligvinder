(declare-const X String)
; ^http://\w{0,3}.?youtube+\.\w{2,3}/watch\?v=[\w-]{11}
(assert (not (str.in.re X (re.++ (str.to.re "http://") ((_ re.loop 0 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt re.allchar) (str.to.re "youtub") (re.+ (str.to.re "e")) (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/watch?v=") ((_ re.loop 11 11) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (str.in.re X (str.to.re "Handyst=ClassStopperHost:SpamBlockerUtility\x0a")))
(check-sat)
