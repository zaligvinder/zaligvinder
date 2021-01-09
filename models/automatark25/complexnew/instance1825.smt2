(declare-const X String)
; YWRtaW46YWRtaW4www\x2Ee-finder\x2EccNSIS_DOWNLOADHost\x3A
(assert (not (str.in.re X (str.to.re "YWRtaW46YWRtaW4www.e-finder.ccNSIS_DOWNLOADHost:\x0a"))))
; Buy Cheap handbags,Discount handbags,Cheap Leather handbags -Alltopgoods.com
(assert (not (str.in.re X (re.++ (str.to.re "Buy Cheap handbags,Discount handbags,Cheap Leather handbags -Alltopgoods") re.allchar (str.to.re "com\x0a")))))
(check-sat)
