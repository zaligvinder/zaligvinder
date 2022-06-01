(declare-const X String)
; traffbest\u{2E}biz\d+\.compress.*sidebar\.activeshopper\.comaresflashdownloader\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "traffbest.biz") (re.+ (re.range "0" "9")) (str.to_re ".compress") (re.* re.allchar) (str.to_re "sidebar.activeshopper.comaresflashdownloader.com\u{a}")))))
; as\u{2E}starware\u{2E}com%3fUser-Agent\u{3A}hostie
(assert (str.in_re X (str.to_re "as.starware.com%3fUser-Agent:hostie\u{a}")))
; this\w+c\.goclick\.com\d
(assert (str.in_re X (re.++ (str.to_re "this") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "c.goclick.com") (re.range "0" "9") (str.to_re "\u{a}"))))
; this\w+c\.goclick\.comletter
(assert (not (str.in_re X (re.++ (str.to_re "this") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "c.goclick.comletter\u{a}")))))
(check-sat)
