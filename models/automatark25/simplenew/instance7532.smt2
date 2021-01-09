(declare-const X String)
; Host\x3A\.exePass-OnHost\x3A\.exe\x2Ftoolbar\x2F
(assert (not (str.in.re X (str.to.re "Host:.exePass-OnHost:.exe/toolbar/\x0a"))))
(check-sat)
