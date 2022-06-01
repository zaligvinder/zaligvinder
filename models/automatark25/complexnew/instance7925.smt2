(declare-const X String)
; \u{28}BDLL\u{29}\s+CD\u{2F}.*Host\u{3A}
(assert (str.in_re X (re.++ (str.to_re "(BDLL)\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CD/") (re.* re.allchar) (str.to_re "Host:\u{a}"))))
; YAHOODesktopHost\u{3a}LOGHost\u{3A}tvshowticketsResultsFROM\u{3A}
(assert (not (str.in_re X (str.to_re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\u{a}"))))
(check-sat)
