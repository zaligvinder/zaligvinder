(declare-const X String)
; X-Mailer\u{3A}.*\u{2F}rss.*Desktopcargo=report\<\u{2F}title\>
(assert (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.* re.allchar) (str.to_re "/rss") (re.* re.allchar) (str.to_re "Desktopcargo=report</title>\u{a}"))))
; /filename=[^\n]*\u{2e}wrf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wrf/i\u{a}"))))
; wowokayoffers\u{2E}bullseye-network\u{2E}comRTB\u{D}\u{A}\u{D}\u{A}Attached
(assert (str.in_re X (str.to_re "wowokayoffers.bullseye-network.comRTB\u{d}\u{a}\u{d}\u{a}Attached\u{a}")))
; X-Mailer\u{3a}Referer\u{3A}sponsor2\.ucmore\.com
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}Referer:sponsor2.ucmore.com\u{a}")))
(check-sat)
