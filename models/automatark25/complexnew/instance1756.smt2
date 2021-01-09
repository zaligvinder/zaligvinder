(declare-const X String)
; /\x2eflv([\?\x5c\x2f]|$)/Umsi
(assert (str.in.re X (re.++ (str.to.re "/.flv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/Umsi\x0a"))))
; Ready[^\n\r]*User-Agent\x3A\s+Client\dFrom\x3AWebtool\x2Eworld2\x2EcnUser-Agent\x3AUser-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "Ready") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Client") (re.range "0" "9") (str.to.re "From:Webtool.world2.cn\x13User-Agent:User-Agent:\x0a"))))
; .*[Pp]en[Ii1][\$s].*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "P") (str.to.re "p")) (str.to.re "en") (re.union (str.to.re "I") (str.to.re "i") (str.to.re "1")) (re.union (str.to.re "$") (str.to.re "s")) (re.* re.allchar) (str.to.re "\x0a")))))
; User-Agent\x3A\s+\x7D\x7BPassword\x3AAnal
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1bAnal\x0a"))))
(check-sat)
