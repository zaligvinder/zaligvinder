(declare-const X String)
; ('.*$|Rem((\t| ).*$|$)|"(.|"")*?")
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "'") (re.* re.allchar)) (re.++ (str.to.re "Rem") (re.union (str.to.re "\x09") (str.to.re " ")) (re.* re.allchar)) (re.++ (str.to.re "\x22") (re.* (re.union re.allchar (str.to.re "\x22\x22"))) (str.to.re "\x22"))) (str.to.re "\x0a"))))
; ^((\d{5})|(\d{5}-\d{4})|([A-CEGHJ-NPR-TV-Z]\d[A-CEGHJ-NPR-TV-Z]\s\d[A-CEGHJ-NPR-TV-Z]\d))$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.range "A" "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "T") (re.range "V" "Z")) (re.range "0" "9") (re.union (re.range "A" "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "T") (re.range "V" "Z")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.range "0" "9") (re.union (re.range "A" "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "T") (re.range "V" "Z")) (re.range "0" "9"))) (str.to.re "\x0a"))))
; 3A\d+Host\x3AHWAEUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "3A") (re.+ (re.range "0" "9")) (str.to.re "Host:HWAEUser-Agent:\x0a")))))
; FTPHost\x3AUser-Agent\x3aUser\x3AdistID=deskwizz\x2Ecom
(assert (str.in.re X (str.to.re "FTPHost:User-Agent:User:distID=deskwizz.com\x0a")))
; (^[+]?\d*\.?\d*[1-9]+\d*$)|(^[+]?[1-9]+\d*\.\d*$)
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "+")) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "+")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9"))))))
(check-sat)
