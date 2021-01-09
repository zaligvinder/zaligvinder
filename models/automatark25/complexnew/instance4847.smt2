(declare-const X String)
; media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAHHost\x3AProAgentIDENTIFY
(assert (not (str.in.re X (str.to.re "media.dxcdirect.com.smx?PASSW=SAHHost:ProAgentIDENTIFY\x0a"))))
; Project\x2Eearthlinkshprrprt-cs-
(assert (str.in.re X (str.to.re "Project.earthlinkshprrprt-cs-\x13\x0a")))
; ^([a-zA-Z]+(.)?[\s]*)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt re.allchar) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
; ^1?[1-9]$|^[1-2]0$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "1")) (re.range "1" "9")) (re.++ (re.range "1" "2") (str.to.re "0\x0a")))))
; ^([A-Z]{3}\s?(\d{3}|\d{2}|d{1})\s?[A-Z])|([A-Z]\s?(\d{3}|\d{2}|\d{1})\s?[A-Z]{3})$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "d"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "A" "Z")) (re.++ (str.to.re "\x0a") (re.range "A" "Z") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "A" "Z")))))))
(check-sat)
