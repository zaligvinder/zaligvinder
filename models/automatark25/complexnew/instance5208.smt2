(declare-const X String)
; ReportIterenetUser-Agent\u{3A}Host\u{3A}KEYLOGGER\u{2F}bar_pl\u{2F}chk_bar\.fcgi
(assert (not (str.in_re X (str.to_re "ReportIterenetUser-Agent:Host:KEYLOGGER/bar_pl/chk_bar.fcgi\u{a}"))))
; ((\\")|[^"(\\")])+
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "\u{5c}\u{22}") (str.to_re "\u{22}") (str.to_re "(") (str.to_re "\u{5c}") (str.to_re ")"))) (str.to_re "\u{a}"))))
; Toolbar[^\n\r]*tvshowtickets\w+weatherHost\u{3A}User-Agent\u{3A}twfofrfzlugq\u{2f}eve\.qd
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "tvshowtickets") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "weatherHost:User-Agent:twfofrfzlugq/eve.qd\u{a}"))))
; /\u{2e}cis([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.cis") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
