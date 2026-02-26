(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ x z) (str.++ y "40")))

(assert (str.in_re y (re.++ (re.* (str.to_re "100")) (str.to_re "9"))))
(assert (str.in_re x (re.* (re.union (str.to_re "305") (re.+ (re.+ (re.range "2" "9")))))))
(assert (str.in_re z (re.union (re.range "3" "6") (re.union (str.to_re "152") (re.* (str.to_re "0"))))))

(assert (<= (+ (* 8 (str.len y)) (- (str.len z)) (* (- 5) (str.to_int x)) (* 3 (str.to_int y))) 81))

(check-sat)