(declare-const X String)
; ( xmlns:.*=[",'].*[",'])|( xmlns=[",'].*[",'])
(assert (str.in.re X (re.union (re.++ (str.to.re " xmlns:") (re.* re.allchar) (str.to.re "=") (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'")) (re.* re.allchar) (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'"))) (re.++ (str.to.re "\x0a xmlns=") (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'")) (re.* re.allchar) (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'"))))))
; upgrade\x2Eqsrch\x2Einfox2Fie\.aspdcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (str.to.re "upgrade.qsrch.infox2Fie.aspdcww.dmcast.com\x0a"))))
; ^((2[0-5][0-5]|1[\d][\d]|[\d][\d]|[\d])\.){3}(2[0-5][0-5]|1[\d][\d]|[\d][\d]|[\d])$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to.re "2") (re.range "0" "5") (re.range "0" "5")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to.re "."))) (re.union (re.++ (str.to.re "2") (re.range "0" "5") (re.range "0" "5")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^3[234689][0-9]$
(assert (not (str.in.re X (re.++ (str.to.re "3") (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "8") (str.to.re "9")) (re.range "0" "9") (str.to.re "\x0a")))))
(check-sat)
