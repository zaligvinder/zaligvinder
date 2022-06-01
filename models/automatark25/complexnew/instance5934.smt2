(declare-const X String)
; forum=From\u{3a}comTencentTravelerBackAtTaCkExplorer
(assert (not (str.in_re X (str.to_re "forum=From:comTencentTravelerBackAtTaCkExplorer\u{a}"))))
; Information\s+Host\u{3A}.*com
(assert (not (str.in_re X (re.++ (str.to_re "Information") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "com\u{a}")))))
; hotbar\s+ocllceclbhs\u{2f}gthftpquickbruteUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "hotbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gthftpquickbruteUser-Agent:\u{a}"))))
; /\/[a-zA-Z_-]+\.rtf$/U
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "-"))) (str.to_re ".rtf/U\u{a}"))))
; securityon\u{3A}Host\u{3A}Redirector\u{22}ServerHost\u{3A}
(assert (str.in_re X (str.to_re "securityon:Host:Redirector\u{22}ServerHost:\u{a}")))
(check-sat)
