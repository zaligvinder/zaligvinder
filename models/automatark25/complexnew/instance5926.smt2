(declare-const X String)
; ([^\.\?\!]*)[\.\?\!]
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re ".") (str.to_re "?") (str.to_re "!"))) (re.union (str.to_re ".") (str.to_re "?") (str.to_re "!")) (str.to_re "\u{a}"))))
; DesktopSupportFiles\u{2E}htmlReferer\u{3A}www\u{2E}freescratchandwin\u{2E}com
(assert (not (str.in_re X (str.to_re "DesktopSupportFiles\u{13}.htmlReferer:www.freescratchandwin.com\u{a}"))))
; User-Agent\u{3A}Directory
(assert (str.in_re X (str.to_re "User-Agent:Directory\u{a}")))
; DISK\s+\u{2F}cgi\u{2F}logurl\.cgiSubject\u{3A}insertX-Mailer\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "DISK") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cgi/logurl.cgiSubject:insertX-Mailer:\u{13}\u{a}")))))
(check-sat)
