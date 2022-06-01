(declare-const X String)
; /\u{2e}fon([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.fon") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; download\u{2E}eblocs\u{2E}comHost\u{3A}Referer\u{3A}
(assert (not (str.in_re X (str.to_re "download.eblocs.comHost:Referer:\u{a}"))))
; /load\.php\?spl=(Spreadsheet|DirectX_DS|MS09-002|MS06-006|mdac|RoxioCP v3\.2|wvf|flash|Opera_telnet|compareTo|jno|Font_FireFox|pdf_exp|aol|javad|ActiveX_pack)/U
(assert (not (str.in_re X (re.++ (str.to_re "/load.php?spl=") (re.union (str.to_re "Spreadsheet") (str.to_re "DirectX_DS") (str.to_re "MS09-002") (str.to_re "MS06-006") (str.to_re "mdac") (str.to_re "RoxioCP v3.2") (str.to_re "wvf") (str.to_re "flash") (str.to_re "Opera_telnet") (str.to_re "compareTo") (str.to_re "jno") (str.to_re "Font_FireFox") (str.to_re "pdf_exp") (str.to_re "aol") (str.to_re "javad") (str.to_re "ActiveX_pack")) (str.to_re "/U\u{a}")))))
; this\s+MyBrowser\d+Redirector\u{22}ServerHost\u{3A}X-Mailer\u{3A}
(assert (str.in_re X (re.++ (str.to_re "this") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "MyBrowser") (re.+ (re.range "0" "9")) (str.to_re "Redirector\u{22}ServerHost:X-Mailer:\u{13}\u{a}"))))
(check-sat)
