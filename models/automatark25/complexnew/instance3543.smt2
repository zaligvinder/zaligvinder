(declare-const X String)
; <[^>]+>
(assert (str.in.re X (re.++ (str.to.re "<") (re.+ (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
; frame_ver2\s+communityLibrarySoftwareWinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid
(assert (not (str.in.re X (re.++ (str.to.re "frame_ver2") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "communityLibrarySoftwareWinCrashcomHost:tid=%toolbar_id\x0a")))))
(check-sat)
