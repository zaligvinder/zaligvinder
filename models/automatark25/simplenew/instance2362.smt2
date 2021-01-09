(declare-const X String)
; NSIS_DOWNLOAD.*User-Agent\x3A\s+gpstool\x2eglobaladserver\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "NSIS_DOWNLOAD") (re.* re.allchar) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "gpstool.globaladserver.com\x0a")))))
(check-sat)
