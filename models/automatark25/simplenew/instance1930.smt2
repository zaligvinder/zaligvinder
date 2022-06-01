(declare-const X String)
; traffbest\u{2E}biz\d+\.compress.*sidebar\.activeshopper\.comaresflashdownloader\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "traffbest.biz") (re.+ (re.range "0" "9")) (str.to_re ".compress") (re.* re.allchar) (str.to_re "sidebar.activeshopper.comaresflashdownloader.com\u{a}")))))
(check-sat)
