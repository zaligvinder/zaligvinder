(declare-const X String)
; ^((\.)?([a-zA-Z0-9_-]?)(\.)?([a-zA-Z0-9_-]?)(\.)?)+$
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.opt (str.to.re ".")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.opt (str.to.re ".")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.opt (str.to.re ".")))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2edocm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".docm/i\x0a")))))
; Host\x3A\swww\x2Etopadwarereviews\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.topadwarereviews.com\x0a"))))
; Host\x3A\d+rprpgbnrppb\x2fci[^\n\r]*RXFilteredDmInf\x5E
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ci") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "RXFilteredDmInf^\x0a")))))
(check-sat)
