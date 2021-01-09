(declare-const X String)
; FTP.*www\x2Ewordiq\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "FTP") (re.* re.allchar) (str.to.re "www.wordiq.com\x1b\x0a"))))
; Word\w+My\s+\x22TheZC-BridgeUser-Agent\x3AserverUSER-Attached
(assert (str.in.re X (re.++ (str.to.re "Word") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "My") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22TheZC-BridgeUser-Agent:serverUSER-Attached\x0a"))))
; /filename=[^\n]*\x2epaq8o/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".paq8o/i\x0a")))))
; /\/m1\.exe$/U
(assert (not (str.in.re X (str.to.re "//m1.exe/U\x0a"))))
; deskwizz\x2EcomReportsadblock\x2Elinkz\x2EcomUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "deskwizz.comReportsadblock.linkz.comUser-Agent:\x0a"))))
(check-sat)
