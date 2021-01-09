(declare-const X String)
; IP-[^\n\r]*URL\d\x7croogoo\x7c\.cfgmPOPrtCUSTOMPalToolbar
(assert (not (str.in.re X (re.++ (str.to.re "IP-") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "URL") (re.range "0" "9") (str.to.re "|roogoo|.cfgmPOPrtCUSTOMPalToolbar\x0a")))))
; tv\x2E180solutions\x2Ecom\s+have\s+Dayspassword\x3B0\x3BIncorrect
(assert (str.in.re X (re.++ (str.to.re "tv.180solutions.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "have") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Dayspassword;0;Incorrect\x0a"))))
; X-OSSproxy\x3aFTPSubject\x3aServerMicrosoft\x2APORT3\x2APro
(assert (not (str.in.re X (str.to.re "X-OSSproxy:FTPSubject:ServerMicrosoft*PORT3*Pro\x0a"))))
; \x7D\x7BTrojan\x3AUser-Agent\x3AbyHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (str.in.re X (str.to.re "}{Trojan:User-Agent:byHost:\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1\x0a")))
; \x2Frssupdate\.cgiToolbarsearch\.dropspam\.com
(assert (not (str.in.re X (str.to.re "/rssupdate.cgiToolbarsearch.dropspam.com\x0a"))))
(check-sat)
