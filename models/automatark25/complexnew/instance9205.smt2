(declare-const X String)
; User-Agent\x3AHost\x3AhasHost\x3AComputerKeylogger\x2Ecom
(assert (not (str.in.re X (str.to.re "User-Agent:Host:hasHost:ComputerKeylogger.com\x0a"))))
; ^\d{5}-\d{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; X-Mailer\x3a+Host\x3A\x2EaspxHost\x3Av=User-Agent\x3axbqyosoe\x2fcpvmRequestwww\x2Ealtnet\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer") (re.+ (str.to.re ":")) (str.to.re "Host:.aspxHost:v=User-Agent:xbqyosoe/cpvmRequestwww.altnet.com\x1b\x0a")))))
; \S*?[\["].*?[\]"]|\S+
(assert (str.in.re X (re.union (re.++ (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.union (str.to.re "[") (str.to.re "\x22")) (re.* re.allchar) (re.union (str.to.re "]") (str.to.re "\x22"))) (re.++ (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a")))))
; NETObserveSupervisorHost\x3Awebsearch\x2Edrsnsrch\x2Ecom
(assert (not (str.in.re X (str.to.re "NETObserveSupervisorHost:websearch.drsnsrch.com\x13\x0a"))))
(check-sat)
