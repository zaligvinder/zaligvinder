(declare-const X String)
; stats\u{2e}drivecleaner\u{2e}comExciteasdbiz\u{2E}biz
(assert (not (str.in_re X (str.to_re "stats.drivecleaner.com\u{13}Exciteasdbiz.biz\u{a}"))))
; /\/i\.html\?[a-z0-9]+\=[a-zA-Z0-9]{25}/U
(assert (str.in_re X (re.++ (str.to_re "//i.html?") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "=") ((_ re.loop 25 25) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/U\u{a}"))))
; www\u{2E}altnet\u{2E}comHost\u{3A}NSIS_DOWNLOADSubject\u{3A}User-Agent\u{3A}www\u{2E}searchingall\u{2E}com
(assert (str.in_re X (str.to_re "www.altnet.com\u{1b}Host:NSIS_DOWNLOADSubject:User-Agent:www.searchingall.com\u{a}")))
(check-sat)
