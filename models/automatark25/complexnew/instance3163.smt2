(declare-const X String)
; ^(-?)(((\d{1,3})(,\d{3})*)|(\d+))(\.\d{1,2})?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; www\.take5bingo\.com\d+Host\u{3A}Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "www.take5bingo.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "Host:Host:\u{a}")))))
; 666Host\u{3a}WEBCAM-Host\u{3a}
(assert (str.in_re X (str.to_re "666Host:WEBCAM-Host:\u{a}")))
; ^[^#]([^ ]+ ){6}[^ ]+$
(assert (not (str.in_re X (re.++ (re.comp (str.to_re "#")) ((_ re.loop 6 6) (re.++ (re.+ (re.comp (str.to_re " "))) (str.to_re " "))) (re.+ (re.comp (str.to_re " "))) (str.to_re "\u{a}")))))
; Subject\u{3a}\s+OnlineServer\u{3a}Yeah\!User-Agent\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "OnlineServer:Yeah!User-Agent:\u{a}")))))
(check-sat)
