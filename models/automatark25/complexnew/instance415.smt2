(declare-const X String)
; /filename=[^\n]*\x2ejfi/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jfi/i\x0a"))))
; YOURHost\x3Awww\x2Ealfacleaner\x2Ecom
(assert (str.in.re X (str.to.re "YOURHost:www.alfacleaner.com\x0a")))
; ^((\.\./|[a-zA-Z0-9_/\-\\])*\.[a-zA-Z0-9]+)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.union (str.to.re "../") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "/") (str.to.re "-") (str.to.re "\x5c"))) (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))
(check-sat)
