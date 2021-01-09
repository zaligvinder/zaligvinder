(declare-const X String)
; body=\x2521\x2521\x2521Optix\s+Host\x3a
(assert (str.in.re X (re.++ (str.to.re "body=%21%21%21Optix\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
; User-Agent\x3A\dServer
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.range "0" "9") (str.to.re "Server\x0a")))))
; ^[1-9][0-9]{1,6}\-[0-9]{2}\-[0-9]
(assert (not (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 1 6) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a")))))
; richfind\x2Ecomdcww\x2Edmcast\x2Ecom
(assert (str.in.re X (str.to.re "richfind.comdcww.dmcast.com\x0a")))
(check-sat)
