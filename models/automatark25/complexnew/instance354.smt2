(declare-const X String)
; /^User\x2DAgent\x3A\s+Ryeol\s+HTTP\s+Client\s+Class/smiH
(assert (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Ryeol") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HTTP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Client") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Class/smiH\x0a"))))
; SecureNet\sHost\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "SecureNet") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:X-Mailer:\x13as.starware.com\x0a"))))
; /\/\*[\d\D]*?\*\//
(assert (str.in.re X (re.++ (str.to.re "//*") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to.re "*//\x0a"))))
; /\/crypt_1_sell\d\d-\d\d.exe$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//crypt_1_sell") (re.range "0" "9") (re.range "0" "9") (str.to.re "-") (re.range "0" "9") (re.range "0" "9") re.allchar (str.to.re "exe/Ui\x0a")))))
; Host\x3ADIMBUSsidebar\.activeshopper\.comUser-Agent\x3APcast
(assert (str.in.re X (str.to.re "Host:DIMBUSsidebar.activeshopper.comUser-Agent:Pcast\x0a")))
(check-sat)
