(declare-const X String)
; searchnugget\s+User-Agent\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in.re X (re.++ (str.to.re "searchnugget\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Downloadfowclxccdxn/uxwn.ddy\x0a")))))
; /\x2ef4b([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.f4b") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Host\x3a\dATTENTION\x3A.*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "ATTENTION:") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
; /filename=[^\n]*\x2empg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mpg/i\x0a")))))
(check-sat)
