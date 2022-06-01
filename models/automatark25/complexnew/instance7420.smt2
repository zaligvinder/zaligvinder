(declare-const X String)
; AdTools\d+rprpgbnrppb\u{2f}ciExplorer\u{2F}sto=notificationfindwww\u{2E}makemesearch\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "AdTools") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ciExplorer/sto=notification\u{13}findwww.makemesearch.com\u{a}"))))
; \[\w+\]\s+((.*=.*\s+)*|[^\[])
(assert (not (str.in_re X (re.++ (str.to_re "[") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "]") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.* (re.++ (re.* re.allchar) (str.to_re "=") (re.* re.allchar) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (re.comp (str.to_re "["))) (str.to_re "\u{a}")))))
; Host\u{3A}\w+wwwfromToolbartheServer\u{3A}www\u{2E}searchreslt\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "wwwfromToolbartheServer:www.searchreslt.com\u{a}"))))
; fsbuffshprrprt-cs-Host\u{3A}
(assert (not (str.in_re X (str.to_re "fsbuffshprrprt-cs-\u{13}Host:\u{a}"))))
(check-sat)
