(declare-const X String)
; User-Agent\x3A.*OSSProxy
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "OSSProxy\x0a"))))
; /filename=[^\n]*\x2exps/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xps/i\x0a")))))
; www\x2Eezula\x2Ecom.*com[^\n\r]*SpyBuddy
(assert (str.in.re X (re.++ (str.to.re "www.ezula.com") (re.* re.allchar) (str.to.re "com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "SpyBuddy\x0a"))))
; EFError.*Host\x3A\swww\x2emalware-stopper\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "EFError") (re.* re.allchar) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a")))))
(check-sat)
