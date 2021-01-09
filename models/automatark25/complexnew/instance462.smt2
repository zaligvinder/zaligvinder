(declare-const X String)
; hjhgquqssq\x2fpjm[^\n\r]*User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "hjhgquqssq/pjm") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a")))))
; YAHOODesktopHost\x3aLOGHost\x3AtvshowticketsResultsFROM\x3A
(assert (str.in.re X (str.to.re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\x0a")))
; User-Agent\x3AUser-Agent\x3a
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a"))))
; [0-9a-fA-F]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a")))))
(check-sat)
