(declare-const X String)
; /filename=[^\n]*\x2eswf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".swf/i\x0a"))))
; \d{2,4}
(assert (not (str.in.re X (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; gpstool\x2eglobaladserver\x2ecom\daction\x2E\w+data2\.activshopper\.com
(assert (not (str.in.re X (re.++ (str.to.re "gpstool.globaladserver.com") (re.range "0" "9") (str.to.re "action.") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "data2.activshopper.com\x0a")))))
(check-sat)
