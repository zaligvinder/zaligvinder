(declare-const X String)
; Host\x3A\dKeylogger.*Onetrustyfiles\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Keylogger") (re.* re.allchar) (str.to.re "Onetrustyfiles.com\x0a")))))
; tv\x2E180solutions\x2EcomGirlFriendHost\x3A
(assert (not (str.in.re X (str.to.re "tv.180solutions.comGirlFriendHost:\x0a"))))
; www\x2Ealfacleaner\x2EcomHost\x3aLogs
(assert (str.in.re X (str.to.re "www.alfacleaner.comHost:Logs\x0a")))
; /\x2epptx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pptx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; User-Agent\x3ASpyPORT-ischeck=Component
(assert (not (str.in.re X (str.to.re "User-Agent:SpyPORT-ischeck=Component\x0a"))))
(check-sat)
