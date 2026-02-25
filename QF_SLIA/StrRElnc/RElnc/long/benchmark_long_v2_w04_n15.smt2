(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= y (str.++ x "67")))

(assert (str.in_re x (re.union (re.union (str.to_re "4") (re.* (str.to_re "921"))) (re.range "2" "4"))))
(assert (str.in_re y (re.union (re.+ (re.range "4" "9")) (str.to_re "75"))))

(assert (= (+ (* (- 6) (str.to_int x)) (* 3 (str.to_int y))) 3))
(assert (= (+ (str.len y) (* (- 5) (str.to_int x))) 88))
(assert (< (+ (* 7 (str.len x)) (str.len y)) 72))

(check-sat)