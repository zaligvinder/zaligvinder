(declare-const X String)
; /^Host\x3a[^\x0d\x0a]+\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\x3a\d{1,5}\x0d?$/mi
(assert (not (str.in.re X (re.++ (str.to.re "/Host:") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")) (re.opt (str.to.re "\x0d")) (str.to.re "/mi\x0a")))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.com\x0a"))))
; DmInf\x5E\s+Contactfrom=GhostVoiceServerUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "DmInf^") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Contactfrom=GhostVoiceServerUser-Agent:\x0a"))))
(check-sat)
