(declare-const X String)
; HWPE[^\n\r]*Basic.*LOGsearches\u{2E}worldtostart\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "HWPE") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Basic") (re.* re.allchar) (str.to_re "LOGsearches.worldtostart.com\u{a}"))))
(check-sat)
