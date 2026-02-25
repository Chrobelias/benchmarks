(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (re.++ (str.to_re "994") (re.union (str.to_re "1") (str.to_re "336"))))))
(assert (str.in_re x (re.++ (str.to_re "844") (re.union (re.+ (str.to_re "41")) (str.to_re "336")))))

(assert (< (+ (* (- 10) (str.len x)) (* (- 8) (str.to_int x))) 3))
(assert (= (+ (* 7 (str.len x)) (* 2 (str.len y))) 26))
(assert (= (+ (* (- 2) (str.to_int x)) (* (- 3) (str.to_int y))) 46))

(check-sat)