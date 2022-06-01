(declare-const X String)
; ^[9][7|8][1|0][0-9]{2}$
(assert (str.in_re X (re.++ (str.to_re "9") (re.union (str.to_re "7") (str.to_re "|") (str.to_re "8")) (re.union (str.to_re "1") (str.to_re "|") (str.to_re "0")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /css\s*?\u{28}\s*?[\u{22}\u{27}]margin[^\u{29}]*?[\u{22}\u{27}]\s*?\u{2c}\s*?[\u{22}\u{27}]\d{12,}\s*?px/smi
(assert (str.in_re X (re.++ (str.to_re "/css") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "margin") (re.* (re.comp (str.to_re ")"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "px/smi\u{a}") ((_ re.loop 12 12) (re.range "0" "9")) (re.* (re.range "0" "9")))))
; 3ASoftwarephpinfoSpy\u{2E}nbdMailerX-Mailer\u{3A}195\.225\.Subject\u{3a}
(assert (str.in_re X (str.to_re "3ASoftwarephpinfoSpy.nbdMailerX-Mailer:\u{13}195.225.Subject:\u{a}")))
; www\.iggsey\.com\sX-Mailer\u{3a}[^\n\r]*on\u{3A}com\u{3E}2\u{2E}41Client
(assert (not (str.in_re X (re.++ (str.to_re "www.iggsey.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "X-Mailer:\u{13}") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "on:com>2.41Client\u{a}")))))
(check-sat)
