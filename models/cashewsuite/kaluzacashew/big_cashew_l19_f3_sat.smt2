(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v90 () String)
(declare-fun v92 () String)
(declare-fun v91 () String)
(declare-fun v94 () String)
(declare-fun v93 () String)
(declare-fun v96 () String)
(declare-fun v95 () String)
(declare-fun v98 () String)
(declare-fun v10 () String)
(declare-fun v97 () String)
(declare-fun v12 () String)
(declare-fun v99 () String)
(declare-fun v11 () String)
(declare-fun v14 () String)
(declare-fun v13 () String)
(declare-fun v16 () String)
(declare-fun v15 () String)
(declare-fun v18 () String)
(declare-fun v17 () String)
(declare-fun v19 () String)
(declare-fun v21 () String)
(declare-fun v20 () String)
(declare-fun v23 () String)
(declare-fun v22 () String)
(declare-fun v25 () String)
(declare-fun v24 () String)
(declare-fun v27 () String)
(declare-fun v26 () String)
(declare-fun v29 () String)
(declare-fun v28 () String)
(declare-fun v30 () String)
(declare-fun v32 () String)
(declare-fun v31 () String)
(declare-fun v34 () String)
(declare-fun v33 () String)
(declare-fun v36 () String)
(declare-fun v35 () String)
(declare-fun v38 () String)
(declare-fun v37 () String)
(declare-fun v39 () String)
(declare-fun v41 () String)
(declare-fun v40 () String)
(declare-fun v43 () String)
(declare-fun v42 () String)
(declare-fun v45 () String)
(declare-fun v44 () String)
(declare-fun v47 () String)
(declare-fun v46 () String)
(declare-fun v49 () String)
(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v48 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)
(declare-fun v4 () String)
(declare-fun v5 () String)
(declare-fun v6 () String)
(declare-fun v7 () String)
(declare-fun v8 () String)
(declare-fun v9 () String)
(declare-fun v50 () String)
(declare-fun v52 () String)
(declare-fun v51 () String)
(declare-fun v54 () String)
(declare-fun v53 () String)
(declare-fun v56 () String)
(declare-fun v55 () String)
(declare-fun v58 () String)
(declare-fun v57 () String)
(declare-fun v59 () String)
(declare-fun v61 () String)
(declare-fun v60 () String)
(declare-fun v63 () String)
(declare-fun v62 () String)
(declare-fun v65 () String)
(declare-fun v64 () String)
(declare-fun v67 () String)
(declare-fun v66 () String)
(declare-fun v69 () String)
(declare-fun v68 () String)
(declare-fun v70 () String)
(declare-fun v72 () String)
(declare-fun v71 () String)
(declare-fun v74 () String)
(declare-fun v73 () String)
(declare-fun v76 () String)
(declare-fun v75 () String)
(declare-fun v78 () String)
(declare-fun v77 () String)
(declare-fun v79 () String)
(declare-fun v81 () String)
(declare-fun v80 () String)
(declare-fun v83 () String)
(declare-fun v82 () String)
(declare-fun v85 () String)
(declare-fun v84 () String)
(declare-fun v87 () String)
(declare-fun v86 () String)
(declare-fun v89 () String)
(declare-fun v88 () String)

