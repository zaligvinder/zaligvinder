(declare-const X String)
; \.cfg\d+stale\d+GmbHPG=SPEEDBARcuReferer\u{3A}Spediazmnjgmomgbdz\u{2f}zzmw\.gztHost\u{3A}Host\u{3A}zopabora\u{2E}info
(assert (not (str.in_re X (re.++ (str.to_re ".cfg") (re.+ (re.range "0" "9")) (str.to_re "stale") (re.+ (re.range "0" "9")) (str.to_re "GmbHPG=SPEEDBARcuReferer:Spediazmnjgmomgbdz/zzmw.gztHost:Host:zopabora.info\u{a}")))))
(check-sat)
