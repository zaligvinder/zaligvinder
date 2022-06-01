(declare-const X String)
; http://www.mail-password-recovery.com/
(assert (str.in_re X (re.++ (str.to_re "http://www") re.allchar (str.to_re "mail-password-recovery") re.allchar (str.to_re "com/\u{a}"))))
; User-Agent\u{3A}\s+Robert
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Robert\u{a}"))))
; \u{2F}cgi\u{2F}logurl\.cgi\s+Host\u{3A}User-Agent\u{3A}Surveillancecom
(assert (not (str.in_re X (re.++ (str.to_re "/cgi/logurl.cgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:User-Agent:Surveillance\u{13}com\u{a}")))))
; [0-9]+
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; /\/pdfx\.html$/U
(assert (str.in_re X (str.to_re "//pdfx.html/U\u{a}")))
(check-sat)
