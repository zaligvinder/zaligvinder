(declare-const X String)
; ^(.|\n){0,16}$
(assert (str.in.re X (re.++ ((_ re.loop 0 16) (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "\x0a"))))
; dialup\x5fvpn\x40hermangroup\x2EorgUser-Agent\x3A
(assert (str.in.re X (str.to.re "dialup_vpn@hermangroup.orgUser-Agent:\x0a")))
; ^(([1-9]{1}[0-9]{0,5}([.]{1}[0-9]{0,2})?)|(([0]{1}))([.]{1}[0-9]{0,2})?)$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (str.to.re "0")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 0 2) (re.range "0" "9")))))) (str.to.re "\x0a"))))
; FTP.*www\x2Ewordiq\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "FTP") (re.* re.allchar) (str.to.re "www.wordiq.com\x1b\x0a"))))
; frame_ver2\s+communityLibrarySoftwareWinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid
(assert (not (str.in.re X (re.++ (str.to.re "frame_ver2") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "communityLibrarySoftwareWinCrashcomHost:tid=%toolbar_id\x0a")))))
(check-sat)
