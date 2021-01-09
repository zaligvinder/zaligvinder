(declare-const X String)
; ([^\.\?\!]*)[\.\?\!]
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re ".") (str.to.re "?") (str.to.re "!"))) (re.union (str.to.re ".") (str.to.re "?") (str.to.re "!")) (str.to.re "\x0a"))))
; DesktopSupportFiles\x2EhtmlReferer\x3Awww\x2Efreescratchandwin\x2Ecom
(assert (not (str.in.re X (str.to.re "DesktopSupportFiles\x13.htmlReferer:www.freescratchandwin.com\x0a"))))
; User-Agent\x3ADirectory
(assert (str.in.re X (str.to.re "User-Agent:Directory\x0a")))
; DISK\s+\x2Fcgi\x2Flogurl\.cgiSubject\x3AinsertX-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "DISK") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cgi/logurl.cgiSubject:insertX-Mailer:\x13\x0a")))))
(check-sat)
