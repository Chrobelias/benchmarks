(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.++ (re.range "4" "6") (str.to_re "746")))))
(assert (str.in_re y (re.* (re.union (str.to_re "663") (str.to_re "20")))))

(assert (>= (+ (* (- 2) (str.len x)) (* (- 3) (str.len y)) (* (- 9) (str.to_int y))) 50))
(assert (> (+ (- (str.to_int x)) (* 8 (str.to_int y))) 42))

(check-sat)