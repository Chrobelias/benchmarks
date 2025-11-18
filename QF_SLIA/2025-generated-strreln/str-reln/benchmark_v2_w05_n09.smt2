(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.++ (re.union (str.to_re "58") (re.+ (str.to_re "53"))) (str.to_re "95")) (str.to_re "853"))))
(assert (str.in_re y (re.+ (re.++ (re.* (str.to_re "465")) (re.+ (str.to_re "14"))))))

(assert (> (+ (str.len x) (* 5 (str.len y))) 10))
(assert (> (+ (* 3 (str.len x)) (* (- 6) (str.to_int y))) 63))
(assert (> (+ (* 9 (str.len x)) (* (- 8) (str.len y))) 11))
(assert (<= (+ (* (- 8) (str.len x)) (* 8 (str.len y))) 18))

(check-sat)