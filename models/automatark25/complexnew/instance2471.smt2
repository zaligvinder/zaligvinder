(declare-const X String)
; /\/setup.cgi.*?TimeToLive=[^&]*?(%60|\x60)/iU
(assert (str.in.re X (re.++ (str.to.re "//setup") re.allchar (str.to.re "cgi") (re.* re.allchar) (str.to.re "TimeToLive=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "%60") (str.to.re "`")) (str.to.re "/iU\x0a"))))
; /filename=[^\n]*\x2eogv/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ogv/i\x0a"))))
; IDENTIFY.*\x2Fezsb\d+X-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "IDENTIFY") (re.* re.allchar) (str.to.re "/ezsb") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13\x0a"))))
; /\x2f[a-z-_]{90,}\x2e(html|php)$/U
(assert (str.in.re X (re.++ (str.to.re "//.") (re.union (str.to.re "html") (str.to.re "php")) (str.to.re "/U\x0a") ((_ re.loop 90 90) (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "_"))) (re.* (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "_"))))))
(check-sat)
