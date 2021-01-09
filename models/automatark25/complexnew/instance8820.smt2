(declare-const X String)
; awbeta\.net-nucleus\.com\d
(assert (str.in.re X (re.++ (str.to.re "awbeta.net-nucleus.com") (re.range "0" "9") (str.to.re "\x0a"))))
; toolbarplace\x2Ecom.*Host\x3A\dgpstool\x2eglobaladserver\x2ecom
(assert (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* re.allchar) (str.to.re "Host:") (re.range "0" "9") (str.to.re "gpstool.globaladserver.com\x0a"))))
(check-sat)
