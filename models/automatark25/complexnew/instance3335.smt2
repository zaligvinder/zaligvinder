(declare-const X String)
; toolbarplace\x2Ecom[^\n\r]*Server[^\n\r]*X-Mailer\x3a\sUser-Agent\x3aHost\x3ABar\x2Fnewsurfer4\x2F
(assert (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Server") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "User-Agent:Host:Bar/newsurfer4/\x0a"))))
; ^[-+]?[1-9]\d*\.?[0]*$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.range "1" "9") (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (str.to.re "0")) (str.to.re "\x0a"))))
; /load\.php\?spl=(Spreadsheet|DirectX_DS|MS09-002|MS06-006|mdac|RoxioCP v3\.2|wvf|flash|Opera_telnet|compareTo|jno|Font_FireFox|pdf_exp|aol|javad|ActiveX_pack)/U
(assert (str.in.re X (re.++ (str.to.re "/load.php?spl=") (re.union (str.to.re "Spreadsheet") (str.to.re "DirectX_DS") (str.to.re "MS09-002") (str.to.re "MS06-006") (str.to.re "mdac") (str.to.re "RoxioCP v3.2") (str.to.re "wvf") (str.to.re "flash") (str.to.re "Opera_telnet") (str.to.re "compareTo") (str.to.re "jno") (str.to.re "Font_FireFox") (str.to.re "pdf_exp") (str.to.re "aol") (str.to.re "javad") (str.to.re "ActiveX_pack")) (str.to.re "/U\x0a"))))
; Web-Mail\s+\x2Fcgi\x2Flogurl\.cgi.*SurveillanceHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Web-Mail") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cgi/logurl.cgi") (re.* re.allchar) (str.to.re "Surveillance\x13Host:\x0a")))))
; zmnjgmomgbdz\x2fzzmw\.gzt\d+Ready
(assert (not (str.in.re X (re.++ (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.range "0" "9")) (str.to.re "Ready\x0a")))))
(check-sat)
