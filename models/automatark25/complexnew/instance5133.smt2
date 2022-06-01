(declare-const X String)
; /filename=[^\n]*\u{2e}rp/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rp/i\u{a}")))))
; client\u{2E}baigoo\u{2E}comUser\u{3A}
(assert (not (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}"))))
; messages.*Windows.*From\u{3A}X-Mailer\u{3a}+\u{2F}cbn\u{2F}earchSchwindler
(assert (str.in_re X (re.++ (str.to_re "messages") (re.* re.allchar) (str.to_re "Windows") (re.* re.allchar) (str.to_re "From:X-Mailer") (re.+ (str.to_re ":")) (str.to_re "/cbn/earchSchwindler\u{a}"))))
; WebsiteUser-Agent\u{3A}httphostfast-look\u{2E}com
(assert (str.in_re X (str.to_re "WebsiteUser-Agent:httphostfast-look.com\u{a}")))
; for[^\n\r]*Host\u{3A}\sinternalcyber@yahoo\u{2E}comHeadersRedirection
(assert (str.in_re X (re.++ (str.to_re "for") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "internalcyber@yahoo.comHeadersRedirection\u{a}"))))
(check-sat)
