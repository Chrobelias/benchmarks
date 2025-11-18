(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (str.to_re "96") (re.* (re.+ (str.to_re "895"))))))
(assert (str.in_re y (re.* (re.* (re.union (str.to_re "24") (str.to_re "48"))))))
(assert (str.in_re z (re.union (re.+ (str.to_re "73")) (str.to_re "523"))))
(assert (str.in_re a (re.++ (re.union (str.to_re "944") (str.to_re "92")) (re.* (re.range "4" "8")))))

(assert (<= (+ (* (- 7) (str.to_int x)) (- (str.to_int y)) (* 3 (str.to_int z)) (* (- 10) (str.to_int a))) 7))
(assert (<= (+ (* (- 4) (str.to_int x)) (* (- 10) (str.to_int y)) (* 9 (str.to_int z)) (* 7 (str.to_int a))) 82))
(assert (>= (+ (* (- 8) (str.len x)) (* 3 (str.len y)) (* 9 (str.len z)) (* 9 (str.len a))) 83))
(assert (>= (+ (* (- 9) (str.len x)) (* 6 (str.len y)) (* (- 8) (str.len z)) (str.len a)) 41))
(assert (>= (+ (* 6 (str.to_int x)) (* (- 4) (str.to_int y)) (* (- 10) (str.to_int z)) (* 8 (str.to_int a))) 5))

(check-sat)