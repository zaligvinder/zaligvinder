(declare-const X String)
; ^\d(\.\d{1,2})?$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; Host\x3A\w+page=largePass-Onseqepagqfphv\x2fsfd
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "page=largePass-Onseqepagqfphv/sfd\x0a"))))
(check-sat)
