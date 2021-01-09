(declare-const X String)
; \.cfg\d+stale\d+GmbHPG=SPEEDBARcuReferer\x3ASpediazmnjgmomgbdz\x2fzzmw\.gztHost\x3AHost\x3Azopabora\x2Einfo
(assert (not (str.in.re X (re.++ (str.to.re ".cfg") (re.+ (re.range "0" "9")) (str.to.re "stale") (re.+ (re.range "0" "9")) (str.to.re "GmbHPG=SPEEDBARcuReferer:Spediazmnjgmomgbdz/zzmw.gztHost:Host:zopabora.info\x0a")))))
(check-sat)
