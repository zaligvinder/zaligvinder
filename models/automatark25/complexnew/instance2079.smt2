(declare-const X String)
; Toolbar\x2Fimages\x2Fnocache\x2Ftr\x2Fgca\x2Fm\.gif\?
(assert (str.in.re X (str.to.re "Toolbar/images/nocache/tr/gca/m.gif?\x0a")))
; Host\x3A\w+page=largePass-Onseqepagqfphv\x2fsfd
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "page=largePass-Onseqepagqfphv/sfd\x0a")))))
; ^((\$?\-?)|(\-?\$?))([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)?(\.[0-9]*)?$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "$")) (re.opt (str.to.re "-"))) (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "$")))) (re.opt (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") (re.* (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
