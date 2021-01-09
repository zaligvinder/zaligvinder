(declare-const X String)
; 3A\d+Host\x3AHWAEUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "3A") (re.+ (re.range "0" "9")) (str.to.re "Host:HWAEUser-Agent:\x0a"))))
; ^((([a-z0-9])+([\w.-]{1})?)+([^\W_]{1}))+@((([a-z0-9])+([\w-]{1})?)+([^\W_]{1}))+\.[a-z]{2,3}(\.[a-z]{2,4})?$
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt ((_ re.loop 1 1) (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))) ((_ re.loop 1 1) (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "_"))))) (str.to.re "@") (re.+ (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt ((_ re.loop 1 1) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))) ((_ re.loop 1 1) (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "_"))))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 4) (re.range "a" "z")))) (str.to.re "\x0a")))))
; /^\/[a-f0-9]{32}\/[a-f0-9]{32}\.jar$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".jar/Ui\x0a"))))
; FTPHost\x3AUser-Agent\x3aUser\x3AdistID=deskwizz\x2Ecom
(assert (not (str.in.re X (str.to.re "FTPHost:User-Agent:User:distID=deskwizz.com\x0a"))))
(check-sat)
