(declare-const X String)
; ^(3(([0-5][0-9]{0,2})|60))|([1-2][0-9]{2})|(^[1-9]$)|(^[1-9]{2}$)$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "3") (re.union (re.++ (re.range "0" "5") ((_ re.loop 0 2) (re.range "0" "9"))) (str.to.re "60"))) (re.++ (re.range "1" "2") ((_ re.loop 2 2) (re.range "0" "9"))) (re.range "1" "9") (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "\x0a"))))))
; \d{6}
(assert (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; ContactHost\x3aHost\x3AFloodedFictionalUser-Agent\x3AHost\x3a
(assert (not (str.in.re X (str.to.re "ContactHost:Host:FloodedFictionalUser-Agent:Host:\x0a"))))
; alert\d+an.*Spyiz=e2give\.comrichfind\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "alert") (re.+ (re.range "0" "9")) (str.to.re "an") (re.* re.allchar) (str.to.re "Spyiz=e2give.comrichfind.com\x0a")))))
; offers\x2Ebullseye-network\x2Ecom[^\n\r]*this\dwww\x2Etrustedsearch\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "offers.bullseye-network.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "this") (re.range "0" "9") (str.to.re "www.trustedsearch.com\x0a"))))
(check-sat)
