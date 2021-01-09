(declare-const X String)
; /filename=[^\n]*\x2eopus/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".opus/i\x0a"))))
; update\.cgi\s+wwwProbnymomspyo\x2fzowy
(assert (not (str.in.re X (re.++ (str.to.re "update.cgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wwwProbnymomspyo/zowy\x0a")))))
(check-sat)
