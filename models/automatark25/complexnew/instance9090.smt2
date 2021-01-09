(declare-const X String)
; ^[1-9]\d$
(assert (str.in.re X (re.++ (re.range "1" "9") (re.range "0" "9") (str.to.re "\x0a"))))
; Points\s+newszzzvmkituktgr\x2fetieWatcherUser-Agent\x3Awww\x2Emyarmory\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Points") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "newszzzvmkituktgr/etieWatcherUser-Agent:www.myarmory.com\x0a"))))
; /\?inf\=[0-9a-f]{8}\x2Ex\d{2}\x2E\d{8}\x2E/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/?inf=") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re ".x") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "./Ui\x0a")))))
(check-sat)
