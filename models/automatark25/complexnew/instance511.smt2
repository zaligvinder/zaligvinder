(declare-const X String)
; \u{2E}html\s+IDENTIFYwww\u{2E}ccnnlc\u{2E}comfilename=\u{22}Referer\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re ".html") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "IDENTIFYwww.ccnnlc.com\u{13}filename=\u{22}Referer:\u{a}")))))
; Host\u{3A}as\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=
(assert (not (str.in_re X (str.to_re "Host:as.starware.com/dp/search?x=\u{a}"))))
; /filename=[^\n]*\u{2e}flv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".flv/i\u{a}")))))
; url=http\u{3A}\s+jsp[^\n\r]*serverHOST\u{3A}Subject\u{3A}i\-femdom\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "url=http:\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "jsp") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "serverHOST:Subject:i-femdom.com\u{a}"))))
; as\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=.*X-Mailer\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "as.starware.com/dp/search?x=") (re.* re.allchar) (str.to_re "X-Mailer:\u{13}\u{a}")))))
(check-sat)
