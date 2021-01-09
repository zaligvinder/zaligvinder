(declare-const X String)
; Host\x3A\s+Host\s+Host\x3aInformationX-OSSproxy\x3aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:InformationX-OSSproxy:as.starware.com\x0a")))))
; www\x2Ewebcruiser\x2EccJMailBoxHostGENERAL_PARAM2FT
(assert (str.in.re X (str.to.re "www.webcruiser.ccJMailBoxHostGENERAL_PARAM2FT\x0a")))
(check-sat)
