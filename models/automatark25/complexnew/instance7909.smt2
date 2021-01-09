(declare-const X String)
; ^(http(s)?\:\/\/\S+)\s
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0ahttp") (re.opt (str.to.re "s")) (str.to.re "://") (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))))
; Host\x3a\w+Host\x3A\d+anHost\x3AspasHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "anHost:spasHost:\x0a")))))
; User-Agent\x3A\x2FrssMinutesansweras\x2Estarware\x2EcomFictionalHost\x3AHost\x3A
(assert (str.in.re X (str.to.re "User-Agent:/rssMinutesansweras.starware.comFictionalHost:Host:\x0a")))
; /\.php\?hgfc\=[a-f0-9]+$/U
(assert (not (str.in.re X (re.++ (str.to.re "/.php?hgfc=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
(check-sat)
