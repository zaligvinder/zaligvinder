(declare-const X String)
; /\x2ettf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.ttf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2eoga/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".oga/i\x0a"))))
; software.*com\x2Findex\.php\?tpid=\s+Host\x3A\x2Ftoolbar\x2Fsupremetb
(assert (str.in.re X (re.++ (str.to.re "software") (re.* re.allchar) (str.to.re "com/index.php?tpid=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:/toolbar/supremetb\x0a"))))
; (\d{4,6})
(assert (str.in.re X (re.++ ((_ re.loop 4 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; www\.actualnames\.com\s+toolbar_domain_redirect\s+Contactfrom=GhostVoiceServer
(assert (str.in.re X (re.++ (str.to.re "www.actualnames.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "toolbar_domain_redirect") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Contactfrom=GhostVoiceServer\x0a"))))
(check-sat)
