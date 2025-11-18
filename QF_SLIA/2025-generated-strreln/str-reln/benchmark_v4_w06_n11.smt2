(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (re.+ (re.union (re.+ (str.to_re "6")) (str.to_re "23"))))))
(assert (str.in_re y (re.++ (re.union (str.to_re "7") (re.* (str.to_re "86"))) (re.* (str.to_re "87")))))
(assert (str.in_re z (re.++ (re.++ (re.+ (str.to_re "776")) (str.to_re "4")) (str.to_re "4"))))
(assert (str.in_re a (re.union (str.to_re "8") (re.+ (str.to_re "944")))))

(assert (> (+ (* 2 (str.len x)) (* (- 8) (str.len y)) (str.len z) (* (- 6) (str.len a))) 87))
(assert (<= (+ (* 7 (str.len a)) (* 5 (str.to_int x)) (* 10 (str.to_int y))) 43))
(assert (< (+ (* 4 (str.len x)) (* 10 (str.len y)) (* (- 2) (str.len a)) (- (str.to_int a))) 8))
(assert (> (+ (* 2 (str.to_int x)) (* (- 8) (str.to_int y)) (* 3 (str.to_int z)) (* 10 (str.to_int a))) 85))

(check-sat)