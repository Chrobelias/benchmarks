(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ a "28" y "64" z)))

(assert (str.in_re a (re.union (re.+ (str.to_re "564")) (str.to_re "70"))))
(assert (str.in_re y (re.* (str.to_re "98"))))
(assert (str.in_re x (re.+ (re.union (re.* (str.to_re "153")) (re.+ (re.range "1" "9"))))))
(assert (str.in_re z (re.union (str.to_re "21") (re.+ (re.* (re.* (str.to_re "3")))))))

(assert (< (+ (* 2 (str.len y)) (* (- 2) (str.len z)) (* (- 6) (str.to_int a))) 1))

(check-sat)