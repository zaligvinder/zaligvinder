(declare-const X String)
; alert\d+an.*Spyiz=e2give\.comrichfind\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "alert") (re.+ (re.range "0" "9")) (str.to_re "an") (re.* re.allchar) (str.to_re "Spyiz=e2give.comrichfind.com\u{a}"))))
; Host\u{3A}Informationwww\u{2E}zhongsou\u{2E}comLitequick\u{2E}qsrch\u{2E}com
(assert (not (str.in_re X (str.to_re "Host:Informationwww.zhongsou.comLitequick.qsrch.com\u{a}"))))
(check-sat)
