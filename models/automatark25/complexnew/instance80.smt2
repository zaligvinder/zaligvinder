(declare-const X String)
; ^UA-\d+-\d+$
(assert (str.in.re X (re.++ (str.to.re "UA-") (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; /^([0-2]\d\d){75}/P
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 75 75) (re.++ (re.range "0" "2") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "/P\x0a"))))
; /\/feed\.dll\?pub_id=\d+?\&ua=/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//feed.dll?pub_id=") (re.+ (re.range "0" "9")) (str.to.re "&ua=/Ui\x0a")))))
; /filename=[^\n]*\x2erdp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rdp/i\x0a"))))
(check-sat)
