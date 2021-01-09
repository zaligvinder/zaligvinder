(declare-const X String)
; www\x2eproventactics\x2ecomKeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (str.in.re X (str.to.re "www.proventactics.comKeyloggerExplorerfileserverSI|Server|\x13www.myarmory.com\x0a")))
; ovplHost\x3AHost\x3ADownloadUser
(assert (not (str.in.re X (str.to.re "ovplHost:Host:DownloadUser\x0a"))))
; /\x2eavi([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.avi") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^([\w\d\-\.]+)@{1}(([\w\d\-]{1,67})|([\w\d\-]+\.[\w\d\-]{1,67}))\.(([a-zA-Z\d]{2,4})(\.[a-zA-Z\d]{2})?)$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) ((_ re.loop 1 1) (str.to.re "@")) (re.union ((_ re.loop 1 67) (re.union (re.range "0" "9") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 1 67) (re.union (re.range "0" "9") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re ".\x0a") ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))))
; /filename=[^\n]*\x2emotn/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".motn/i\x0a"))))
(check-sat)
