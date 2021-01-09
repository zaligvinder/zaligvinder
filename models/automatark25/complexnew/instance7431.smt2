(declare-const X String)
; Host\x3aSoftwareHost\x3AjokeWEBCAM-Server\x3a
(assert (str.in.re X (str.to.re "Host:SoftwareHost:jokeWEBCAM-Server:\x0a")))
; traffbest\x2Ebiz\d+\.compress.*sidebar\.activeshopper\.comaresflashdownloader\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "traffbest.biz") (re.+ (re.range "0" "9")) (str.to.re ".compress") (re.* re.allchar) (str.to.re "sidebar.activeshopper.comaresflashdownloader.com\x0a")))))
(check-sat)
