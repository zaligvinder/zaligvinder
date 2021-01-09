(declare-const X String)
; \.cfg\d+stale\d+GmbHPG=SPEEDBARcuReferer\x3ASpediazmnjgmomgbdz\x2fzzmw\.gztHost\x3AHost\x3Azopabora\x2Einfo
(assert (str.in.re X (re.++ (str.to.re ".cfg") (re.+ (re.range "0" "9")) (str.to.re "stale") (re.+ (re.range "0" "9")) (str.to.re "GmbHPG=SPEEDBARcuReferer:Spediazmnjgmomgbdz/zzmw.gztHost:Host:zopabora.info\x0a"))))
; \w*$
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; /\?java\=[0-9]{2,6}$/U
(assert (not (str.in.re X (re.++ (str.to.re "/?java=") ((_ re.loop 2 6) (re.range "0" "9")) (str.to.re "/U\x0a")))))
; snprtz\x7Cdialnoref\x3D\x25user\x5FidPG=SPEEDBAR
(assert (str.in.re X (str.to.re "snprtz|dialnoref=%user_idPG=SPEEDBAR\x0a")))
(check-sat)
