(declare-const X String)
; Port\x2E[^\n\r]*007\d+Logsdl\x2Eweb-nexus\x2Enet
(assert (str.in.re X (re.++ (str.to.re "Port.") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "007") (re.+ (re.range "0" "9")) (str.to.re "Logsdl.web-nexus.net\x0a"))))
; ^[0-9]%?$|^1[0-9]%?$|^2[0-9]%?$|^3[0-5]%?$|^[0-9]\.\d{1,2}%?$|^1[0-9]\.\d{1,2}%?$|^2[0-9]\.\d{1,2}%?$|^3[0-4]\.\d{1,2}%?$|^35%?$
(assert (str.in.re X (re.union (re.++ (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "1") (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "2") (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "3") (re.range "0" "5") (re.opt (str.to.re "%"))) (re.++ (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "1") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "2") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "3") (re.range "0" "4") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "35") (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
; User-Agent\x3a\s+Host\x3A\s+proxystylesheet=Excitefhfksjzsfu\x2fahm\.uqs
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "proxystylesheet=Excitefhfksjzsfu/ahm.uqs\x0a")))))
; doarauzeraqf\x2fvvv\.ul
(assert (str.in.re X (str.to.re "doarauzeraqf/vvv.ul\x0a")))
; /\x2ejs\x3f[a-zA-Z0-9]{9,20}=Mozilla\x2f/UGi
(assert (not (str.in.re X (re.++ (str.to.re "/.js?") ((_ re.loop 9 20) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "=Mozilla//UGi\x0a")))))
(check-sat)
