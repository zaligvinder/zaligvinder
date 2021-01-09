(declare-const X String)
; Host\x3a\dgpstool\x2eglobaladserver\x2ecomdesksearch\.dropspam\.com
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "gpstool.globaladserver.comdesksearch.dropspam.com\x0a")))))
; subject\x3Anode=LoginNSIS_DOWNLOAD
(assert (not (str.in.re X (str.to.re "subject:node=LoginNSIS_DOWNLOAD\x0a"))))
; User-Agent\x3ADirectory
(assert (str.in.re X (str.to.re "User-Agent:Directory\x0a")))
; ^\w+(([-+']|[-+.]|\w+))*@\w+([-.]\w+)*\.\w+([-.]\w+)*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "-") (str.to.re "+") (str.to.re "'") (str.to.re "-") (str.to.re "+") (str.to.re "."))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (re.union (str.to.re "-") (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (re.union (str.to.re "-") (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a")))))
; /^udp\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in.re X (re.++ (str.to.re "/udp|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a"))))
(check-sat)
