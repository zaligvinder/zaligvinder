(declare-const X String)
; (^0.*[1-9]*)|(^860+)|(^8613)|(\D)|([0-9])
(assert (str.in.re X (re.union (re.++ (str.to.re "0") (re.* re.allchar) (re.* (re.range "1" "9"))) (re.++ (str.to.re "86") (re.+ (str.to.re "0"))) (str.to.re "8613") (re.comp (re.range "0" "9")) (re.++ (re.range "0" "9") (str.to.re "\x0a")))))
; phpinfo[^\n\r]*195\.225\.\dccecaedbebfcaf\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "phpinfo") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "195.225.") (re.range "0" "9") (str.to.re "ccecaedbebfcaf.com\x0a")))))
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "IP") (re.* re.allchar) (str.to.re "encoder") (re.+ (re.range "0" "9")) (str.to.re "SAHPORT-User-Agent:\x0a"))))
; /^\/[a-z]{5}\.php\?id=0\d{5}111D30[a-zA-Z0-9]{6}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 5 5) (re.range "a" "z")) (str.to.re ".php?id=0") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "111D30") ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
(check-sat)
