(declare-const X String)
; YOURHost\x3Awww\x2Ealfacleaner\x2Ecom
(assert (not (str.in.re X (str.to.re "YOURHost:www.alfacleaner.com\x0a"))))
(check-sat)
