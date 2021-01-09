(declare-const X String)
; Anal\s+news.*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Anal") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "news") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
; /filename=[^\n]*\x2ewebm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".webm/i\x0a")))))
; /^\x2Fcap\x2Ftemp\x2F[A-Za-z0-9]+\x2Ejpg/miU
(assert (str.in.re X (re.++ (str.to.re "//cap/temp/") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jpg/miU\x0a"))))
; Host\x3APortawww\.thecommunicator\.net
(assert (not (str.in.re X (str.to.re "Host:Portawww.thecommunicator.net\x0a"))))
; Word\s+User-Agent\x3awww\x2Esogou\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Word") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:www.sogou.com\x0a")))))
(check-sat)
