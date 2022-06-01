(declare-const X String)
; /click.php\?c=\w{160}/Ui
(assert (str.in_re X (re.++ (str.to_re "/click") re.allchar (str.to_re "php?c=") ((_ re.loop 160 160) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/Ui\u{a}"))))
; X-OSSproxy\u{3a}\w+\+Version\+\s+fast-look\u{2E}comwww\u{2E}maxifiles\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "X-OSSproxy:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "+Version+") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "fast-look.comwww.maxifiles.com\u{a}")))))
(check-sat)
