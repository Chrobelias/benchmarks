(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.union (re.range "2" "9") (re.+ (re.+ (re.range "3" "9")))) (re.range "4" "9"))))
(assert (str.in_re y (re.union (re.* (str.to_re "506")) (re.++ (re.* (str.to_re "28")) (str.to_re "7")))))

(assert (> (+ (* 9 (str.len x)) (* (- 6) (str.len y))) 72))
(assert (<= (+ (- (str.len y)) (* 4 (str.to_int x))) 40))
(assert (< (+ (* 6 (str.len x)) (* (- 10) (str.len y))) 100))

(check-sat)