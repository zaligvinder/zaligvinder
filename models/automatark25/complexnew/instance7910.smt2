(declare-const X String)
; \.cfg\d+stale\d+GmbHPG=SPEEDBARcuReferer\u{3A}Spediazmnjgmomgbdz\u{2f}zzmw\.gztHost\u{3A}Host\u{3A}zopabora\u{2E}info
(assert (str.in_re X (re.++ (str.to_re ".cfg") (re.+ (re.range "0" "9")) (str.to_re "stale") (re.+ (re.range "0" "9")) (str.to_re "GmbHPG=SPEEDBARcuReferer:Spediazmnjgmomgbdz/zzmw.gztHost:Host:zopabora.info\u{a}"))))
; \w*$
(assert (not (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
; /\?java\=[0-9]{2,6}$/U
(assert (not (str.in_re X (re.++ (str.to_re "/?java=") ((_ re.loop 2 6) (re.range "0" "9")) (str.to_re "/U\u{a}")))))
; snprtz\u{7C}dialnoref\u{3D}\u{25}user\u{5F}idPG=SPEEDBAR
(assert (str.in_re X (str.to_re "snprtz|dialnoref=%user_idPG=SPEEDBAR\u{a}")))
(check-sat)
