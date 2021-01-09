(declare-const X String)
; User-Agent\x3ABetaWordixqshv\x2fqzccsServer\x00
(assert (str.in.re X (str.to.re "User-Agent:BetaWordixqshv/qzccsServer\x00\x0a")))
; /filename=[^\n]*\x2emp4/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mp4/i\x0a")))))
; /\x2emanifest([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.manifest") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Host\x3A\s+www\x2Einternet-optimizer\x2EcomToolBarKeylogger
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.internet-optimizer.comToolBarKeylogger\x0a"))))
(check-sat)
