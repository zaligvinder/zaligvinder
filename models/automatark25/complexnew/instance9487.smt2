(declare-const X String)
; devSoft\x27s\s+Host\x3AHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "devSoft's\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:\x0a")))))
; news\s+Host\x3A.*Peerwww\x2Elocators\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "news") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Peerwww.locators.com\x0a")))))
; nick_name=CIA-Test\d+url=http\x3A\d+\x2FNFO\x2CRegistered\x28BDLL\x29
(assert (not (str.in.re X (re.++ (str.to.re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to.re "url=http:\x1b") (re.+ (re.range "0" "9")) (str.to.re "/NFO,Registered(BDLL)\x13\x0a")))))
; ^[0-9]*\/{1}[1-9]{1}[0-9]*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "/")) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; (\bprotected\b.*(public))|(\bprivate\b.*(protected))|(\bprivate\b.*(public))
(assert (str.in.re X (re.union (re.++ (str.to.re "protected") (re.* re.allchar) (str.to.re "public")) (re.++ (str.to.re "private") (re.* re.allchar) (str.to.re "protected")) (re.++ (str.to.re "\x0aprivate") (re.* re.allchar) (str.to.re "public")))))
(check-sat)
