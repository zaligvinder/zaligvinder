(declare-const X String)
; source%3Dultrasearch136%26campaign%3DsnapuplogWinInet3Azopabora\x2Einfo
(assert (str.in.re X (str.to.re "source%3Dultrasearch136%26campaign%3DsnapuplogWinInet3Azopabora.info\x0a")))
; Test\d+TencentTravelerWebConnLibHost\x3Awww\x2Ee-finder\x2Ecc
(assert (str.in.re X (re.++ (str.to.re "Test") (re.+ (re.range "0" "9")) (str.to.re "TencentTravelerWebConnLibHost:www.e-finder.cc\x0a"))))
; X-Mailer\x3a+Host\x3A\x2EaspxHost\x3Av=User-Agent\x3axbqyosoe\x2fcpvmRequestwww\x2Ealtnet\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer") (re.+ (str.to.re ":")) (str.to.re "Host:.aspxHost:v=User-Agent:xbqyosoe/cpvmRequestwww.altnet.com\x1b\x0a")))))
(check-sat)
