(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "103")) (str.to_re "2"))))
(assert (str.in_re y (re.union (re.+ (re.range "5" "7")) (str.to_re "659"))))
(assert (str.in_re z (re.+ (str.to_re "58"))))
(assert (str.in_re a (re.union (str.to_re "25") (re.+ (re.+ (str.to_re "93"))))))

(assert (= (+ (* (- 9) (str.to_int y)) (* 3 (str.to_int z)) (* (- 2) (str.to_int a))) 73))
(assert (>= (+ (- (str.to_int x)) (* (- 3) (str.to_int y)) (* 4 (str.to_int z)) (* (- 6) (str.to_int a))) 9))
(assert (< (+ (* (- 7) (str.len x)) (* 6 (str.len z)) (* (- 9) (str.len a))) 59))

(check-sat)