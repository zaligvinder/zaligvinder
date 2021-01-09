(declare-const X String)
; /filename=[^\n]*\x2emet/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".met/i\x0a"))))
; hostie\s+freeIPaddrs\s+TPSystemHost\x3a\x7D\x7BUser\x3AAlert\x2Fcgi-bin\x2F
(assert (str.in.re X (re.++ (str.to.re "hostie") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "freeIPaddrs") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TPSystemHost:}{User:Alert/cgi-bin/\x0a"))))
; Host\x3AHost\x3afhfksjzsfu\x2fahm\.uqsHost\x3Afowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (str.to.re "Host:Host:fhfksjzsfu/ahm.uqsHost:fowclxccdxn/uxwn.ddy\x0a")))
; X-OSSproxy\x3a\dMicrosoft\x2APORT3\x2AProLive\+Version\+3A
(assert (str.in.re X (re.++ (str.to.re "X-OSSproxy:") (re.range "0" "9") (str.to.re "Microsoft*PORT3*ProLive+Version+3A\x0a"))))
; ^[A-Z][a-z]+((eir|(n|l)h)(a|o))$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a") (re.union (str.to.re "eir") (re.++ (re.union (str.to.re "n") (str.to.re "l")) (str.to.re "h"))) (re.union (str.to.re "a") (str.to.re "o"))))))
(check-sat)
