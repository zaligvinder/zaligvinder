(declare-const X String)
; EFError.*Host\u{3A}\swww\u{2e}malware-stopper\u{2e}com
(assert (not (str.in_re X (re.++ (str.to_re "EFError") (re.* re.allchar) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.malware-stopper.com\u{a}")))))
; User-Agent\u{3A}\s+\u{2A}PORT3\u{2A}\d+
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; Subject\u{3a}reportGatorNavExcel
(assert (str.in_re X (str.to_re "Subject:reportGatorNavExcel\u{a}")))
; Host\u{3A}HANDYwww\u{2E}purityscan\u{2E}com
(assert (str.in_re X (str.to_re "Host:HANDYwww.purityscan.com\u{a}")))
(check-sat)
