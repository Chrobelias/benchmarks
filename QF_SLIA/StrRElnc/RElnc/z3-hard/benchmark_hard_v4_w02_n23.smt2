(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= y (str.++ x "12" a "28" "55" z)))

(assert (str.in_re x (re.union (re.* (str.to_re "945")) (re.+ (str.to_re "19")))))
(assert (str.in_re y (re.* (re.union (re.range "0" "9") (str.to_re "94")))))
(assert (str.in_re z (re.union (re.* (str.to_re "935")) (str.to_re "112"))))
(assert (str.in_re a (re.++ (str.to_re "86") (re.++ (str.to_re "59") (re.+ (re.range "7" "9"))))))

(assert (<= (+ (* (- 10) (str.to_int x)) (* 5 (str.to_int y)) (* 6 (str.to_int z)) (* (- 5) (str.to_int a))) 82))
(assert (<= (+ (* (- 5) (str.len x)) (* 2 (str.len y)) (* (- 5) (str.len z)) (* (- 6) (str.len a))) 17))

(check-sat)