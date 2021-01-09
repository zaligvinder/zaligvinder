(declare-const X String)
; /[^\x20-\x7e\x0d\x0a]{4}/P
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a"))))
; /\x28\x3f\x3d[^)]{300}/
(assert (not (str.in.re X (re.++ (str.to.re "/(?=") ((_ re.loop 300 300) (re.comp (str.to.re ")"))) (str.to.re "/\x0a")))))
; \[DRIVE\w+updates[^\n\r]*\x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "[DRIVE") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "updates") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "\x22StarLogger\x22User-Agent:JMailUser-Agent:\x0a")))))
; e2give\.comADRemoteHost\x3A
(assert (str.in.re X (str.to.re "e2give.comADRemoteHost:\x0a")))
(check-sat)
