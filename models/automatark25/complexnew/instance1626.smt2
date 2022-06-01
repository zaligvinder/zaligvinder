(declare-const X String)
; Host\u{3A}\dKeylogger.*Onetrustyfiles\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Keylogger") (re.* re.allchar) (str.to_re "Onetrustyfiles.com\u{a}")))))
; tv\u{2E}180solutions\u{2E}comGirlFriendHost\u{3A}
(assert (not (str.in_re X (str.to_re "tv.180solutions.comGirlFriendHost:\u{a}"))))
; www\u{2E}alfacleaner\u{2E}comHost\u{3a}Logs
(assert (str.in_re X (str.to_re "www.alfacleaner.comHost:Logs\u{a}")))
; /\u{2e}pptx([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.pptx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; User-Agent\u{3A}SpyPORT-ischeck=Component
(assert (not (str.in_re X (str.to_re "User-Agent:SpyPORT-ischeck=Component\u{a}"))))
(check-sat)
