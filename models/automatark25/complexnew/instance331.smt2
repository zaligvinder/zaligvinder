(declare-const X String)
; www\x2Eezula\x2Ecom.*FTP.*User-Agent\x3Acontainsw3whoreport
(assert (str.in.re X (re.++ (str.to.re "www.ezula.com") (re.* re.allchar) (str.to.re "FTP") (re.* re.allchar) (str.to.re "User-Agent:containsw3whoreport\x0a"))))
; ^((([0-9]|([0-1][0-9])|(2[0-3]))[hH:][0-5][0-9])|(([0-9]|(1[0-9])|(2[0-3]))[hH]))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.union (str.to.re "h") (str.to.re "H") (str.to.re ":")) (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.union (str.to.re "h") (str.to.re "H")))) (str.to.re "\x0a"))))
(check-sat)
