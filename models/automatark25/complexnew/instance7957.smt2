(declare-const X String)
; /\x2Fdirect\.php\x3Ff=[0-9]{8}\x26s=[a-z0-9]{3}\.[a-z]{1,4}/U
(assert (str.in.re X (re.++ (str.to.re "//direct.php?f=") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "&s=") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re "/U\x0a"))))
; ^(\+[1-9]\d+) ([1-9]\d+) ([1-9]\d+)(\-\d+){0,1}$|^(0\d+) ([1-9]\d+)(\-\d+){0,1}$|^([1-9]\d+)(\-\d+){0,1}$
(assert (str.in.re X (re.union (re.++ (str.to.re "  ") (re.opt (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))) (str.to.re "+") (re.range "1" "9") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9"))) (re.++ (str.to.re " ") (re.opt (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))) (str.to.re "0") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))) (str.to.re "\x0a") (re.range "1" "9") (re.+ (re.range "0" "9"))))))
; Subject\x3A\s+Host\x3A.*www\x2Ealfacleaner\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "www.alfacleaner.com\x0a"))))
(check-sat)
