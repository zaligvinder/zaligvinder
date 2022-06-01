(declare-const X String)
; Host\u{3A}\dwww\u{2E}trustedsearch\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "www.trustedsearch.com\u{a}")))))
; Host\u{3A}\d+rprpgbnrppb\u{2f}ci[^\n\r]*RXFilteredDmInf\u{5E}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ci") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "RXFilteredDmInf^\u{a}"))))
; 3A\s+URLBlazeHost\u{3A}trackhjhgquqssq\u{2f}pjm
(assert (not (str.in_re X (re.++ (str.to_re "3A") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "URLBlazeHost:trackhjhgquqssq/pjm\u{a}")))))
; Filtered\s+Yeah\!\d+HXDownloadasdbiz\u{2E}bizUser-Agent\u{3A}www\u{2E}ezula\u{2E}comUser-Agent\u{3a}etbuviaebe\u{2f}eqv\.bvv
(assert (not (str.in_re X (re.++ (str.to_re "Filtered") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Yeah!") (re.+ (re.range "0" "9")) (str.to_re "HXDownloadasdbiz.bizUser-Agent:www.ezula.comUser-Agent:etbuviaebe/eqv.bvv\u{a}")))))
(check-sat)
