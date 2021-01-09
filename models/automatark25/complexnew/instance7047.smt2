(declare-const X String)
; Host\x3AHost\x3Abody=\x2521\x2521\x2521Optix
(assert (str.in.re X (str.to.re "Host:Host:body=%21%21%21Optix\x13\x0a")))
; \.fcgi[^\n\r]*Host\x3A\s\x5D\x2520\x5BPort_NETObserveTM_SEARCH3
(assert (str.in.re X (re.++ (str.to.re ".fcgi") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "]%20[Port_NETObserveTM_SEARCH3\x0a"))))
; /\/\d+\.mp3$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re ".mp3/U\x0a"))))
; Host\x3AtoUser-Agent\x3AClientsConnected-
(assert (str.in.re X (str.to.re "Host:toUser-Agent:ClientsConnected-\x0a")))
; (^[1]$)|(^[1]+\d*\.+\d*[1-5]$)
(assert (not (str.in.re X (re.union (str.to.re "1") (re.++ (str.to.re "\x0a") (re.+ (str.to.re "1")) (re.* (re.range "0" "9")) (re.+ (str.to.re ".")) (re.* (re.range "0" "9")) (re.range "1" "5"))))))
(check-sat)
