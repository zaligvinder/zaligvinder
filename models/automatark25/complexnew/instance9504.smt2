(declare-const X String)
; ^(\+|-)?\d+$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in.re X (str.to.re "http://www.searchinweb.com/search.php?said=bar\x0a"))))
; /filename=[^\n]*\x2ebak/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bak/i\x0a"))))
; /\x2emanifest([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.manifest") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^(\d{1,3},)?(\d{3},)+\d{3}(\.\d*)?$|^(\d*)(\.\d*)?$
(assert (str.in.re X (re.union (re.++ (re.opt (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ","))) (re.+ (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.* (re.range "0" "9"))))) (re.++ (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.* (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
