(declare-const X String)
; /\x2efon([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.fon") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; download\x2Eeblocs\x2EcomHost\x3AReferer\x3A
(assert (not (str.in.re X (str.to.re "download.eblocs.comHost:Referer:\x0a"))))
; /load\.php\?spl=(Spreadsheet|DirectX_DS|MS09-002|MS06-006|mdac|RoxioCP v3\.2|wvf|flash|Opera_telnet|compareTo|jno|Font_FireFox|pdf_exp|aol|javad|ActiveX_pack)/U
(assert (not (str.in.re X (re.++ (str.to.re "/load.php?spl=") (re.union (str.to.re "Spreadsheet") (str.to.re "DirectX_DS") (str.to.re "MS09-002") (str.to.re "MS06-006") (str.to.re "mdac") (str.to.re "RoxioCP v3.2") (str.to.re "wvf") (str.to.re "flash") (str.to.re "Opera_telnet") (str.to.re "compareTo") (str.to.re "jno") (str.to.re "Font_FireFox") (str.to.re "pdf_exp") (str.to.re "aol") (str.to.re "javad") (str.to.re "ActiveX_pack")) (str.to.re "/U\x0a")))))
; this\s+MyBrowser\d+Redirector\x22ServerHost\x3AX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "this") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "MyBrowser") (re.+ (re.range "0" "9")) (str.to.re "Redirector\x22ServerHost:X-Mailer:\x13\x0a"))))
(check-sat)
