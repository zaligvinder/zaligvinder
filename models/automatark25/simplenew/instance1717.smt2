(declare-const X String)
; /^\/info\.php\?act\u{3d}(list|online)/U
(assert (not (str.in_re X (re.++ (str.to_re "//info.php?act=") (re.union (str.to_re "list") (str.to_re "online")) (str.to_re "/U\u{a}")))))
(check-sat)
