(declare-const X String)
; /\/loader\.cpl$/U
(assert (str.in.re X (str.to.re "//loader.cpl/U\x0a")))
; /[a-zA-Z0-9]\/[a-f0-9]{5}\.swf[\x22\x27]/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to.re "/") ((_ re.loop 5 5) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".swf") (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "/\x0a")))))
; body=wordHost\x3ASpediartaddrEverywareHost\x3AHost\x3A
(assert (not (str.in.re X (str.to.re "body=wordHost:SpediartaddrEverywareHost:Host:\x0a"))))
; wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.dxcdirect.com\x0a"))))
; HBand,\sHost\x3A[^\n\r]*lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in.re X (re.++ (str.to.re "HBand,") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.fin\x0a")))))
(check-sat)
