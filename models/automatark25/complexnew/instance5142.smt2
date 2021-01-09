(declare-const X String)
; gpstool\x2eglobaladserver\x2ecom\daction\x2E\w+data2\.activshopper\.com
(assert (not (str.in.re X (re.++ (str.to.re "gpstool.globaladserver.com") (re.range "0" "9") (str.to.re "action.") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "data2.activshopper.com\x0a")))))
; /\/modules\/\d\.jar$/U
(assert (str.in.re X (re.++ (str.to.re "//modules/") (re.range "0" "9") (str.to.re ".jar/U\x0a"))))
; /filename=[^\n]*\x2eaddin/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".addin/i\x0a")))))
(check-sat)
