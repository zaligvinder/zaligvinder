(declare-const X String)
; \u{7D}\u{7B}Trojan\u{3A}\w+by\w+dddlogin\u{2E}dudu\u{2E}comSurveillanceIPOblivionhoroscope
(assert (not (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "by") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "dddlogin.dudu.comSurveillance\u{13}IPOblivionhoroscope\u{a}")))))
; /Host\u{3a}[^\n]+\u{3a}\d+\u{d}\u{a}/
(assert (not (str.in_re X (re.++ (str.to_re "/Host:") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re ":") (re.+ (re.range "0" "9")) (str.to_re "\u{d}\u{a}/\u{a}")))))
; ovpl\s+\u{7D}\u{7B}Port\u{3A}.*SOAPAction\u{3A}.*adfsgecoiwnfHost\u{3A}\u{3F}search\u{3D}
(assert (str.in_re X (re.++ (str.to_re "ovpl") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Port:") (re.* re.allchar) (str.to_re "SOAPAction:") (re.* re.allchar) (str.to_re "adfsgecoiwnf\u{1b}Host:?search=\u{a}"))))
; version.*Host\u{3a}\s+iWonHost\u{3a}pjpoptwql\u{2f}rlnj
(assert (not (str.in_re X (re.++ (str.to_re "version") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "iWonHost:pjpoptwql/rlnj\u{a}")))))
; User-Agent\u{3A}Runnerads\.grokads\.comHost\u{3A}mcndvwoemn\u{2f}lvv\.jde
(assert (not (str.in_re X (str.to_re "User-Agent:Runnerads.grokads.comHost:mcndvwoemn/lvv.jde\u{a}"))))
(check-sat)
