(declare-const X String)
; <script type="text/javascript">
(assert (not (str.in.re X (str.to.re "<script type=\x22text/javascript\x22>\x0a"))))
(check-sat)
