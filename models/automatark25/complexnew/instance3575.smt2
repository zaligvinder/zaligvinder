(declare-const X String)
; ^[A-G](b|#)?((m(aj)?|M|aug|dim|sus)([2-7]|9|13)?)?(\/[A-G](b|#)?)?$
(assert (not (str.in.re X (re.++ (re.range "A" "G") (re.opt (re.union (str.to.re "b") (str.to.re "#"))) (re.opt (re.++ (re.union (re.++ (str.to.re "m") (re.opt (str.to.re "aj"))) (str.to.re "M") (str.to.re "aug") (str.to.re "dim") (str.to.re "sus")) (re.opt (re.union (re.range "2" "7") (str.to.re "9") (str.to.re "13"))))) (re.opt (re.++ (str.to.re "/") (re.range "A" "G") (re.opt (re.union (str.to.re "b") (str.to.re "#"))))) (str.to.re "\x0a")))))
; Host\x3A\d+Black\s+daosearch\x2EcomMyPostwww\.raxsearch\.com
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Black") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "daosearch.comMyPostwww.raxsearch.com\x0a"))))
; ShadowNet\dsearchreslt\sTROJAN-Host\x3AYWRtaW46cGFzc3dvcmQ
(assert (str.in.re X (re.++ (str.to.re "ShadowNet") (re.range "0" "9") (str.to.re "searchreslt") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "TROJAN-Host:YWRtaW46cGFzc3dvcmQ\x0a"))))
(check-sat)
