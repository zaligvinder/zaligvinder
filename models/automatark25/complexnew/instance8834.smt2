(declare-const X String)
; OS\x2F\d+User-Agent\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "OS/") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:User-Agent:\x0a")))))
; /filename=[^\n]*\x2ejpx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpx/i\x0a")))))
; Monitor\s+Supervisor\s+User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Monitor") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Supervisor") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a")))))
(check-sat)
