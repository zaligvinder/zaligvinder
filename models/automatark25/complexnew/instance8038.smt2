(declare-const X String)
; ^.+\@.+\..+$
(assert (not (str.in.re X (re.++ (re.+ re.allchar) (str.to.re "@") (re.+ re.allchar) (str.to.re ".") (re.+ re.allchar) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ecpe/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cpe/i\x0a"))))
; ^([a-zA-Z]{5})([a-zA-Z0-9-]{3,12})
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 3 12) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (str.to.re "\x0a"))))
; /((\d){2})?(\s|-)?((\d){2,4})?(\s|-){1}((\d){8})$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt ((_ re.loop 2 4) (re.range "0" "9"))) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "/\x0a")))))
; www\x2Epurityscan\x2Ecom\s+from\.myway\.comToolbarUI2
(assert (str.in.re X (re.++ (str.to.re "www.purityscan.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "from.myway.com\x1bToolbarUI2\x0a"))))
(check-sat)
