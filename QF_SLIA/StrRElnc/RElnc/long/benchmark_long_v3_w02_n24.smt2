(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= z (str.++ y "10" x)))

(assert (str.in_re x (re.+ (str.to_re "3"))))
(assert (str.in_re y (re.union (re.* (str.to_re "163")) (re.union (re.* (re.range "2" "7")) (str.to_re "46")))))
(assert (str.in_re z (re.union (str.to_re "83") (re.* (re.range "0" "8")))))

(assert (<= (+ (* 4 (str.to_int x)) (* (- 5) (str.to_int y)) (* 6 (str.to_int z))) 6))
(assert (> (+ (* 3 (str.len x)) (* (- 6) (str.len y)) (* (- 3) (str.len z))) 85))

(check-sat)