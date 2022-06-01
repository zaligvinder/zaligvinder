(declare-const X String)
; Host\u{3A}\d+Host\u{3A}.*communitytipHost\u{3A}GirafaClient
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.* re.allchar) (str.to_re "communitytipHost:GirafaClient\u{13}\u{a}")))))
(check-sat)
