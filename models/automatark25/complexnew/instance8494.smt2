(declare-const X String)
; /[a-z\d\u{2f}\u{2b}\u{3d}]{100,300}/Pi
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 100 300) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re "+") (str.to_re "="))) (str.to_re "/Pi\u{a}"))))
; versionIDENTIFYstarted\u{2E}User-Agent\u{3A}
(assert (str.in_re X (str.to_re "versionIDENTIFYstarted.User-Agent:\u{a}")))
; ^([^ \u{21}-\u{26}\u{28}-\u{2C}\u{2E}-\u{40}\u{5B}-\u{60}\u{7B}-\u{AC}\u{AE}-\u{BF}\u{F7}\u{FE}]+)$
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re " ") (re.range "!" "&") (re.range "(" ",") (re.range "." "@") (re.range "[" "`") (re.range "{" "\u{ac}") (re.range "\u{ae}" "\u{bf}") (str.to_re "\u{f7}") (str.to_re "\u{fe}"))) (str.to_re "\u{a}"))))
; /file=[\u{7c}\u{27}]/Ui
(assert (str.in_re X (re.++ (str.to_re "/file=") (re.union (str.to_re "|") (str.to_re "'")) (str.to_re "/Ui\u{a}"))))
; Host\u{3A}\.exePass-OnHost\u{3A}\.exe\u{2F}toolbar\u{2F}
(assert (str.in_re X (str.to_re "Host:.exePass-OnHost:.exe/toolbar/\u{a}")))
(check-sat)
