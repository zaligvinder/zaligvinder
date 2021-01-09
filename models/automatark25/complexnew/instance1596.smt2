(declare-const X String)
; Host\x3A\w+User-Agent\x3A\sTeomaBarHost\x3AHoursHost\x3AHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "TeomaBarHost:HoursHost:Host:\x0a")))))
; /\/home\/index.asp\?typeid\=[0-9]{1,3}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//home/index") re.allchar (str.to.re "asp?typeid=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; ^(([0-9]{5})|([0-9]{3}[ ]{0,1}[0-9]{2}))$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eair/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".air/i\x0a"))))
; /\x40\x40\x40([0-9A-Z]{2}\x2D){5}[0-9A-Z]{2}/iP
(assert (not (str.in.re X (re.++ (str.to.re "/@@@") ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to.re "-"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to.re "/iP\x0a")))))
(check-sat)
