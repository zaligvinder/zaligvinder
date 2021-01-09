(declare-const X String)
; /^SSID=[a-zA-Z\d]{43}\x3B\x20A=[0-3]$/C
(assert (not (str.in.re X (re.++ (str.to.re "/SSID=") ((_ re.loop 43 43) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "; A=") (re.range "0" "3") (str.to.re "/C\x0a")))))
; port\s+aresflashdownloader\x2Ecom\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "port") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "aresflashdownloader.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1b####User-Agent:\x0a")))))
; /filename=[^\n]*\x2epdf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pdf/i\x0a"))))
(check-sat)
