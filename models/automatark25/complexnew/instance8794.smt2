(declare-const X String)
; WebsiteUser-Agent\x3Ahttphostfast-look\x2Ecom
(assert (not (str.in.re X (str.to.re "WebsiteUser-Agent:httphostfast-look.com\x0a"))))
; \x28\x29\s+WatchDog\sNetspyt=WeHost\x3A\x2Fcgi\x2Flogurl\.cgiwww\x2Ekliksearch\x2Ecom1\x2E3\x7D\x7BTrojan\x3A
(assert (not (str.in.re X (re.++ (str.to.re "()") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WatchDog") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Netspyt=WeHost:/cgi/logurl.cgiwww.kliksearch.com1.3}{Trojan:\x0a")))))
; ^[0-9a-zA-z]{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "z"))) (str.to.re "\x0a")))))
; ^0(5[012345678]|6[47]){1}(\-)?[^0\D]{1}\d{5}$
(assert (not (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.union (re.++ (str.to.re "5") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8"))) (re.++ (str.to.re "6") (re.union (str.to.re "4") (str.to.re "7"))))) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
