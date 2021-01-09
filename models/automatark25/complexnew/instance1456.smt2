(declare-const X String)
; \x22Thewebsearch\.getmirar\.com
(assert (not (str.in.re X (str.to.re "\x22Thewebsearch.getmirar.com\x0a"))))
; User-Agent\x3a\s+www\x2Einternet-optimizer\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.internet-optimizer.com\x0a")))))
; [D]?[-D]?[0-9]{5}
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "D")) (re.opt (re.union (str.to.re "-") (str.to.re "D"))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
; \stoolbar\.anwb\.nl\s+A-311.*Host\x3aHost\x3Ayddznydqir\x2fevi
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "A-311") (re.* re.allchar) (str.to.re "Host:Host:yddznydqir/evi\x0a"))))
(check-sat)
