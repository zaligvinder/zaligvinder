(declare-const X String)
; User-Agent\x3A.*Host\x3A.*w3whowww\x2Esogou\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "w3whowww.sogou.com\x0a")))))
; PASSW=.*www\x2Emakemesearch\x2Ecom.*HBand,X-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "PASSW=") (re.* re.allchar) (str.to.re "www.makemesearch.com") (re.* re.allchar) (str.to.re "HBand,X-Mailer:\x13\x0a")))))
; /^GET\s\x2f[A-F0-9]{152}/m
(assert (not (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 152 152) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "/m\x0a")))))
(check-sat)
