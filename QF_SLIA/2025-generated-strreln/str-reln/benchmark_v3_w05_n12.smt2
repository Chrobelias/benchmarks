(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "9")) (re.* (str.to_re "94")))))
(assert (str.in_re y (re.* (re.union (re.+ (str.to_re "675")) (re.range "0" "8")))))
(assert (str.in_re z (re.++ (str.to_re "773") (re.union (str.to_re "28") (re.* (re.range "2" "5"))))))

(assert (>= (+ (str.len x) (* 5 (str.len y)) (* (- 8) (str.len z)) (* (- 3) (str.to_int x)) (* (- 2) (str.to_int z))) 51))
(assert (<= (+ (* (- 9) (str.len x)) (* (- 6) (str.len y)) (* 7 (str.len z))) 33))
(assert (>= (+ (* 2 (str.to_int x)) (* (- 6) (str.to_int y)) (* 4 (str.to_int z))) 24))
(assert (<= (+ (* 8 (str.to_int x)) (* (- 4) (str.to_int y)) (- (str.to_int z))) 89))

(check-sat)