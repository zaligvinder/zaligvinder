(declare-const X String)
; iz=Referer\x3Aoffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "iz=Referer:offers.bullseye-network.com\x0a"))))
; (^\d*\.\d{2}$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))))
; is\x7D\x7BPort\x3A\x7D\x7BUser\x3A
(assert (str.in.re X (str.to.re "is}{Port:}{User:\x0a")))
; e(vi?)?
(assert (not (str.in.re X (re.++ (str.to.re "e") (re.opt (re.++ (str.to.re "v") (re.opt (str.to.re "i")))) (str.to.re "\x0a")))))
(check-sat)
