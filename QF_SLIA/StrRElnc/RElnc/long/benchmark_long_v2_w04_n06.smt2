(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= x (str.++ "55" y)))

(assert (str.in_re y (re.+ (re.range "2" "5"))))
(assert (str.in_re x (re.union (re.* (re.range "2" "5")) (re.union (str.to_re "72") (str.to_re "90")))))

(assert (< (+ (* 7 (str.to_int x)) (- (str.to_int y))) 29))
(assert (> (+ (* 8 (str.len x)) (* 5 (str.len y))) 11))
(assert (<= (+ (* 8 (str.len x)) (* 7 (str.len y)) (* 5 (str.to_int x))) 82))

(check-sat)