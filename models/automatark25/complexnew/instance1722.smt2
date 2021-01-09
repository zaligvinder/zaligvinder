(declare-const X String)
; \+353\(0\)\s\d\s\d{3}\s\d{4}
(assert (str.in.re X (re.++ (str.to.re "+353(0)") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.range "0" "9") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; Server\x2Fdownload\x2Ftoolbar\x2Flocatorstoolbar\x2Ehtml%3fSubject\x3AEveryware
(assert (not (str.in.re X (str.to.re "Server/download/toolbar/locatorstoolbar.html%3fSubject:Everyware\x0a"))))
; /filename=[^\n]*\x2eamf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".amf/i\x0a"))))
; /^\/info\.php\?act\x3d(list|online)/U
(assert (str.in.re X (re.++ (str.to.re "//info.php?act=") (re.union (str.to.re "list") (str.to.re "online")) (str.to.re "/U\x0a"))))
; \x2Ehtml\s+IDENTIFY\s+\x2Fbar_pl\x2Ffav\.fcgiwwwUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re ".html") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "IDENTIFY") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/bar_pl/fav.fcgiwwwUser-Agent:\x0a")))))
(check-sat)
