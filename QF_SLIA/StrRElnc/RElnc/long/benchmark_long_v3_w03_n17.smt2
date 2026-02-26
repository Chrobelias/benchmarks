(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (= x (str.++ y "97" z)))

(assert (str.in_re z (re.++ (re.union (str.to_re "445") (str.to_re "7")) (re.* (str.to_re "6")))))
(assert (str.in_re x (re.* (re.union (re.range "1" "4") (re.union (str.to_re "580") (re.range "7" "9"))))))
(assert (str.in_re y (re.* (re.+ (str.to_re "9")))))

(assert (= (+ (* 10 (str.len y)) (* 6 (str.to_int x))) 43))
(assert (<= (+ (* 9 (str.to_int x)) (* (- 8) (str.to_int y)) (* (- 9) (str.to_int z))) 38))

(check-sat)