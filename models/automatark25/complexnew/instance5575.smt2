(declare-const X String)
; /\r\nLocation\x3a\x20https\x3a\x2f{2}dl\.dropboxusercontent\.com\/[a-zA-Z\d\x2f]{5,32}\/avcheck\.exe\r\n\r\n$/H
(assert (not (str.in.re X (re.++ (str.to.re "/\x0d\x0aLocation: https:") ((_ re.loop 2 2) (str.to.re "/")) (str.to.re "dl.dropboxusercontent.com/") ((_ re.loop 5 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/"))) (str.to.re "/avcheck.exe\x0d\x0a\x0d\x0a/H\x0a")))))
; DmInf\x5E\s+Contactfrom=GhostVoiceServerUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "DmInf^") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Contactfrom=GhostVoiceServerUser-Agent:\x0a")))))
(check-sat)
