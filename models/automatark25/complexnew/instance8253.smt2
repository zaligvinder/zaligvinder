(declare-const X String)
; httphost[^\n\r]*www\x2Emaxifiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "httphost") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "www.maxifiles.com\x0a"))))
; /filename=[^\n]*\x2erjs/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rjs/i\x0a")))))
; ([a-zA-Z]:(\\w+)*\\[a-zA-Z0_9]+)?.xls
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":") (re.* (re.++ (str.to.re "\x5c") (re.+ (str.to.re "w")))) (str.to.re "\x5c") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "0") (str.to.re "_") (str.to.re "9"))))) re.allchar (str.to.re "xls\x0a")))))
; /^dir=[0-9A-F]{8}(-[0-9A-F]{4}){4}[0-9A-F]{8}&data=/Pi
(assert (not (str.in.re X (re.++ (str.to.re "/dir=") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 4 4) (re.++ (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "&data=/Pi\x0a")))))
(check-sat)
