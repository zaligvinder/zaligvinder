(declare-const X String)
; clvompycem\u{2f}cen\.vcnHost\u{3A}User-Agent\u{3A}\u{d}\u{a}
(assert (not (str.in_re X (str.to_re "clvompycem/cen.vcnHost:User-Agent:\u{d}\u{a}\u{a}"))))
; \u{2F}bar_pl\u{2F}chk\.fcgiHost\u{3a}
(assert (str.in_re X (str.to_re "/bar_pl/chk.fcgiHost:\u{a}")))
; traffbest\u{2E}biz\d+\.compress.*sidebar\.activeshopper\.comaresflashdownloader\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "traffbest.biz") (re.+ (re.range "0" "9")) (str.to_re ".compress") (re.* re.allchar) (str.to_re "sidebar.activeshopper.comaresflashdownloader.com\u{a}"))))
; /\u{2e}ttf([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.ttf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
