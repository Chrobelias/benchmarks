(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "2")) (str.to_re "2"))))
(assert (str.in_re y (re.* (re.union (re.+ (re.+ (str.to_re "3"))) (str.to_re "967")))))

(assert (< (* (- 9) (str.len x)) 87))
(assert (>= (+ (* 8 (str.to_int x)) (* (- 5) (str.to_int y))) 67))
(assert (> (+ (str.to_int x) (* (- 6) (str.to_int y))) 14))

(check-sat)