(declare-const X String)
; /filename=[^\n]*\x2eeot/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".eot/i\x0a")))))
; ([+(]?\d{0,2}[)]?)([-/.\s]?\d+)+
(assert (str.in.re X (re.++ (re.+ (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "/") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a") (re.opt (re.union (str.to.re "+") (str.to.re "("))) ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (str.to.re ")")))))
; clvompycem\x2fcen\.vcn.*Host\x3A\s+toolbar_domain_redirectHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "clvompycem/cen.vcn") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "toolbar_domain_redirectHost:\x0a")))))
; Host\x3A\w+User-Agent\x3A\sTeomaBarHost\x3AHoursHost\x3AHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "TeomaBarHost:HoursHost:Host:\x0a")))))
(check-sat)
