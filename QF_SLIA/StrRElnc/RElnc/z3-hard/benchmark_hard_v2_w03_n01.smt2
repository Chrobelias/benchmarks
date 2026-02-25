(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "38")))

(assert (str.in_re x (re.+ (re.range "1" "8"))))
(assert (str.in_re y (re.union (re.++ (re.++ (re.* (str.to_re "416")) (str.to_re "801")) (re.range "6" "8")) (str.to_re "6"))))

(assert (> (+ (- (str.len x)) (* 6 (str.len y))) 57))
(assert (<= (+ (* (- 7) (str.to_int x)) (* 2 (str.to_int y))) 70))
(assert (>= (+ (* 10 (str.len x)) (* 6 (str.len y))) 67))

(check-sat)