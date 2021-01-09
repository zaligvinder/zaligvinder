(declare-const X String)
; ^(smtp)\.([\w\-]+)\.[\w\-]{2,3}$
(assert (str.in.re X (re.++ (str.to.re "smtp.") (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 3) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; ^(.|\r|\n){1,10}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 10) (re.union re.allchar (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2emp4/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mp4/i\x0a")))))
; /[a-zA-Z0-9]\/[a-f0-9]{5}\.swf[\x22\x27]/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to.re "/") ((_ re.loop 5 5) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".swf") (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "/\x0a")))))
; Host\x3A\dKeylogger.*Onetrustyfiles\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Keylogger") (re.* re.allchar) (str.to.re "Onetrustyfiles.com\x0a")))))
(check-sat)
