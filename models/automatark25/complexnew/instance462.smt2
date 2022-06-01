(declare-const X String)
; hjhgquqssq\u{2f}pjm[^\n\r]*User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "hjhgquqssq/pjm") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}")))))
; YAHOODesktopHost\u{3a}LOGHost\u{3A}tvshowticketsResultsFROM\u{3A}
(assert (str.in_re X (str.to_re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\u{a}")))
; User-Agent\u{3A}User-Agent\u{3a}
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}"))))
; [0-9a-fA-F]+
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "\u{a}")))))
(check-sat)
