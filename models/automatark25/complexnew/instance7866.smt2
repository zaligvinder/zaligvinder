(declare-const X String)
; /filename=[^\n]*\x2eses/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ses/i\x0a")))))
; YOURHost\x3Awww\x2Ealfacleaner\x2Ecom
(assert (not (str.in.re X (str.to.re "YOURHost:www.alfacleaner.com\x0a"))))
(check-sat)
