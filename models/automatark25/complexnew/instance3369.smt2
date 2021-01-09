(declare-const X String)
; ^(([0-1]?[0-9])|([2][0-3])):([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9"))))
; /(^|&)filename=[^&]*?(\x2e|%2e){2}([\x2f\x5c]|%2f|%5c)/Pmi
(assert (str.in.re X (re.++ (str.to.re "/&filename=") (re.* (re.comp (str.to.re "&"))) ((_ re.loop 2 2) (re.union (str.to.re ".") (str.to.re "%2e"))) (re.union (str.to.re "%2f") (str.to.re "%5c") (str.to.re "/") (str.to.re "\x5c")) (str.to.re "/Pmi\x0a"))))
; ^\(?[\d]{3}\)?[\s-]?[\d]{3}[\s-]?[\d]{4}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(\d|\d{1,9}|1\d{1,9}|20\d{8}|213\d{7}|2146\d{6}|21473\d{5}|214747\d{4}|2147482\d{3}|21474835\d{2}|214748364[0-7])$
(assert (str.in.re X (re.++ (re.union (re.range "0" "9") ((_ re.loop 1 9) (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 1 9) (re.range "0" "9"))) (re.++ (str.to.re "20") ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to.re "213") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "2146") ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to.re "21473") ((_ re.loop 5 5) (re.range "0" "9"))) (re.++ (str.to.re "214747") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "2147482") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "21474835") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "214748364") (re.range "0" "7"))) (str.to.re "\x0a"))))
; www\x2Eslinkyslate.*Redirector\x22.*Host\x3Atoolbarplace\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "www.slinkyslate") (re.* re.allchar) (str.to.re "Redirector\x22") (re.* re.allchar) (str.to.re "Host:toolbarplace.com\x0a")))))
(check-sat)
