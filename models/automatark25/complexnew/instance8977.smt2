(declare-const X String)
; IP-[^\n\r]*URL\d\u{7c}roogoo\u{7c}\.cfgmPOPrtCUSTOMPalToolbar
(assert (not (str.in_re X (re.++ (str.to_re "IP-") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "URL") (re.range "0" "9") (str.to_re "|roogoo|.cfgmPOPrtCUSTOMPalToolbar\u{a}")))))
; tv\u{2E}180solutions\u{2E}com\s+have\s+Dayspassword\u{3B}0\u{3B}Incorrect
(assert (str.in_re X (re.++ (str.to_re "tv.180solutions.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "have") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Dayspassword;0;Incorrect\u{a}"))))
; X-OSSproxy\u{3a}FTPSubject\u{3a}ServerMicrosoft\u{2A}PORT3\u{2A}Pro
(assert (not (str.in_re X (str.to_re "X-OSSproxy:FTPSubject:ServerMicrosoft*PORT3*Pro\u{a}"))))
; \u{7D}\u{7B}Trojan\u{3A}User-Agent\u{3A}byHost\u{3A}\u{b0}\u{ae}\u{b6}\u{f9}\u{cd}\u{f8}\u{b5}\u{c1}
(assert (str.in_re X (str.to_re "}{Trojan:User-Agent:byHost:\u{b0}\u{ae}\u{b6}\u{f9}\u{cd}\u{f8}\u{b5}\u{c1}\u{a}")))
; \u{2F}rssupdate\.cgiToolbarsearch\.dropspam\.com
(assert (not (str.in_re X (str.to_re "/rssupdate.cgiToolbarsearch.dropspam.com\u{a}"))))
(check-sat)
