(declare-const X String)
; User-Agent\x3a\sRequestwww\x2Ealtnet\x2EcomSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Requestwww.altnet.com\x1bSubject:\x0a")))))
; /\x2ettf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ttf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /domain=[^&]*?([\x3b\x60]|\x24\x28|%3b|%60|%24%28)/Pi
(assert (str.in.re X (re.++ (str.to.re "/domain=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "$(") (str.to.re "%3b") (str.to.re "%60") (str.to.re "%24%28") (str.to.re ";") (str.to.re "`")) (str.to.re "/Pi\x0a"))))
; /^\/\d{10}\/\d{10}\.tpl$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re ".tpl/U\x0a")))))
(check-sat)
