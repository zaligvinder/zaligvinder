(declare-const X String)
; /\x2eani([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ani") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; AD\s+c\.goclick\.com\w+asdbiz\x2Ebizfrom\x7croogoo\x7cCurrent
(assert (str.in.re X (re.++ (str.to.re "AD") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "c.goclick.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "asdbiz.bizfrom|roogoo|Current\x0a"))))
; /^\/[a-f0-9]{8}\.js\?cp\x3d/Umi
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".js?cp=/Umi\x0a"))))
; (a|A)
(assert (not (str.in.re X (re.++ (re.union (str.to.re "a") (str.to.re "A")) (str.to.re "\x0a")))))
; (^13((\ )?\d){4}$)|(^1[38]00((\ )?\d){6}$)|(^(((\(0[23478]\))|(0[23478]))(\ )?)?\d((\ )?\d){7}$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "13") ((_ re.loop 4 4) (re.++ (re.opt (str.to.re " ")) (re.range "0" "9")))) (re.++ (str.to.re "1") (re.union (str.to.re "3") (str.to.re "8")) (str.to.re "00") ((_ re.loop 6 6) (re.++ (re.opt (str.to.re " ")) (re.range "0" "9")))) (re.++ (str.to.re "\x0a") (re.opt (re.++ (re.union (re.++ (str.to.re "(0") (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "7") (str.to.re "8")) (str.to.re ")")) (re.++ (str.to.re "0") (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "7") (str.to.re "8")))) (re.opt (str.to.re " ")))) (re.range "0" "9") ((_ re.loop 7 7) (re.++ (re.opt (str.to.re " ")) (re.range "0" "9"))))))))
(check-sat)
