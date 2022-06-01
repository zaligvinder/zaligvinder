(declare-const X String)
; Host\u{3a}SoftwareHost\u{3A}jokeWEBCAM-Server\u{3a}
(assert (str.in_re X (str.to_re "Host:SoftwareHost:jokeWEBCAM-Server:\u{a}")))
; traffbest\u{2E}biz\d+\.compress.*sidebar\.activeshopper\.comaresflashdownloader\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "traffbest.biz") (re.+ (re.range "0" "9")) (str.to_re ".compress") (re.* re.allchar) (str.to_re "sidebar.activeshopper.comaresflashdownloader.com\u{a}")))))
(check-sat)
