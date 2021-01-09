(declare-const X String)
; ^(0+[1-9]|[1-9])[0-9]*$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.+ (str.to.re "0")) (re.range "1" "9")) (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; \x23\x23\x23\x23Host\x3ASubject\x3Awww\x2Epcsentinelsoftware\x2EcomHost\x3AWeHost\x3awww\x2Ewowokay\x2Ecom/wowokaybar\x2Ephp
(assert (not (str.in.re X (str.to.re "####Host:Subject:www.pcsentinelsoftware.comHost:WeHost:www.wowokay.com/wowokaybar.php\x0a"))))
; ^([01][0-9][0-9]|2[0-4][0-9]|25[0-5].[01][0-9][0-9]|2[0-4][0-9]|25[0-5].[01][0-9][0-9]|2[0-4][0-9]|25[0-5].[01][0-9][0-9]|2[0-4][0-9]|25[0-5])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5") re.allchar (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5") re.allchar (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5") re.allchar (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "\x0a")))))
; Test\d+DesktopAddressIDENTIFY666User-Agent\x3A\x5BStatic
(assert (str.in.re X (re.++ (str.to.re "Test") (re.+ (re.range "0" "9")) (str.to.re "DesktopAddressIDENTIFY666User-Agent:[Static\x0a"))))
(check-sat)
