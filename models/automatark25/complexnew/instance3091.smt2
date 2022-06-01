(declare-const X String)
; /\u{2e}lzh([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.lzh") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; www\u{2e}proventactics\u{2e}com\s+
(assert (not (str.in_re X (re.++ (str.to_re "www.proventactics.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
; Host\u{3A}\d+Host\u{3A}.*communitytipHost\u{3A}GirafaClient
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.* re.allchar) (str.to_re "communitytipHost:GirafaClient\u{13}\u{a}")))))
; www\u{2E}onetoolbar\u{2E}comcommunity
(assert (not (str.in_re X (str.to_re "www.onetoolbar.comcommunity\u{a}"))))
(check-sat)
