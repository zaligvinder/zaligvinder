(declare-const X String)
; \x7D\x7BTrojan\x3A\w+by\w+dddlogin\x2Edudu\x2EcomSurveillanceIPOblivionhoroscope
(assert (not (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "by") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "dddlogin.dudu.comSurveillance\x13IPOblivionhoroscope\x0a")))))
; /Host\x3a[^\n]+\x3a\d+\x0d\x0a/
(assert (not (str.in.re X (re.++ (str.to.re "/Host:") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re ":") (re.+ (re.range "0" "9")) (str.to.re "\x0d\x0a/\x0a")))))
; ovpl\s+\x7D\x7BPort\x3A.*SOAPAction\x3A.*adfsgecoiwnfHost\x3A\x3Fsearch\x3D
(assert (str.in.re X (re.++ (str.to.re "ovpl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Port:") (re.* re.allchar) (str.to.re "SOAPAction:") (re.* re.allchar) (str.to.re "adfsgecoiwnf\x1bHost:?search=\x0a"))))
; version.*Host\x3a\s+iWonHost\x3apjpoptwql\x2frlnj
(assert (not (str.in.re X (re.++ (str.to.re "version") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "iWonHost:pjpoptwql/rlnj\x0a")))))
; User-Agent\x3ARunnerads\.grokads\.comHost\x3Amcndvwoemn\x2flvv\.jde
(assert (not (str.in.re X (str.to.re "User-Agent:Runnerads.grokads.comHost:mcndvwoemn/lvv.jde\x0a"))))
(check-sat)
