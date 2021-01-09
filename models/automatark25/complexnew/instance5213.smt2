(declare-const X String)
; ads\.grokads\.com\s+deskwizz\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "ads.grokads.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "deskwizz.com\x0a")))))
; /\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.com\x2d[a-z0-9\x2d\x2e]+(\x3a\d{1,5})?\r\n/Hi
(assert (not (str.in.re X (re.++ (str.to.re "/\x0d\x0aHost: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".com-") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (re.opt (re.++ (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to.re "\x0d\x0a/Hi\x0a")))))
; ^[a-zA-Z0-9\-\.]+\.(com|org|net|mil|edu|COM|ORG|NET|MIL|EDU)$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".") (re.union (str.to.re "com") (str.to.re "org") (str.to.re "net") (str.to.re "mil") (str.to.re "edu") (str.to.re "COM") (str.to.re "ORG") (str.to.re "NET") (str.to.re "MIL") (str.to.re "EDU")) (str.to.re "\x0a"))))
; User-Agent\x3a\s+Host\x3AnamediepluginHost\x3AX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:namediepluginHost:X-Mailer:\x13\x0a"))))
; [\w\-_\+\(\)]{0,}[\.png|\.PNG]{4}
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "-") (str.to.re "_") (str.to.re "+") (str.to.re "(") (str.to.re ")") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) ((_ re.loop 4 4) (re.union (str.to.re ".") (str.to.re "p") (str.to.re "n") (str.to.re "g") (str.to.re "|") (str.to.re "P") (str.to.re "N") (str.to.re "G"))) (str.to.re "\x0a"))))
(check-sat)
