(declare-const X String)
; RootviewNetControl\x2EServerdata2\.activshopper\.com
(assert (str.in.re X (str.to.re "RootviewNetControl.Server\x13data2.activshopper.com\x0a")))
; User-Agent\x3ASurveillancecomOnline
(assert (not (str.in.re X (str.to.re "User-Agent:Surveillance\x13comOnline\x0a"))))
(check-sat)
