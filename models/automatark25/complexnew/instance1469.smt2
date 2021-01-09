(declare-const X String)
; /nsrjb[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (str.in.re X (re.++ (str.to.re "/nsrjb") (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "$(") (str.to.re ";") (str.to.re "|") (str.to.re "&") (str.to.re "`")) (str.to.re "/\x0a"))))
; X-OSSproxy\x3a\dMicrosoft\x2APORT3\x2AProLive\+Version\+3A
(assert (not (str.in.re X (re.++ (str.to.re "X-OSSproxy:") (re.range "0" "9") (str.to.re "Microsoft*PORT3*ProLive+Version+3A\x0a")))))
; (^[0]{1}$|^[-]?[1-9]{1}\d*$)
(assert (str.in.re X (re.++ (re.union ((_ re.loop 1 1) (str.to.re "0")) (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "\x0a"))))
; search\.dropspam\.com.*SupportFiles.*Referer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "search.dropspam.com") (re.* re.allchar) (str.to.re "SupportFiles\x13") (re.* re.allchar) (str.to.re "Referer:\x0a")))))
; \w*$
(assert (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
(check-sat)
