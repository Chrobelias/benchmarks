(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.+ (re.union (str.to_re "66") (str.to_re "972")))))
(assert (str.in_re x (re.* (re.++ (re.* (str.to_re "894")) (str.to_re "82")))))
(assert (str.in_re a (re.union (re.* (str.to_re "944")) (re.+ (str.to_re "198")))))
(assert (str.in_re z (re.++ (re.++ (re.+ (re.range "3" "7")) (re.* (str.to_re "900"))) (str.to_re "3"))))

(assert (<= (+ (* 9 (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 2) (str.to_int z)) (* 2 (str.to_int a))) 93))
(assert (> (+ (* (- 2) (str.len x)) (- (str.len y)) (* (- 9) (str.len z)) (* 6 (str.len a))) 75))

(check-sat)