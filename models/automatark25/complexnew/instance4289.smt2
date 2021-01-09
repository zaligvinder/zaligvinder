(declare-const X String)
; ^5[1-5][0-9]{14}$
(assert (not (str.in.re X (re.++ (str.to.re "5") (re.range "1" "5") ((_ re.loop 14 14) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x3d\x3d$/P
(assert (not (str.in.re X (str.to.re "/==/P\x0a"))))
; <script type="text/javascript">
(assert (str.in.re X (str.to.re "<script type=\x22text/javascript\x22>\x0a")))
(check-sat)
