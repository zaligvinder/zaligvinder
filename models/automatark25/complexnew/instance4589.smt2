(declare-const X String)
; NetTracker\.htaServerTheef2trustyfiles\x2EcomlogsHost\x3Aversion
(assert (str.in.re X (str.to.re "NetTracker.htaServerTheef2trustyfiles.comlogsHost:version\x0a")))
; dll\x3F\w+updates\w+Host\x3aSoftwareHost\x3Ajoke
(assert (str.in.re X (re.++ (str.to.re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "updates") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:SoftwareHost:joke\x0a"))))
; throughpjpoptwql\x2frlnjPOSTwebsearch\.getmirar\.comHost\x3Awww\x2EZSearchResults\x2EcomX-Mailer\x3A
(assert (str.in.re X (str.to.re "throughpjpoptwql/rlnjPOSTwebsearch.getmirar.comHost:www.ZSearchResults.com\x13X-Mailer:\x13\x0a")))
(check-sat)
