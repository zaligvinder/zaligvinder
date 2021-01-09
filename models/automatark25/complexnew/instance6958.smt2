(declare-const X String)
; /filename=[^\n]*\x2ebmp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bmp/i\x0a")))))
; /^User-Agent\x3A[^\r\n]*malware/miH
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "malware/miH\x0a")))))
; X-Mailer\x3a+Host\x3A\x2EaspxHost\x3Av=User-Agent\x3axbqyosoe\x2fcpvmRequestwww\x2Ealtnet\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer") (re.+ (str.to.re ":")) (str.to.re "Host:.aspxHost:v=User-Agent:xbqyosoe/cpvmRequestwww.altnet.com\x1b\x0a")))))
(check-sat)
