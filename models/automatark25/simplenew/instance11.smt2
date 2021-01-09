(declare-const X String)
; www\x2Ezhongsou\x2Ecomclick\x2Edotcomtoolbar\x2Ecom
(assert (str.in.re X (str.to.re "www.zhongsou.comclick.dotcomtoolbar.com\x0a")))
(check-sat)
