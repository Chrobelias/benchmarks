(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.+ (re.+ (re.+ (str.to_re "4")))) (str.to_re "642"))))
(assert (str.in_re x (re.+ (re.+ (re.++ (str.to_re "6") (str.to_re "1"))))))

(assert (= (+ (str.len x) (str.to_int x) (* (- 7) (str.to_int y))) 45))
(assert (= (+ (* 10 (str.to_int x)) (* 2 (str.to_int y))) 5))
(assert (< (+ (* 10 (str.len x)) (* (- 2) (str.len y))) 40))

(check-sat)