(declare-const X String)
; Host\u{3A}\s+ulmxct\u{2f}mqoycWinSession\u{2F}client\u{2F}\u{2A}PORT1\u{2A}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ulmxct/mqoycWinSession/client/*PORT1*\u{a}"))))
; Remote\u{3C}chat\u{3E}X-Mailer\u{3a}www\u{2e}proventactics\u{2e}com
(assert (str.in_re X (str.to_re "Remote<chat>\u{1b}X-Mailer:\u{13}www.proventactics.com\u{a}")))
; ^[a-z]
(assert (str.in_re X (re.++ (re.range "a" "z") (str.to_re "\u{a}"))))
; \.cfg\s+xbqyosoe\u{2f}cpvmAdToolsconnectedNodes\/cgi-bin\/PopupV
(assert (str.in_re X (re.++ (str.to_re ".cfg") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "xbqyosoe/cpvmAdToolsconnectedNodes/cgi-bin/PopupV\u{a}"))))
; Host\u{3A}\.exePass-OnHost\u{3A}\.exe\u{2F}toolbar\u{2F}
(assert (not (str.in_re X (str.to_re "Host:.exePass-OnHost:.exe/toolbar/\u{a}"))))
(check-sat)
