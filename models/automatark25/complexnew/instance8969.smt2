(declare-const X String)
; ^(6553[0-5]|655[0-2]\d|65[0-4]\d\d|6[0-4]\d{3}|5\d{4}|49[2-9]\d\d|491[6-9]\d|4915[2-9])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "6553") (re.range "0" "5")) (re.++ (str.to.re "655") (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "65") (re.range "0" "4") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "6") (re.range "0" "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "5") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "49") (re.range "2" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "491") (re.range "6" "9") (re.range "0" "9")) (re.++ (str.to.re "4915") (re.range "2" "9"))) (str.to.re "\x0a")))))
; Host\x3a\w+Host\x3A[^\n\r]*Host\x3AHost\x3a\x5Chome\/lordofsearch
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:Host:\x5chome/lordofsearch\x0a")))))
; www\x2Eweepee\x2Ecomhttp\x0D\x0ACurrentOwner\x3A
(assert (not (str.in.re X (str.to.re "www.weepee.com\x1bhttp\x0d\x0aCurrentOwner:\x0a"))))
(check-sat)
