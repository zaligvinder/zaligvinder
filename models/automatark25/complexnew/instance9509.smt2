(declare-const X String)
; ^(([0-2])?([0-9]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.range "0" "2")) (re.range "0" "9"))))
; YWRtaW46YWRtaW4www\x2Ee-finder\x2EccNSIS_DOWNLOADHost\x3A
(assert (str.in.re X (str.to.re "YWRtaW46YWRtaW4www.e-finder.ccNSIS_DOWNLOADHost:\x0a")))
; Toolbar\w+www\x2Etopadwarereviews\x2Ecommedia\x2Etop-banners\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www.topadwarereviews.commedia.top-banners.com\x0a")))))
; /User-Agent\x3a[^\x0d\x0a]*Java\/1\./H
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Java/1./H\x0a")))))
(check-sat)
