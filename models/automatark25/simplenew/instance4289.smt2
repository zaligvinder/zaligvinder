(declare-const X String)
; YOURHost\x3Awww\x2Ealfacleaner\x2Ecom
(assert (str.in.re X (str.to.re "YOURHost:www.alfacleaner.com\x0a")))
(check-sat)
