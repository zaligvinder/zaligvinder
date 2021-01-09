(declare-const X String)
; ^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) ((_ re.loop 3 3) (re.++ (str.to.re ".") (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))))) (str.to.re "\x0a")))))
; ^[D-d][K-k]( |-)[1-9]{1}[0-9]{3}$
(assert (str.in.re X (re.++ (re.range "D" "d") (re.range "K" "k") (re.union (str.to.re " ") (str.to.re "-")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2fkills\x2etxt\x3f(t\d|p)\x3d\d{6}$/U
(assert (str.in.re X (re.++ (str.to.re "//kills.txt?") (re.union (re.++ (str.to.re "t") (re.range "0" "9")) (str.to.re "p")) (str.to.re "=") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "/U\x0a"))))
; Subject\x3AKeyloggerSAHHost\x3ASurveillancenotification\x2Fdownload\x2Ftoolbar\x2Flocatorstoolbar
(assert (str.in.re X (str.to.re "Subject:KeyloggerSAHHost:Surveillance\x13notification\x13/download/toolbar/locatorstoolbar\x0a")))
; ^(\+)?([9]{1}[2]{1})?-? ?(\()?([0]{1})?[1-9]{2,4}(\))?-? ??(\()?[1-9]{4,7}(\))?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (str.to.re "2")))) (re.opt (str.to.re "-")) (re.opt (str.to.re " ")) (re.opt (str.to.re "(")) (re.opt ((_ re.loop 1 1) (str.to.re "0"))) ((_ re.loop 2 4) (re.range "1" "9")) (re.opt (str.to.re ")")) (re.opt (str.to.re "-")) (re.opt (str.to.re " ")) (re.opt (str.to.re "(")) ((_ re.loop 4 7) (re.range "1" "9")) (re.opt (str.to.re ")")) (str.to.re "\x0a"))))
(check-sat)
