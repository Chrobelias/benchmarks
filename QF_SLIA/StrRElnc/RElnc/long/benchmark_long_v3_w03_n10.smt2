(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ y "33" z)))

(assert (str.in_re y (re.+ (re.union (str.to_re "4") (str.to_re "70")))))
(assert (str.in_re z (re.+ (re.* (re.range "0" "4")))))
(assert (str.in_re x (re.union (re.* (str.to_re "934")) (re.+ (re.range "2" "4")))))

(assert (= (+ (* 10 (str.to_int x)) (* 7 (str.to_int y)) (* 5 (str.to_int z))) 76))
(assert (= (+ (* (- 6) (str.to_int x)) (* (- 3) (str.to_int y)) (* (- 10) (str.to_int z))) 93))
(assert (>= (+ (* 10 (str.len x)) (* (- 10) (str.len y))) 52))

(check-sat)