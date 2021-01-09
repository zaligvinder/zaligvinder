(declare-const X String)
; ^((0[1-9])|(1[0-2]))[\/\.\-]*((0[8-9])|(1[1-9]))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.* (re.union (str.to.re "/") (str.to.re ".") (str.to.re "-"))) (re.union (re.++ (str.to.re "0") (re.range "8" "9")) (re.++ (str.to.re "1") (re.range "1" "9"))) (str.to.re "\x0a")))))
; /new (java|org)/Ui
(assert (str.in.re X (re.++ (str.to.re "/new ") (re.union (str.to.re "java") (str.to.re "org")) (str.to.re "/Ui\x0a"))))
; zopabora\x2EinfocomhoroscopeTravelInsidefromUser-Agent\x3AFrom\x3Awww\x2EZSearchResults\x2EcomExplorer
(assert (str.in.re X (str.to.re "zopabora.infocomhoroscopeTravelInsidefromUser-Agent:From:www.ZSearchResults.com\x13Explorer\x0a")))
; ^([0]?\d|1\d|2[0-3]):([0-5]\d):([0-5]\d)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")))))
(check-sat)
