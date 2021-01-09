(declare-const X String)
; A-311www3\.addfreestats\.comAttachedX-Mailer\x3A
(assert (not (str.in.re X (str.to.re "A-311www3.addfreestats.comAttachedX-Mailer:\x13\x0a"))))
; (http://)?(www\.)?(youtube|yimg|youtu)\.([A-Za-z]{2,4}|[A-Za-z]{2}\.[A-Za-z]{2})/(watch\?v=)?[A-Za-z0-9\-_]{6,12}(&[A-Za-z0-9\-_]{1,}=[A-Za-z0-9\-_]{1,})*
(assert (str.in.re X (re.++ (re.opt (str.to.re "http://")) (re.opt (str.to.re "www.")) (str.to.re ".") (re.union ((_ re.loop 2 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re ".") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))))) (str.to.re "/") (re.opt (str.to.re "watch?v=")) ((_ re.loop 6 12) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "_"))) (re.* (re.++ (str.to.re "&") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "_"))) (str.to.re "=") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "_"))))) (str.to.re "\x0ay") (re.union (str.to.re "outube") (str.to.re "img") (str.to.re "outu")))))
; sidesearch\.dropspam\.com\s+Strip-Player\s+
(assert (str.in.re X (re.++ (str.to.re "sidesearch.dropspam.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Strip-Player\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
