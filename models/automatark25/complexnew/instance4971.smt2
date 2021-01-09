(declare-const X String)
; \x2Fdesktop\x2FSystemwwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "/desktop/SystemwwwfromToolbartheServer:www.searchreslt.com\x0a"))))
; /^[0-9]\d{2,4}-\d{6,8}$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.range "0" "9") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 6 8) (re.range "0" "9")) (str.to.re "/\x0a")))))
; User-Agent\x3A\dServer
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.range "0" "9") (str.to.re "Server\x0a")))))
; Logger.*aresflashdownloader\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Logger") (re.* re.allchar) (str.to.re "aresflashdownloader.com\x0a")))))
; /filename=[^\n]*\x2ereg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".reg/i\x0a"))))
(check-sat)
