(declare-const X String)
; www\x2Epurityscan\x2Ecom.*
(assert (not (str.in.re X (re.++ (str.to.re "www.purityscan.com") (re.* re.allchar) (str.to.re "\x0a")))))
; Server.*Host\x3a\s+newsSoftActivitypassword\x3B1\x3BOptix
(assert (str.in.re X (re.++ (str.to.re "Server") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "newsSoftActivity\x13password;1;Optix\x0a"))))
; Host\x3A\ssource%3Dultrasearch136%26campaign%3Dsnap
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "source%3Dultrasearch136%26campaign%3Dsnap\x0a"))))
; Stablecmemailyxegtd\x2fefcwgUin=PromulGate
(assert (not (str.in.re X (str.to.re "Stablecmemailyxegtd/efcwgUin=PromulGate\x0a"))))
; ^(([0]?[1-9])|(1[0-2]))\/(([0]?[1-9])|([1,2]\d{1})|([3][0,1]))\/[12]\d{3}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re ",") (str.to.re "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re ",") (str.to.re "1")))) (str.to.re "/") (re.union (str.to.re "1") (str.to.re "2")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
