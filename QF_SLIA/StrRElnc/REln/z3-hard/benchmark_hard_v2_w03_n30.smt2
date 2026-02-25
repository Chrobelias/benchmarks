(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.* (str.to_re "170")) (re.* (re.+ (str.to_re "20"))))))
(assert (str.in_re x (re.+ (re.* (re.union (str.to_re "74") (re.+ (str.to_re "7")))))))

(assert (>= (+ (* (- 9) (str.len x)) (* 10 (str.len y)) (* (- 3) (str.to_int x)) (str.to_int y)) 66))
(assert (= (+ (* 3 (str.to_int x)) (* (- 7) (str.to_int y))) 46))

(check-sat)