(declare-const X String)
; /\u{2e}asx([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.asx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; User-Agent\u{3a}\u{2F}newsurfer4\u{2F}
(assert (not (str.in_re X (str.to_re "User-Agent:/newsurfer4/\u{a}"))))
; Host\u{3A}\dKeylogger.*Onetrustyfiles\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Keylogger") (re.* re.allchar) (str.to_re "Onetrustyfiles.com\u{a}")))))
; User-Agent\u{3A}ChildWebGuardianHXDownloadX-Mailer\u{3a}
(assert (not (str.in_re X (str.to_re "User-Agent:ChildWebGuardianHXDownloadX-Mailer:\u{13}\u{a}"))))
(check-sat)
