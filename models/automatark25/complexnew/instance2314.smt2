(declare-const X String)
; Host\x3A\s+Boss\s+media\x2Etop-banners\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Boss") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.top-banners.com\x0a"))))
; ((&#[0-9]+|&[a-zA-Z]+[0-9]*?);)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a;&") (re.union (re.++ (str.to.re "#") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.range "0" "9"))))))))
; /^\/f\/1\d{9}\/\d{9,10}(\/\d)+$/U
(assert (not (str.in.re X (re.++ (str.to.re "//f/1") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 9 10) (re.range "0" "9")) (re.+ (re.++ (str.to.re "/") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; ^\$\d{1,3}(,?\d{3})*(\.\d{2})?$
(assert (not (str.in.re X (re.++ (str.to.re "$") ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to.re ",")) ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
