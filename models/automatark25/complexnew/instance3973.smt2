(declare-const X String)
; source%3Dultrasearch136%26campaign%3DsnapuplogWinInet3Azopabora\u{2E}info
(assert (str.in_re X (str.to_re "source%3Dultrasearch136%26campaign%3DsnapuplogWinInet3Azopabora.info\u{a}")))
; Test\d+TencentTravelerWebConnLibHost\u{3A}www\u{2E}e-finder\u{2E}cc
(assert (str.in_re X (re.++ (str.to_re "Test") (re.+ (re.range "0" "9")) (str.to_re "TencentTravelerWebConnLibHost:www.e-finder.cc\u{a}"))))
; X-Mailer\u{3a}+Host\u{3A}\u{2E}aspxHost\u{3A}v=User-Agent\u{3a}xbqyosoe\u{2f}cpvmRequestwww\u{2E}altnet\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (str.to_re "Host:.aspxHost:v=User-Agent:xbqyosoe/cpvmRequestwww.altnet.com\u{1b}\u{a}")))))
(check-sat)
