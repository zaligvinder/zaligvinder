(declare-const X String)
; welcomeforToolbarHost\x3A
(assert (str.in.re X (str.to.re "welcomeforToolbarHost:\x0a")))
; /^\/\d{9,10}\/1\/1\d{9}\.pdf$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 9 10) (re.range "0" "9")) (str.to.re "/1/1") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re ".pdf/U\x0a")))))
; http://www.scribd.com/doc/2569355/Geo-Distance-Search-with-MySQL
(assert (not (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "scribd") re.allchar (str.to.re "com/doc/2569355/Geo-Distance-Search-with-MySQL\x0a")))))
; frame_ver2\s+communityLibrarySoftwareWinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid
(assert (not (str.in.re X (re.++ (str.to.re "frame_ver2") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "communityLibrarySoftwareWinCrashcomHost:tid=%toolbar_id\x0a")))))
; /filename=[^\n]*\x2exsl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xsl/i\x0a"))))
(check-sat)
