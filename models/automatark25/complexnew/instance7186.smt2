(declare-const X String)
; My\u{2F}desktop\u{2F}WinSessionHost\u{3a}OnlineTPSystem\u{7D}\u{7C}
(assert (str.in_re X (str.to_re "My/desktop/WinSessionHost:OnlineTPSystem}|\u{a}")))
; [-'a-zA-Z]
(assert (str.in_re X (re.++ (re.union (str.to_re "-") (str.to_re "'") (re.range "a" "z") (re.range "A" "Z")) (str.to_re "\u{a}"))))
; /poc\/(Exploit|myClassLoader|pocMain|runCmd)\.class/ims
(assert (not (str.in_re X (re.++ (str.to_re "/poc/") (re.union (str.to_re "Exploit") (str.to_re "myClassLoader") (str.to_re "pocMain") (str.to_re "runCmd")) (str.to_re ".class/ims\u{a}")))))
; zopabora\u{2E}info\s+Inside.*User-Agent\u{3A}\s+SystemSleuthserverUser-Agent\u{3a}\u{2F}newsurfer4\u{2F}Microsoft
(assert (str.in_re X (re.++ (str.to_re "zopabora.info") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Inside") (re.* re.allchar) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SystemSleuth\u{13}serverUser-Agent:/newsurfer4/Microsoft\u{a}"))))
(check-sat)
