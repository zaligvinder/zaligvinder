(declare-const X String)
; .*[a-zA-Z]$
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a"))))
; connection\sHost\x3aSubject\x3A\.bmp
(assert (not (str.in.re X (re.++ (str.to.re "connection") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:Subject:.bmp\x0a")))))
; User-Agent\x3AUser-Agent\x3a
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a")))
; \.cfg\x2Fsearchfast\x2F\x22007A-SpyWebsitehttp\x3A\x2F\x2Fsupremetoolbar\.com\x2Findex\.php\?tpid=
(assert (str.in.re X (str.to.re ".cfg/searchfast/\x22007A-SpyWebsitehttp://supremetoolbar.com/index.php?tpid=\x0a")))
; Word\s+ExploiterSchwindler\x2Fr\x2Fkeys\x2Fkeys
(assert (str.in.re X (re.++ (str.to.re "Word") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ExploiterSchwindler/r/keys/keys\x0a"))))
(check-sat)
