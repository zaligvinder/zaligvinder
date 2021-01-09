(declare-const X String)
; ^[9][7|8][1|0][0-9]{2}$
(assert (str.in.re X (re.++ (str.to.re "9") (re.union (str.to.re "7") (str.to.re "|") (str.to.re "8")) (re.union (str.to.re "1") (str.to.re "|") (str.to.re "0")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; /css\s*?\x28\s*?[\x22\x27]margin[^\x29]*?[\x22\x27]\s*?\x2c\s*?[\x22\x27]\d{12,}\s*?px/smi
(assert (str.in.re X (re.++ (str.to.re "/css") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "margin") (re.* (re.comp (str.to.re ")"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "px/smi\x0a") ((_ re.loop 12 12) (re.range "0" "9")) (re.* (re.range "0" "9")))))
; 3ASoftwarephpinfoSpy\x2EnbdMailerX-Mailer\x3A195\.225\.Subject\x3a
(assert (str.in.re X (str.to.re "3ASoftwarephpinfoSpy.nbdMailerX-Mailer:\x13195.225.Subject:\x0a")))
; www\.iggsey\.com\sX-Mailer\x3a[^\n\r]*on\x3Acom\x3E2\x2E41Client
(assert (not (str.in.re X (re.++ (str.to.re "www.iggsey.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "X-Mailer:\x13") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "on:com>2.41Client\x0a")))))
(check-sat)
