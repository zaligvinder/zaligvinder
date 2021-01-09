(declare-const X String)
; Port\x2Ebody=ocllceclbhs\x2fgthWeComputerLoggerHost\x3Agdvsotuqwsg\x2fdxt\.hd^User-Agent\x3A
(assert (str.in.re X (str.to.re "Port.body=ocllceclbhs/gthWeComputerLoggerHost:gdvsotuqwsg/dxt.hdUser-Agent:\x0a")))
; Host\x3A.*Peer.*Host\x3ABasicurl=http\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "Peer") (re.* re.allchar) (str.to.re "Host:Basicurl=http:\x1b\x0a"))))
; ^(([0-9])|([0-1][0-9])|([2][0-3])):(([0-9])|([0-5][0-9]))$
(assert (not (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.union (re.range "0" "9") (re.++ (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /\x2erpt([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.rpt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\x2expm([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.xpm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
