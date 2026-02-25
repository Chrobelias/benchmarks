(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.++ (re.union (str.to_re "334") (re.+ (str.to_re "74"))) (re.+ (str.to_re "90")))))
(assert (str.in_re x (re.+ (re.++ (re.++ (re.+ (str.to_re "9")) (str.to_re "871")) (str.to_re "557")))))

(assert (< (+ (* (- 6) (str.len x)) (* (- 8) (str.to_int y))) 97))
(assert (>= (* 2 (str.to_int x)) 49))
(assert (>= (+ (* 5 (str.to_int x)) (str.to_int y)) 30))

(check-sat)