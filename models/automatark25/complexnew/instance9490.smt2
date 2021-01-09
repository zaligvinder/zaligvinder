(declare-const X String)
; /\x2easx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.asx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; User-Agent\x3a\x2Fnewsurfer4\x2F
(assert (not (str.in.re X (str.to.re "User-Agent:/newsurfer4/\x0a"))))
; Host\x3A\dKeylogger.*Onetrustyfiles\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Keylogger") (re.* re.allchar) (str.to.re "Onetrustyfiles.com\x0a")))))
; User-Agent\x3AChildWebGuardianHXDownloadX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "User-Agent:ChildWebGuardianHXDownloadX-Mailer:\x13\x0a"))))
(check-sat)
