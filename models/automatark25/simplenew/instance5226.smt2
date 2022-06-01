(declare-const X String)
; WebsiteUser-Agent\u{3A}httphostfast-look\u{2E}com
(assert (not (str.in_re X (str.to_re "WebsiteUser-Agent:httphostfast-look.com\u{a}"))))
(check-sat)
