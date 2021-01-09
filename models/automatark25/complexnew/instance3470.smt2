(declare-const X String)
; User-Agent\x3Agpstool\x2eglobaladserver\x2ecom
(assert (not (str.in.re X (str.to.re "User-Agent:gpstool.globaladserver.com\x0a"))))
; adblock\x2Elinkz\x2Ecomwww\.iggsey\.comHost\x3A
(assert (str.in.re X (str.to.re "adblock.linkz.comwww.iggsey.comHost:\x0a")))
; <script[\\.|\\W|\\w]*?</script>
(assert (str.in.re X (re.++ (str.to.re "<script") (re.* (re.union (str.to.re "\x5c") (str.to.re ".") (str.to.re "|") (str.to.re "W") (str.to.re "w"))) (str.to.re "</script>\x0a"))))
(check-sat)
