(declare-const X String)
; /^\/info\.php\?act\x3d(list|online)/U
(assert (not (str.in.re X (re.++ (str.to.re "//info.php?act=") (re.union (str.to.re "list") (str.to.re "online")) (str.to.re "/U\x0a")))))
(check-sat)
