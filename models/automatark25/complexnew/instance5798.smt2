(declare-const X String)
; User-Agent\u{3A}MailerGuarded
(assert (not (str.in_re X (str.to_re "User-Agent:MailerGuarded\u{a}"))))
; \u{2F}dss\u{2F}cc\.2_0_0\.GoogleHXDownloadasdbiz\u{2E}biz
(assert (not (str.in_re X (str.to_re "/dss/cc.2_0_0.GoogleHXDownloadasdbiz.biz\u{a}"))))
(check-sat)
