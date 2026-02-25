(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.union (re.+ (str.to_re "265")) (str.to_re "99")) (str.to_re "270"))))
(assert (str.in_re x (re.++ (str.to_re "5") (re.++ (str.to_re "955") (re.* (str.to_re "887"))))))

(assert (>= (+ (* 4 (str.len x)) (* 7 (str.len y))) 47))
(assert (>= (+ (* 6 (str.len y)) (* 3 (str.to_int x))) 53))
(assert (>= (* (- 10) (str.len x)) 48))

(check-sat)