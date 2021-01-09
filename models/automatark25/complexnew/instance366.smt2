(declare-const X String)
; ^\$( )*\d*(.\d{1,2})?$
(assert (str.in.re X (re.++ (str.to.re "$") (re.* (str.to.re " ")) (re.* (re.range "0" "9")) (re.opt (re.++ re.allchar ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (not (str.in.re X (str.to.re "Host:Host:alertseqepagqfphv/sfd\x0a"))))
; EIcdpnode=reportUID\x2FServertoX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "EIcdpnode=reportUID/ServertoX-Mailer:\x13\x0a"))))
; ^(http|https|ftp|ftps)\://([a-zA-Z0-9\-]+)(\.[a-zA-Z0-9\-]+)*(\.[a-zA-Z]{2,3})(:[0-9]*)?(/[a-zA-Z0-9_\-]*)*(\.?[a-zA-Z0-9#]{1,10})?([\?][a-zA-Z0-9\-\._\,\'\+&%\$#\=~]*)?$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "http") (str.to.re "https") (str.to.re "ftp") (str.to.re "ftps")) (str.to.re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))))) (re.opt (re.++ (str.to.re ":") (re.* (re.range "0" "9")))) (re.* (re.++ (str.to.re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))))) (re.opt (re.++ (re.opt (str.to.re ".")) ((_ re.loop 1 10) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "#"))))) (re.opt (re.++ (str.to.re "?") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re ",") (str.to.re "'") (str.to.re "+") (str.to.re "&") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "=") (str.to.re "~"))))) (str.to.re "\x0a.") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z")))))))
; /\/html\/license_[0-9A-F]{550,}\.html$/Ui
(assert (str.in.re X (re.++ (str.to.re "//html/license_.html/Ui\x0a") ((_ re.loop 550 550) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "A" "F"))))))
(check-sat)
