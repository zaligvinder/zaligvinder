(declare-const X String)
; wp-includes\x2Ftheme\x2Ephp\x3F.*Apofis\s+TencentTraveler
(assert (not (str.in.re X (re.++ (str.to.re "wp-includes/theme.php?") (re.* re.allchar) (str.to.re "Apofis") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TencentTraveler\x0a")))))
; HXDownload\s+Host\x3AArcadeHourspjpoptwql\x2frlnjFrom\x3A
(assert (not (str.in.re X (re.++ (str.to.re "HXDownload") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:ArcadeHourspjpoptwql/rlnjFrom:\x0a")))))
(check-sat)
