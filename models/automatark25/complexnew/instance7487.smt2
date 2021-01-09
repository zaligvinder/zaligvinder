(declare-const X String)
; ProAgent\d+X-Mailer\x3Abacktrust\x2EcomReferer\x3aSupreme
(assert (str.in.re X (re.++ (str.to.re "ProAgent") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13backtrust.comReferer:Supreme\x0a"))))
; www\x2Eezula\x2Ecom.*com[^\n\r]*SpyBuddy
(assert (not (str.in.re X (re.++ (str.to.re "www.ezula.com") (re.* re.allchar) (str.to.re "com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "SpyBuddy\x0a")))))
; User-Agent\x3A[^\n\r]*aadserver\dYOUR\x2Fxml\x2Ftoolbar\x2F
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "aadserver") (re.range "0" "9") (str.to.re "YOUR/xml/toolbar/\x0a")))))
; /\/jdb\/inf\.php\?id=[a-f0-9]{32}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//jdb/inf.php?id=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Ui\x0a"))))
; ^[0-9]%?$|^1[0-9]%?$|^2[0-9]%?$|^3[0-5]%?$|^[0-9]\.\d{1,2}%?$|^1[0-9]\.\d{1,2}%?$|^2[0-9]\.\d{1,2}%?$|^3[0-4]\.\d{1,2}%?$|^35%?$
(assert (not (str.in.re X (re.union (re.++ (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "1") (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "2") (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "3") (re.range "0" "5") (re.opt (str.to.re "%"))) (re.++ (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "1") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "2") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "3") (re.range "0" "4") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "35") (re.opt (str.to.re "%")) (str.to.re "\x0a"))))))
(check-sat)
