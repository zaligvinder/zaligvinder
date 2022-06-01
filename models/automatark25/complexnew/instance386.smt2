(declare-const X String)
; Center\w+Host\u{3a}iz=iMeshBar
(assert (str.in_re X (re.++ (str.to_re "Center") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:iz=iMeshBar\u{a}"))))
; Subject\u{3A}\swww\u{2E}searchwords\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.searchwords.com\u{a}")))))
; Host\u{3A}\s+User-Agent\u{3A}\s+ApofisToolbarUserhRatasdbiz\u{2E}bizwww\u{2E}serverlogic3\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ApofisToolbarUserhRatasdbiz.bizwww.serverlogic3.com\u{a}")))))
(check-sat)
