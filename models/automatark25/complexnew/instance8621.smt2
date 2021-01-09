(declare-const X String)
; Port.*Pro.*www\x2eproventactics\x2ecomwv=update\.cgidrivesDays
(assert (not (str.in.re X (re.++ (str.to.re "Port") (re.* re.allchar) (str.to.re "Pro") (re.* re.allchar) (str.to.re "www.proventactics.comwv=update.cgidrivesDays\x0a")))))
; X-OSSproxy\x3aFTPSubject\x3aServerMicrosoft\x2APORT3\x2APro
(assert (str.in.re X (str.to.re "X-OSSproxy:FTPSubject:ServerMicrosoft*PORT3*Pro\x0a")))
(check-sat)
