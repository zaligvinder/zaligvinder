(declare-const X String)
; /\x2ejpx([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jpx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; GmbH\d+Host\x3A\w+adblock\x2Elinkz\x2EcomUser-Agent\x3Aemail
(assert (str.in.re X (re.++ (str.to.re "GmbH") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "adblock.linkz.comUser-Agent:email\x0a"))))
; DaysinfoBackAtTaCkwww\x2Ealfacleaner\x2Ecom
(assert (str.in.re X (str.to.re "DaysinfoBackAtTaCkwww.alfacleaner.com\x0a")))
; ^((0[1-9]|1[0-9]|2[0-4])([0-5]\d){2})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4"))) ((_ re.loop 2 2) (re.++ (re.range "0" "5") (re.range "0" "9"))))))
(check-sat)
