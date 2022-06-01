(declare-const X String)
; ^[0-9]+(,[0-9]+)*$
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to_re ",") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
; http\u{3A}\u{2F}\u{2F}mysearch\.dropspam\.com\u{2F}index\.php\?tpid=
(assert (str.in_re X (str.to_re "http://mysearch.dropspam.com/index.php?tpid=\u{13}\u{a}")))
; DigExtNetBus\u{5B}Static
(assert (not (str.in_re X (str.to_re "DigExtNetBus[Static\u{a}"))))
; /\/jorg\.html$/U
(assert (not (str.in_re X (str.to_re "//jorg.html/U\u{a}"))))
; /\u{2e}flv([\?\u{5c}\u{2f}]|$)/Umsi
(assert (not (str.in_re X (re.++ (str.to_re "/.flv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/Umsi\u{a}")))))
(check-sat)
