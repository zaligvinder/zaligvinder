(declare-const X String)
; NetTracker\.htaServerTheef2trustyfiles\u{2E}comlogsHost\u{3A}version
(assert (str.in_re X (str.to_re "NetTracker.htaServerTheef2trustyfiles.comlogsHost:version\u{a}")))
; dll\u{3F}\w+updates\w+Host\u{3a}SoftwareHost\u{3A}joke
(assert (str.in_re X (re.++ (str.to_re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "updates") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:SoftwareHost:joke\u{a}"))))
; throughpjpoptwql\u{2f}rlnjPOSTwebsearch\.getmirar\.comHost\u{3A}www\u{2E}ZSearchResults\u{2E}comX-Mailer\u{3A}
(assert (str.in_re X (str.to_re "throughpjpoptwql/rlnjPOSTwebsearch.getmirar.comHost:www.ZSearchResults.com\u{13}X-Mailer:\u{13}\u{a}")))
(check-sat)
