(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ x "18" y)))

(assert (str.in_re y (re.+ (re.union (re.+ (re.range "0" "7")) (re.* (str.to_re "3"))))))
(assert (str.in_re z (re.+ (re.* (re.++ (str.to_re "818") (str.to_re "367"))))))
(assert (str.in_re x (re.+ (re.union (re.union (re.* (str.to_re "152")) (str.to_re "8")) (re.range "6" "9")))))

(assert (<= (+ (* 2 (str.len x)) (- (str.len y)) (* (- 10) (str.len z))) 57))
(assert (> (+ (* 2 (str.len z)) (* 5 (str.to_int z))) 97))

(check-sat)