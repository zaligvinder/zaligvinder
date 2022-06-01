(declare-const X String)
; /filename=[^\n]*\u{2e}lnk/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".lnk/i\u{a}")))))
; WebsiteUser-Agent\u{3A}httphostfast-look\u{2E}com
(assert (str.in_re X (str.to_re "WebsiteUser-Agent:httphostfast-look.com\u{a}")))
(check-sat)
