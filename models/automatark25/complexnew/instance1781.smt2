(declare-const X String)
; Host\u{3A}\s+www\u{2E}yoogee\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.yoogee.com\u{13}\u{a}"))))
; xpsp2-\s+spyblpat.*is\u{2E}phpBarFrom\u{3A}
(assert (str.in_re X (re.++ (str.to_re "xpsp2-") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblpat") (re.* re.allchar) (str.to_re "is.phpBarFrom:\u{a}"))))
; [0-9][.][0-9]{3}$
(assert (str.in_re X (re.++ (re.range "0" "9") (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; www\u{2E}zhongsou\u{2E}comclick\u{2E}dotcomtoolbar\u{2E}com
(assert (not (str.in_re X (str.to_re "www.zhongsou.comclick.dotcomtoolbar.com\u{a}"))))
(check-sat)
