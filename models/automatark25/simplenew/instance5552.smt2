(declare-const X String)
; www\u{2E}sogou\u{2E}comix=WebsiteHost\u{3a}Web-Mail
(assert (not (str.in_re X (str.to_re "www.sogou.comix=WebsiteHost:Web-Mail\u{a}"))))
(check-sat)
