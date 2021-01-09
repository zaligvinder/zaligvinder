(declare-const X String)
; ^[0-9]*(\.)?[0-9]+$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; are\s+Toolbar\s+X-Mailer\x3AInformationsearchnuggetspastb\x2Efreeprod\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "are") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13Informationsearchnugget\x13spastb.freeprod.com\x0a")))))
; /^GET\s\/[a-z]{5}\.php\?id=[A-Z0-9]{18}\sHTTP\/1\.[0-1]\r\n/
(assert (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 5 5) (re.range "a" "z")) (str.to.re ".php?id=") ((_ re.loop 18 18) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "HTTP/1.") (re.range "0" "1") (str.to.re "\x0d\x0a/\x0a"))))
; User-Agent\x3A\s+GET.*toowww\.123mania\.com
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GET") (re.* re.allchar) (str.to.re "toowww.123mania.com\x0a"))))
; ^((((0[13578])|(1[02]))[\/]?(([0-2][0-9])|(3[01])))|(((0[469])|(11))[\/]?(([0-2][0-9])|(30)))|(02[\/]?[0-2][0-9]))[\/]?\d{4}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (re.++ (str.to.re "0") (re.union (str.to.re "1") (str.to.re "3") (str.to.re "5") (str.to.re "7") (str.to.re "8"))) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "2")))) (re.opt (str.to.re "/")) (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))))) (re.++ (re.union (re.++ (str.to.re "0") (re.union (str.to.re "4") (str.to.re "6") (str.to.re "9"))) (str.to.re "11")) (re.opt (str.to.re "/")) (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (str.to.re "30"))) (re.++ (str.to.re "02") (re.opt (str.to.re "/")) (re.range "0" "2") (re.range "0" "9"))) (re.opt (str.to.re "/")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
