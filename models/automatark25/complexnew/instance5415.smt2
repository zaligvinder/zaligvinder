(declare-const X String)
; /onload\s*\x3D\s*[\x22\x27]?location\.reload\s*\x28/smi
(assert (str.in.re X (re.++ (str.to.re "/onload") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "location.reload") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(/smi\x0a"))))
; ^((\+){1}[1-9]{1}[0-9]{0,1}[0-9]{0,1}(\s){1}[\(]{1}[1-9]{1}[0-9]{1,5}[\)]{1}[\s]{1})[1-9]{1}[0-9]{4,9}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 4 9) (re.range "0" "9")) (str.to.re "\x0a") ((_ re.loop 1 1) (str.to.re "+")) ((_ re.loop 1 1) (re.range "1" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (str.to.re "(")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 5) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ")")) ((_ re.loop 1 1) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
; Host\x3asearchresltwww\x2Ewordiq\x2Ecomwww2\x2einstantbuzz\x2ecom
(assert (not (str.in.re X (str.to.re "Host:searchresltwww.wordiq.com\x1bwww2.instantbuzz.com\x0a"))))
; CUSTOM\swww\x2Elocators\x2Ecom\d+Seconds\-
(assert (not (str.in.re X (re.++ (str.to.re "CUSTOM") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.locators.com") (re.+ (re.range "0" "9")) (str.to.re "Seconds-\x0a")))))
; [A-Za-z_.0-9-]+@{1}[a-z]+([.]{1}[a-z]{2,4})+
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re ".") (re.range "0" "9") (str.to.re "-"))) ((_ re.loop 1 1) (str.to.re "@")) (re.+ (re.range "a" "z")) (re.+ (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 4) (re.range "a" "z")))) (str.to.re "\x0a"))))
(check-sat)
