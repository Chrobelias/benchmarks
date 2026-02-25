(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.++ (str.to_re "49") (re.++ (str.to_re "8") (re.* (str.to_re "82"))))))
(assert (str.in_re y (re.union (re.union (str.to_re "834") (str.to_re "23")) (re.+ (str.to_re "58")))))

(assert (< (+ (* 3 (str.len y)) (* (- 4) (str.to_int y))) 87))
(assert (= (+ (* (- 7) (str.to_int x)) (* (- 10) (str.to_int y))) 28))

(check-sat)