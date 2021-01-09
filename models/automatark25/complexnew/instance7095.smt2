(declare-const X String)
; /^(\x00\x00\x00\x00|.{4}(\x00\x00\x00\x00|.{12}))/s
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x00\x00\x00\x00") (re.++ ((_ re.loop 4 4) re.allchar) (re.union (str.to.re "\x00\x00\x00\x00") ((_ re.loop 12 12) re.allchar)))) (str.to.re "/s\x0a")))))
; /\.onpropertychange\s*=\s*function[^{]*?\{[^}]*?\w+\.swapNode\x28/ims
(assert (not (str.in.re X (re.++ (str.to.re "/.onpropertychange") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "function") (re.* (re.comp (str.to.re "{"))) (str.to.re "{") (re.* (re.comp (str.to.re "}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".swapNode(/ims\x0a")))))
; CUSTOM\swww\x2Elocators\x2Ecomas\x2Estarware\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "CUSTOM") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.locators.comas.starware.com\x0a")))))
(check-sat)
