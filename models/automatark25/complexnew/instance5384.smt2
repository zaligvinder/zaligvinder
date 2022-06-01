(declare-const X String)
; /\u{2e}m4a([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.m4a") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; EI.*to\s+AppName\u{2F}GRSI\|Server\|Host\u{3A}origin\u{3D}sidefind
(assert (not (str.in_re X (re.++ (str.to_re "EI") (re.* re.allchar) (str.to_re "to") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AppName/GRSI|Server|\u{13}Host:origin=sidefind\u{a}")))))
; \u{2F}cbn\u{2F}\s+Host\u{3A}binde2give\.com
(assert (not (str.in_re X (re.++ (str.to_re "/cbn/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:binde2give.com\u{a}")))))
; /<[A-Z]+\s+[^>]*?padding-left\u{3A}\u{2D}1000px\u{3B}[^>]*text-indent\u{3A}\u{2D}1000px/smi
(assert (str.in_re X (re.++ (str.to_re "/<") (re.+ (re.range "A" "Z")) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (str.to_re ">"))) (str.to_re "padding-left:-1000px;") (re.* (re.comp (str.to_re ">"))) (str.to_re "text-indent:-1000px/smi\u{a}"))))
(check-sat)
