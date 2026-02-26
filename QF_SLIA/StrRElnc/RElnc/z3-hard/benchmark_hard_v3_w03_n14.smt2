(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x z) (str.++ y "67")))

(assert (str.in_re x (re.union (re.+ (str.to_re "671")) (re.union (re.* (str.to_re "157")) (re.range "3" "8")))))
(assert (str.in_re z (re.* (re.* (re.range "3" "8")))))
(assert (str.in_re y (re.++ (re.union (re.+ (str.to_re "34")) (str.to_re "707")) (re.* (str.to_re "241")))))

(assert (= (+ (* 6 (str.len x)) (- (str.len y)) (* 2 (str.len z))) 14))
(assert (< (+ (str.len x) (* 5 (str.len y)) (* (- 10) (str.len z))) 64))
(assert (>= (+ (* 8 (str.to_int x)) (* (- 7) (str.to_int y)) (* (- 3) (str.to_int z))) 25))

(check-sat)