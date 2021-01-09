(declare-const X String)
; SystemSleuth1\x2E0versionHost\x3AArrowHost\x3a3Awebsearch\x2Edrsnsrch\x2EcomhostieiWonHost\x3apjpoptwql\x2frlnj
(assert (not (str.in.re X (str.to.re "SystemSleuth\x131.0versionHost:ArrowHost:3Awebsearch.drsnsrch.com\x13hostieiWonHost:pjpoptwql/rlnj\x0a"))))
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (str.in.re X (str.to.re "forum=From:comTencentTravelerBackAtTaCkExplorer\x0a")))
; /GET \/[a-z]{8,12}\?[a-z] HTTP\/1.1/i
(assert (str.in.re X (re.++ (str.to.re "/GET /") ((_ re.loop 8 12) (re.range "a" "z")) (str.to.re "?") (re.range "a" "z") (str.to.re " HTTP/1") re.allchar (str.to.re "1/i\x0a"))))
; ^(0[1-9]|1[0-2])\/((0[1-9]|2\d)|3[0-1])\/(19\d\d|200[0-3])$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (str.to.re "3") (re.range "0" "1")) (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "2") (re.range "0" "9"))) (str.to.re "/") (re.union (re.++ (str.to.re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "200") (re.range "0" "3"))) (str.to.re "\x0a"))))
(check-sat)
