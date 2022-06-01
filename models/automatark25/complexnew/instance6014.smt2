(declare-const X String)
; /filename=[^\n]*\u{2e}xcf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xcf/i\u{a}"))))
; X-Mailer\u{3a}+Host\u{3A}\u{2E}aspxHost\u{3A}v=User-Agent\u{3a}xbqyosoe\u{2f}cpvmRequestwww\u{2E}altnet\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (str.to_re "Host:.aspxHost:v=User-Agent:xbqyosoe/cpvmRequestwww.altnet.com\u{1b}\u{a}"))))
(check-sat)
