(declare-const X String)
; www\u{2E}serverlogic3\u{2E}com\d+ToolBar\s+HWAEUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to_re "ToolBar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAEUser-Agent:\u{a}"))))
; Host\u{3A}\w+page=largePass-Onseqepagqfphv\u{2f}sfd
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "page=largePass-Onseqepagqfphv/sfd\u{a}"))))
; //.*|/\*[\s\S]*?\*/
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (re.++ (str.to_re "/") (re.* re.allchar)) (re.++ (str.to_re "*") (re.* (re.union (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*/\u{a}"))))))
(check-sat)
