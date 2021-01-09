(declare-const X String)
; GmbH\s+Host\x3AHost\x3AMonitoringGoogle
(assert (str.in.re X (re.++ (str.to.re "GmbH") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:MonitoringGoogle\x0a"))))
; ^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "8") (str.to.re "+7")) (re.opt (re.union (str.to.re "-") (str.to.re " "))))) (re.opt (re.++ (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re " "))))) ((_ re.loop 7 10) (re.union (re.range "0" "9") (str.to.re "-") (str.to.re " "))) (str.to.re "\x0a")))))
; (ISBN[-]*(1[03])*[ ]*(: ){0,1})*(([0-9Xx][- ]*){13}|([0-9Xx][- ]*){10})
(assert (str.in.re X (re.++ (re.* (re.++ (str.to.re "ISBN") (re.* (str.to.re "-")) (re.* (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "3")))) (re.* (str.to.re " ")) (re.opt (str.to.re ": ")))) (re.union ((_ re.loop 13 13) (re.++ (re.union (re.range "0" "9") (str.to.re "X") (str.to.re "x")) (re.* (re.union (str.to.re "-") (str.to.re " "))))) ((_ re.loop 10 10) (re.++ (re.union (re.range "0" "9") (str.to.re "X") (str.to.re "x")) (re.* (re.union (str.to.re "-") (str.to.re " ")))))) (str.to.re "\x0a"))))
; www\x2Emakemesearch\x2EcomLOGOnevclxatmlhavj\x2fvsy
(assert (not (str.in.re X (str.to.re "www.makemesearch.comLOGOnevclxatmlhavj/vsy\x0a"))))
; /\x00{7}\x53\x00{3}\x16.{8}[^\x00]*?[\x22\x27\x29\x3b]/
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 7 7) (str.to.re "\x00")) (str.to.re "S") ((_ re.loop 3 3) (str.to.re "\x00")) (str.to.re "\x16") ((_ re.loop 8 8) re.allchar) (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ")") (str.to.re ";")) (str.to.re "/\x0a")))))
(check-sat)
