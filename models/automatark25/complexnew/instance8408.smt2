(declare-const X String)
; /\/\?[a-z0-9]{9}\=[a-zA-Z0-9]{45}/U
(assert (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 9 9) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 45 45) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; http://[^/]*/
(assert (str.in.re X (re.++ (str.to.re "http://") (re.* (re.comp (str.to.re "/"))) (str.to.re "/\x0a"))))
; /\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.com\x2d[a-z0-9\x2d\x2e]+(\x3a\d{1,5})?\r\n/Hi
(assert (not (str.in.re X (re.++ (str.to.re "/\x0d\x0aHost: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".com-") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (re.opt (re.++ (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to.re "\x0d\x0a/Hi\x0a")))))
; encoder\s%3fsearchresltX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "encoder") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "%3fsearchresltX-Mailer:\x13\x0a"))))
(check-sat)
