(declare-const X String)
; /(USER|NICK)\x20BOSS\x2d[A-Z0-9\x5b\x5d\x2d]{15}/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "USER") (str.to.re "NICK")) (str.to.re " BOSS-") ((_ re.loop 15 15) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "[") (str.to.re "]") (str.to.re "-"))) (str.to.re "/\x0a")))))
; source\=IncrediFind\s+Host\x3A\s+Host\x3AHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "source=IncrediFind") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:\x0a")))))
; User-Agent\x3AMailerGuarded
(assert (str.in.re X (str.to.re "User-Agent:MailerGuarded\x0a")))
(check-sat)
