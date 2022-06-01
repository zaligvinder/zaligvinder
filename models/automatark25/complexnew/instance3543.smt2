(declare-const X String)
; <[^>]+>
(assert (str.in_re X (re.++ (str.to_re "<") (re.+ (re.comp (str.to_re ">"))) (str.to_re ">\u{a}"))))
; frame_ver2\s+communityLibrarySoftwareWinCrashcomHost\u{3A}tid\u{3D}\u{25}toolbar\u{5F}id
(assert (not (str.in_re X (re.++ (str.to_re "frame_ver2") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "communityLibrarySoftwareWinCrashcomHost:tid=%toolbar_id\u{a}")))))
(check-sat)
