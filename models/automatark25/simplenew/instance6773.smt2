(declare-const X String)
; www\x2Eslinkyslate.*Redirector\x22.*Host\x3Atoolbarplace\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "www.slinkyslate") (re.* re.allchar) (str.to.re "Redirector\x22") (re.* re.allchar) (str.to.re "Host:toolbarplace.com\x0a"))))
(check-sat)
