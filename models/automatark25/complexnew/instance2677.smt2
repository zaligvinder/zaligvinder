(declare-const X String)
; ^(user=([a-z0-9]+,)*(([a-z0-9]+){1});)?(group=([a-z0-9]+,)*(([a-z0-9]+){1});)?(level=[0-9]+;)?$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "user=") (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ","))) ((_ re.loop 1 1) (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to.re ";"))) (re.opt (re.++ (str.to.re "group=") (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ","))) ((_ re.loop 1 1) (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to.re ";"))) (re.opt (re.++ (str.to.re "level=") (re.+ (re.range "0" "9")) (str.to.re ";"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2evwr/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vwr/i\x0a")))))
; Host\x3a\dgpstool\x2eglobaladserver\x2ecomdesksearch\.dropspam\.com
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "gpstool.globaladserver.comdesksearch.dropspam.com\x0a"))))
; ^(\d{4})-((0[1-9])|(1[0-2]))-(0[1-9]|[12][0-9]|3[01])$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x0a"))))
; (^\b\d+-\d+$\b)|(^\b\d+$\b)
(assert (not (str.in.re X (re.union (re.++ (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
