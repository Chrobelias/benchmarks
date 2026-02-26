(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (= x (str.++ z y "26")))

(assert (str.in_re x (re.union (str.to_re "93") (re.union (str.to_re "2") (re.+ (re.range "2" "8"))))))
(assert (str.in_re y (re.+ (re.range "6" "9"))))
(assert (str.in_re z (re.+ (str.to_re "73"))))

(assert (> (+ (* 5 (str.len x)) (* 6 (str.len y)) (* 3 (str.len z))) 92))
(assert (>= (+ (* (- 10) (str.to_int x)) (* (- 8) (str.to_int y))) 91))

(check-sat)