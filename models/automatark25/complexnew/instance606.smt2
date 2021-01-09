(declare-const X String)
; dialupvpn\x5fpwd\d\<title\>Actual\sSpywareStriketvlistingsUser-Agent\x3Auuid=aadserverfowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (re.++ (str.to.re "dialupvpn_pwd") (re.range "0" "9") (str.to.re "<title>Actual") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "SpywareStriketvlistingsUser-Agent:uuid=aadserverfowclxccdxn/uxwn.ddy\x0a"))))
; <link href="../Common/Styles/iLienStyle.css" type="text/css" rel="stylesheet" />
(assert (not (str.in.re X (re.++ (str.to.re "<link href=\x22") re.allchar re.allchar (str.to.re "/Common/Styles/iLienStyle") re.allchar (str.to.re "css\x22 type=\x22text/css\x22 rel=\x22stylesheet\x22 />\x0a")))))
(check-sat)
