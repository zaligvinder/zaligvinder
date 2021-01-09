(declare-const X String)
; /filename=[^\n]*\x2esearch-ms/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".search-ms/i\x0a"))))
; EFError.*Host\x3A\swww\x2emalware-stopper\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "EFError") (re.* re.allchar) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a")))))
; action\x2EIP-FTPsearch\.dropspam\.com
(assert (not (str.in.re X (str.to.re "action.IP-FTPsearch.dropspam.com\x0a"))))
; HXLogOnlyanHost\x3AspasHost\x3A
(assert (not (str.in.re X (str.to.re "HXLogOnlyanHost:spasHost:\x0a"))))
; logsFictionalReporterCookieUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "logsFictionalReporterCookieUser-Agent:\x0a"))))
(check-sat)
