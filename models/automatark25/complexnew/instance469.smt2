(declare-const X String)
; 3ASoftwarephpinfoSpy\x2EnbdMailerX-Mailer\x3A195\.225\.Subject\x3a
(assert (not (str.in.re X (str.to.re "3ASoftwarephpinfoSpy.nbdMailerX-Mailer:\x13195.225.Subject:\x0a"))))
; vvvjkhmbgnbbw\x2fqbn\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in.re X (str.to.re "vvvjkhmbgnbbw/qbn\x1b(robert@blackcastlesoft.com)\x0a"))))
; \b(0?[1-9]|1[0-2])(\-)(0?[1-9]|1[0-9]|2[0-9]|3[0-1])(\-)(200[0-8])\b
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "-") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "-\x0a200") (re.range "0" "8")))))
(check-sat)
