(declare-const X String)
; Ready[^\n\r]*User-Agent\x3A\s+Client\dFrom\x3AWebtool\x2Eworld2\x2EcnUser-Agent\x3AUser-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "Ready") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Client") (re.range "0" "9") (str.to.re "From:Webtool.world2.cn\x13User-Agent:User-Agent:\x0a"))))
; /filename=[^\n]*\x2ewps/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wps/i\x0a"))))
; [^A-Za-z0-9_@\.]|@{2,}|\.{5,}
(assert (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (str.to.re "@")) (re.* (str.to.re "@"))) (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (str.to.re ".")) (re.* (str.to.re "."))) (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re "@") (str.to.re "."))))
(check-sat)
