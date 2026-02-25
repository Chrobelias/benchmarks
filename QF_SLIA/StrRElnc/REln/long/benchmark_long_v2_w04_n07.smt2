(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (re.union (str.to_re "45") (re.+ (str.to_re "3"))) (re.* (str.to_re "22")))))
(assert (str.in_re y (re.union (str.to_re "2") (re.++ (re.+ (str.to_re "503")) (re.* (str.to_re "5"))))))

(assert (>= (+ (* (- 10) (str.to_int x)) (* 4 (str.to_int y))) 20))
(assert (>= (+ (* (- 7) (str.len x)) (str.to_int y)) 91))
(assert (> (+ (* (- 2) (str.to_int x)) (str.to_int y)) 42))

(check-sat)