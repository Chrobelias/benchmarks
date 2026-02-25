(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.range "0" "7") (re.++ (re.union (re.* (str.to_re "7")) (re.range "5" "9")) (re.range "7" "9")))))
(assert (str.in_re x (re.union (re.* (re.+ (str.to_re "8"))) (str.to_re "54"))))

(assert (= (+ (* (- 8) (str.len x)) (* 3 (str.len y))) 81))
(assert (= (+ (* (- 10) (str.len x)) (* (- 8) (str.len y))) 55))
(assert (< (+ (* (- 10) (str.len x)) (- (str.to_int x))) 83))

(check-sat)