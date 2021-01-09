(declare-const X String)
; ^\d{8,8}$|^[SC]{2,2}\d{6,6}$
(assert (not (str.in.re X (re.union ((_ re.loop 8 8) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.union (str.to.re "S") (str.to.re "C"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))))
; spyblpatHost\x3Ais\x2EphpBarFrom\x3AHost\x3Agdvsotuqwsg\x2fdxt\.hd
(assert (not (str.in.re X (str.to.re "spyblpatHost:is.phpBarFrom:Host:gdvsotuqwsg/dxt.hd\x0a"))))
; Host\x3ASubject\x3AFrom\x3a\xd0\xc5\xcf\xa2
(assert (not (str.in.re X (str.to.re "Host:Subject:From:\xd0\xc5\xcf\xa2\x0a"))))
(check-sat)
