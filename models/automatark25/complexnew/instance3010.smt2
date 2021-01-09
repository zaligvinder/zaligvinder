(declare-const X String)
; ((20)[0-9]{2})-((0[1-9])|(1[0-2]))-((3[0-1])|([0-2][1-9]|([1-2][0-9])))\s((2[0-3])|[0-1][0-9]):[0-5][0-9]
(assert (str.in.re X (re.++ (str.to.re "-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "-") (re.union (re.++ (str.to.re "3") (re.range "0" "1")) (re.++ (re.range "0" "2") (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.++ (str.to.re "2") (re.range "0" "3")) (re.++ (re.range "0" "1") (re.range "0" "9"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (str.to.re "\x0a20") ((_ re.loop 2 2) (re.range "0" "9")))))
; \x7D\x7BTrojan\x3A\w+by\w+dddlogin\x2Edudu\x2EcomSurveillanceIPOblivionhoroscope
(assert (not (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "by") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "dddlogin.dudu.comSurveillance\x13IPOblivionhoroscope\x0a")))))
; www\x2Eserverlogic3\x2Ecom
(assert (not (str.in.re X (str.to.re "www.serverlogic3.com\x0a"))))
; ^[B|K|T|P][A-Z][0-9]{4}$
(assert (str.in.re X (re.++ (re.union (str.to.re "B") (str.to.re "|") (str.to.re "K") (str.to.re "T") (str.to.re "P")) (re.range "A" "Z") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; phpinfo[^\n\r]*195\.225\.\dccecaedbebfcaf\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "phpinfo") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "195.225.") (re.range "0" "9") (str.to.re "ccecaedbebfcaf.com\x0a")))))
(check-sat)
