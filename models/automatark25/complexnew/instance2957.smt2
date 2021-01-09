(declare-const X String)
; ^[1-9]{1}[0-9]{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; toolbarplace\x2Ecom.*Host\x3A\dgpstool\x2eglobaladserver\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* re.allchar) (str.to.re "Host:") (re.range "0" "9") (str.to.re "gpstool.globaladserver.com\x0a")))))
; toolbar_domain_redirectriggiymd\x2fwdhi\.vhi
(assert (str.in.re X (str.to.re "toolbar_domain_redirectriggiymd/wdhi.vhi\x0a")))
; /filename=[^\n]*\x2emaplet/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".maplet/i\x0a"))))
(check-sat)
