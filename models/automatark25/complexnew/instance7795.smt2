(declare-const X String)
; Activityfilename=\x22StarLoggerDAWeb-Mail
(assert (str.in.re X (str.to.re "Activityfilename=\x22StarLoggerDAWeb-Mail\x0a")))
; \x7D\x7BPort\x3AHost\x3Amqnqgijmng\x2fojNavhelperUser-Agent\x3A
(assert (str.in.re X (str.to.re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\x0a")))
; /\x2emanifest([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.manifest") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; www\x2Eserverlogic3\x2Ecom
(assert (not (str.in.re X (str.to.re "www.serverlogic3.com\x0a"))))
; (^\*\.[a-zA-Z][a-zA-Z][a-zA-Z]$)|(^\*\.\*$)
(assert (str.in.re X (re.union (re.++ (str.to.re "*.") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "*.*\x0a"))))
(check-sat)
