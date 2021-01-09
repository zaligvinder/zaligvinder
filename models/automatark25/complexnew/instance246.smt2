(declare-const X String)
; ^[0-9,]+['][-](\d|1[01])"$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re ","))) (str.to.re "'-") (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x22\x0a"))))
; \.cfg\d+stale\d+GmbHPG=SPEEDBARcuReferer\x3ASpediazmnjgmomgbdz\x2fzzmw\.gztHost\x3AHost\x3Azopabora\x2Einfo
(assert (not (str.in.re X (re.++ (str.to.re ".cfg") (re.+ (re.range "0" "9")) (str.to.re "stale") (re.+ (re.range "0" "9")) (str.to.re "GmbHPG=SPEEDBARcuReferer:Spediazmnjgmomgbdz/zzmw.gztHost:Host:zopabora.info\x0a")))))
; \d{2}.?\d{3}.?\d{3}/?\d{4}-?\d{2}
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "/")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; Agent\s+\x2Ftoolbar\x2Fico\x2F
(assert (str.in.re X (re.++ (str.to.re "Agent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/\x0a"))))
; ^(.|\r|\n){1,10}$
(assert (str.in.re X (re.++ ((_ re.loop 1 10) (re.union re.allchar (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "\x0a"))))
(check-sat)
