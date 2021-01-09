(declare-const X String)
; WinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid4\x2e8\x2e4
(assert (str.in.re X (str.to.re "WinCrashcomHost:tid=%toolbar_id4.8.4\x0a")))
; sports\s+ToolbarScanerX-Mailer\x3AInformation
(assert (str.in.re X (re.++ (str.to.re "sports") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ToolbarScanerX-Mailer:\x13Information\x0a"))))
; SpywareStrike.*Subject\x3A\s+Pcast\x2Edat\x2EToolbar
(assert (not (str.in.re X (re.++ (str.to.re "SpywareStrike") (re.* re.allchar) (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Pcast.dat.Toolbar\x0a")))))
(check-sat)
