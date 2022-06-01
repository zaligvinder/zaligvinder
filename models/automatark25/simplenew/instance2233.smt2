(declare-const X String)
; 3Awww\u{2e}urlblaze\u{2e}netulmxct\u{2f}mqoycEFErrorHost\u{3A}e2give\.com
(assert (not (str.in_re X (str.to_re "3Awww.urlblaze.netulmxct/mqoycEFErrorHost:e2give.com\u{a}"))))
(check-sat)
