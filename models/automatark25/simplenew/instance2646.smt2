(declare-const X String)
; Subject\x3AKeyloggerSAHHost\x3ASurveillancenotification\x2Fdownload\x2Ftoolbar\x2Flocatorstoolbar
(assert (not (str.in.re X (str.to.re "Subject:KeyloggerSAHHost:Surveillance\x13notification\x13/download/toolbar/locatorstoolbar\x0a"))))
(check-sat)
