(declare-const X String)
; My\x2Fdesktop\x2FWinSessionHost\x3aOnlineTPSystem\x7D\x7C
(assert (str.in.re X (str.to.re "My/desktop/WinSessionHost:OnlineTPSystem}|\x0a")))
; [-'a-zA-Z]
(assert (str.in.re X (re.++ (re.union (str.to.re "-") (str.to.re "'") (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a"))))
; /poc\/(Exploit|myClassLoader|pocMain|runCmd)\.class/ims
(assert (not (str.in.re X (re.++ (str.to.re "/poc/") (re.union (str.to.re "Exploit") (str.to.re "myClassLoader") (str.to.re "pocMain") (str.to.re "runCmd")) (str.to.re ".class/ims\x0a")))))
; zopabora\x2Einfo\s+Inside.*User-Agent\x3A\s+SystemSleuthserverUser-Agent\x3a\x2Fnewsurfer4\x2FMicrosoft
(assert (str.in.re X (re.++ (str.to.re "zopabora.info") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Inside") (re.* re.allchar) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SystemSleuth\x13serverUser-Agent:/newsurfer4/Microsoft\x0a"))))
(check-sat)
