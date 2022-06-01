(declare-const X String)
; /filename=[^\n]*\u{2e}url/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".url/i\u{a}"))))
; www\u{2E}yoogee\u{2E}comserverHost\u{3A}ref\u{3D}\u{25}user\u{5F}id
(assert (not (str.in_re X (str.to_re "www.yoogee.com\u{13}serverHost:ref=%user_id\u{a}"))))
; User-Agent\u{3A}User-Agent\u{3A}wp-includes\u{2F}theme\u{2E}php\u{3F}frame_ver2
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:wp-includes/theme.php?frame_ver2\u{a}")))
(check-sat)
