(declare-const X String)
; /PRIVMSG #new :\x02\x5b(GOOGLE|SCAN)\x5d\x02\x20Scanning/
(assert (str.in.re X (re.++ (str.to.re "/PRIVMSG #new :\x02[") (re.union (str.to.re "GOOGLE") (str.to.re "SCAN")) (str.to.re "]\x02 Scanning/\x0a"))))
; WebsiteUser-Agent\x3Ahttphostfast-look\x2Ecom
(assert (not (str.in.re X (str.to.re "WebsiteUser-Agent:httphostfast-look.com\x0a"))))
; /\x2f[a-z0-9]+\.php\?php\x3dreceipt$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".php?php=receipt/Ui\x0a")))))
; /^\/cnt\.php\?id=\d+$/U
(assert (not (str.in.re X (re.++ (str.to.re "//cnt.php?id=") (re.+ (re.range "0" "9")) (str.to.re "/U\x0a")))))
(check-sat)
