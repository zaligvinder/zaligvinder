(declare-const X String)
; info\s+wjpropqmlpohj\x2flo\s+resultsmaster\x2Ecom\x7croogoo\x7c
(assert (str.in.re X (re.++ (str.to.re "info") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "resultsmaster.com\x13|roogoo|\x0a"))))
; /\.php\x3fw\x3d\d+\x26n\x3d\d+/U
(assert (not (str.in.re X (re.++ (str.to.re "/.php?w=") (re.+ (re.range "0" "9")) (str.to.re "&n=") (re.+ (re.range "0" "9")) (str.to.re "/U\x0a")))))
; start\s*([^$]*)\s*(.*?)
(assert (not (str.in.re X (re.++ (str.to.re "start") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re "$"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar) (str.to.re "\x0a")))))
; ^[0-9#\*abcdABCD]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "#") (str.to.re "*") (str.to.re "a") (str.to.re "b") (str.to.re "c") (str.to.re "d") (str.to.re "A") (str.to.re "B") (str.to.re "C") (str.to.re "D"))) (str.to.re "\x0a")))))
; /\.gif\x3f[a-f0-9]{4,7}\x3d\d{6,8}$/U
(assert (str.in.re X (re.++ (str.to.re "/.gif?") ((_ re.loop 4 7) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 6 8) (re.range "0" "9")) (str.to.re "/U\x0a"))))
(check-sat)
