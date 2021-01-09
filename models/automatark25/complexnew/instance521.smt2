(declare-const X String)
; ^[0-9]%?$|^1[0-9]%?$|^2[0-9]%?$|^3[0-5]%?$|^[0-9]\.\d{1,2}%?$|^1[0-9]\.\d{1,2}%?$|^2[0-9]\.\d{1,2}%?$|^3[0-4]\.\d{1,2}%?$|^35%?$
(assert (not (str.in.re X (re.union (re.++ (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "1") (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "2") (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "3") (re.range "0" "5") (re.opt (str.to.re "%"))) (re.++ (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "1") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "2") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "3") (re.range "0" "4") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "35") (re.opt (str.to.re "%")) (str.to.re "\x0a"))))))
; X-Mailer\x3a+Host\x3A\x2EaspxHost\x3Av=User-Agent\x3axbqyosoe\x2fcpvmRequestwww\x2Ealtnet\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "X-Mailer") (re.+ (str.to.re ":")) (str.to.re "Host:.aspxHost:v=User-Agent:xbqyosoe/cpvmRequestwww.altnet.com\x1b\x0a"))))
; User-Agent\x3A[^\n\r]*quick\x2Eqsrch\x2Ecom.*www\.searchinweb\.com
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "quick.qsrch.com") (re.* re.allchar) (str.to.re "www.searchinweb.com\x0a"))))
; /\.php\?b=[A-F0-9]+&v=1\./U
(assert (not (str.in.re X (re.++ (str.to.re "/.php?b=") (re.+ (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&v=1./U\x0a")))))
(check-sat)
