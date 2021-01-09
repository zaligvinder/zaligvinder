(declare-const X String)
; ^[0-9]{8}$
(assert (not (str.in.re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^([0-9]*\,?[0-9]+|[0-9]+\,?[0-9]*)?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ",")) (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re ",")) (re.* (re.range "0" "9"))))) (str.to.re "\x0a")))))
; User-Agent\x3A\x2FrssMinutesansweras\x2Estarware\x2EcomFictionalHost\x3AHost\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:/rssMinutesansweras.starware.comFictionalHost:Host:\x0a"))))
(check-sat)
