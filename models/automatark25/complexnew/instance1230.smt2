(declare-const X String)
; /filename=[^\n]*\x2edvr-ms/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dvr-ms/i\x0a")))))
; \x2Fcs\x2Fpop4\x2FA-Spywww\x2Eyoogee\x2Ecom
(assert (str.in.re X (str.to.re "/cs/pop4/A-Spywww.yoogee.com\x13\x0a")))
; e2give\.com\s+data2\.activshopper\.com
(assert (not (str.in.re X (re.++ (str.to.re "e2give.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data2.activshopper.com\x0a")))))
; RequestWindowszzzvmkituktgr\x2fetieencoder
(assert (str.in.re X (str.to.re "RequestWindowszzzvmkituktgr/etieencoder\x0a")))
; ^((0?[1-9])|(([1|2]\d)|(3[0|1])))(/|-)((0?[1-9])|(1[0|1|2]))(/|-)(((19|20)\d\d)|(\d\d))
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "|") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "|") (str.to.re "1")))) (re.union (str.to.re "/") (str.to.re "-")) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "|") (str.to.re "1") (str.to.re "2")))) (re.union (str.to.re "/") (str.to.re "-")) (re.union (re.++ (re.union (str.to.re "19") (str.to.re "20")) (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
