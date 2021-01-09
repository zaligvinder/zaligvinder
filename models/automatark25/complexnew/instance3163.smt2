(declare-const X String)
; ^(-?)(((\d{1,3})(,\d{3})*)|(\d+))(\.\d{1,2})?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; www\.take5bingo\.com\d+Host\x3AHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.take5bingo.com\x1b") (re.+ (re.range "0" "9")) (str.to.re "Host:Host:\x0a")))))
; 666Host\x3aWEBCAM-Host\x3a
(assert (str.in.re X (str.to.re "666Host:WEBCAM-Host:\x0a")))
; ^[^#]([^ ]+ ){6}[^ ]+$
(assert (not (str.in.re X (re.++ (re.comp (str.to.re "#")) ((_ re.loop 6 6) (re.++ (re.+ (re.comp (str.to.re " "))) (str.to.re " "))) (re.+ (re.comp (str.to.re " "))) (str.to.re "\x0a")))))
; Subject\x3a\s+OnlineServer\x3aYeah\!User-Agent\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "OnlineServer:Yeah!User-Agent:\x0a")))))
(check-sat)
