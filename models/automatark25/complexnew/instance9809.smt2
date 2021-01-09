(declare-const X String)
; ^<\!\-\-(.*)+(\/){0,1}\-\->$
(assert (str.in.re X (re.++ (str.to.re "<!--") (re.+ (re.* re.allchar)) (re.opt (str.to.re "/")) (str.to.re "-->\x0a"))))
; Host\x3AWordmyway\.comhoroscope2Host
(assert (not (str.in.re X (str.to.re "Host:Wordmyway.comhoroscope2Host\x0a"))))
; SpyAgent\d+sErver\s+User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "SpyAgent") (re.+ (re.range "0" "9")) (str.to.re "sErver") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a")))))
(check-sat)
