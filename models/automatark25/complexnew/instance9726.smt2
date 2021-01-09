(declare-const X String)
; /\x2f\?[0-9a-f]{60,66}[\x3b\d]*$/U
(assert (not (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 60 66) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.* (re.union (str.to.re ";") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; too[^\n\r]*User-Agent\x3A\sHost\x3A.*IP-WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in.re X (re.++ (str.to.re "too") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "IP-WindowsAttachedPalas.starware.com/dp/search?x=\x0a")))))
; zmnjgmomgbdz\x2fzzmw\.gzt\s+Reports\s+HostHost\x3aHost\x3AHost\x3AMyWebSearchSearchAssistant
(assert (not (str.in.re X (re.++ (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Reports") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HostHost:Host:Host:MyWebSearchSearchAssistant\x0a")))))
; /\x2esearch\x2dms([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.search-ms") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; User-Agent\x3ASurveillancecomOnline
(assert (str.in.re X (str.to.re "User-Agent:Surveillance\x13comOnline\x0a")))
(check-sat)
