(declare-const X String)
; ^[A-Za-z]{4}[ |\-]{0,1}[0-9]{6}[ |\-]{0,1}[0-9A-Za-z]{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-"))) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; ^[\w ]{0,}$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; \x2Fpagead\x2Fads\?waitingisDownload
(assert (not (str.in.re X (str.to.re "/pagead/ads?waitingisDownload\x0a"))))
; ^1+0+$
(assert (not (str.in.re X (re.++ (re.+ (str.to.re "1")) (re.+ (str.to.re "0")) (str.to.re "\x0a")))))
; User-Agent\x3AHost\x3AhasHost\x3AComputerKeylogger\x2Ecom
(assert (not (str.in.re X (str.to.re "User-Agent:Host:hasHost:ComputerKeylogger.com\x0a"))))
(check-sat)