(assert (= (str.len v0) 0))
(assert (= (str.len v1) 0))
(assert (= (str.len v2) 0))
(assert (= (str.len v3) 0))
(assert (>= (str.len v4) 1))
(assert (>= (str.len v5) 1))
(assert (>= (str.len v6) 1))
(assert (>= (str.len v7) 1))
(assert (= v8 "A"))
(assert (= v9 "A"))
(assert (= v10 "A"))
(assert (= v11 "A"))
(assert (= v12 "A"))
(assert (= v13 "A"))
(assert (= v14 "A"))
(assert (= v15 "A"))
(assert (= v16 "A"))
(assert (= v17 "A"))
(assert (= v18 "A"))
(assert (= v19 "A"))
(assert (= v20 "A"))
(assert (= v21 "A"))
(assert (= v22 "A"))
(assert (= v23 "A"))
(assert (= v24 "A"))
(assert (= v25 "A"))
(assert (= v26 "B"))
(assert (= v27 "C"))
(assert (= v28 v28))
(assert (= v4 v4))
(assert (= v4 v4))
(assert (= v4 v4))
(assert (= v29 v29))
(assert (= v30 v30))
(assert (= v31 v30))
(assert (= v32 (str.++ v4 v8)))
(assert (= v33 (str.++ v34 v9)))
(assert (= v35 (str.++ v36 v10)))
(assert (= v37 (str.++ v38 v11)))
(assert (= v39 (str.++ v40 v12)))
(assert (= v41 (str.++ v42 v13)))
(assert (= v43 (str.++ v44 v14)))
(assert (= v45 (str.++ v46 v15)))
(assert (= v47 (str.++ v48 v16)))
(assert (= v49 (str.++ v50 v17)))
(assert (= v51 (str.++ v52 v18)))
(assert (= v53 (str.++ v54 v19)))
(assert (= v55 (str.++ v56 v20)))
(assert (= v57 (str.++ v58 v21)))
(assert (= v59 (str.++ v60 v22)))
(assert (= v61 (str.++ v62 v23)))
(assert (= v63 (str.++ v64 v24)))
(assert (= v65 (str.++ v66 v25)))
(assert (= v28 (str.++ v32 v67)))
(assert (= v4 (str.++ v0 v68)))
(assert (= v4 (str.++ v3 v69)))
(assert (= v4 (str.++ v5 v70)))
(assert (= v71 (str.++ v33 v72)))
(assert (= v72 (str.++ v35 v73)))
(assert (= v73 (str.++ v37 v74)))
(assert (= v74 (str.++ v39 v75)))
(assert (= v75 (str.++ v41 v76)))
(assert (= v76 (str.++ v43 v77)))
(assert (= v77 (str.++ v45 v78)))
(assert (= v78 (str.++ v47 v29)))
(assert (= v67 (str.++ v49 v79)))
(assert (= v68 (str.++ v80 v81)))
(assert (= v82 (str.++ v83 v84)))
(assert (= v79 (str.++ v51 v85)))
(assert (= v80 (str.++ v86 v26)))
(assert (= v83 (str.++ v87 v27)))
(assert (= v69 (str.++ v88 v89)))
(assert (= v70 (str.++ v30 v90)))
(assert (= v91 (str.++ v28 v92)))
(assert (= v85 (str.++ v53 v93)))
(assert (= v93 (str.++ v55 v94)))
(assert (= v94 (str.++ v57 v95)))
(assert (= v95 (str.++ v59 v96)))
(assert (= v96 (str.++ v61 v97)))
(assert (= v97 (str.++ v63 v98)))
(assert (= v98 (str.++ v65 v71)))
(assert (= v7 (str.++ v1 v82)))
(assert (= v7 (str.++ v2 v99)))
(assert (= v7 (str.++ v6 v91)))
(assert (not (str.in.re v4 (str.to.re "A"))))
(assert (not (str.in.re v50 (str.to.re "A"))))
(assert (not (str.in.re v34 (str.to.re "A"))))
(assert (not (str.in.re v36 (str.to.re "A"))))
(assert (not (str.in.re v38 (str.to.re "A"))))
(assert (not (str.in.re v40 (str.to.re "A"))))
(assert (not (str.in.re v42 (str.to.re "A"))))
(assert (not (str.in.re v44 (str.to.re "A"))))
(assert (not (str.in.re v46 (str.to.re "A"))))
(assert (not (str.in.re v48 (str.to.re "A"))))
(assert (not (str.in.re v52 (str.to.re "A"))))
(assert (not (str.in.re v54 (str.to.re "A"))))
(assert (not (str.in.re v56 (str.to.re "A"))))
(assert (not (str.in.re v58 (str.to.re "A"))))
(assert (not (str.in.re v60 (str.to.re "A"))))
(assert (not (str.in.re v62 (str.to.re "A"))))
(assert (not (str.in.re v64 (str.to.re "A"))))
(assert (not (str.in.re v66 (str.to.re "A"))))
(assert (not (str.in.re v31 (str.to.re "D"))))
(assert (not (str.in.re v99 (str.to.re "#"))))
(assert (not (str.in.re v86 (str.to.re "B"))))
(assert (not (str.in.re v30 (str.to.re "E"))))
(assert (not (str.in.re v87 (str.to.re "C"))))

(check-sat)
(get-model)
