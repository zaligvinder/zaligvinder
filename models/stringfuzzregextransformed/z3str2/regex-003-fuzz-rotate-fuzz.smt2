(set-logic QF_S)
(declare-const x String)
(assert (= x ".GCqcO&dzWajX*7R}chzg1Co;l4b7oq!'\x0b'}\\ERM1xUSy'\r':aeSZ!'\x0b'yCS\\n{vv/k|_-q7($"))
(assert (str.in.re x (re.* (re.++ (str.to.re "J;:I+E'\t'{x'\x0b'OnwL") (str.to.re "d")))))
(check-sat)
