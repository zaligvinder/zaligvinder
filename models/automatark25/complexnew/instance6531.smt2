(declare-const X String)
; toolbar_domain_redirectriggiymd\x2fwdhi\.vhi
(assert (str.in.re X (str.to.re "toolbar_domain_redirectriggiymd/wdhi.vhi\x0a")))
; com\x2Findex\.php\?tpid=.*pop\x2Epopuptoast\x2Ecom.*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "com/index.php?tpid=") (re.* re.allchar) (str.to.re "pop.popuptoast.com") (re.* re.allchar) (str.to.re "Host:\x0a")))))
; Hello\x2E\s+ovplrichfind\x2EcomCookie\x3a
(assert (str.in.re X (re.++ (str.to.re "Hello.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ovplrichfind.comCookie:\x0a"))))
; (\/\*(\s*|.*?)*\*\/)|(--.*)
(assert (str.in.re X (re.union (re.++ (str.to.re "/*") (re.* (re.union (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar))) (str.to.re "*/")) (re.++ (str.to.re "\x0a--") (re.* re.allchar)))))
(check-sat)
