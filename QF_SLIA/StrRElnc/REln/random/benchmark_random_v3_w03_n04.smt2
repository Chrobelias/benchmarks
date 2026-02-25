(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.union (str.to_re "532") (re.* (str.to_re "0")))))
(assert (str.in_re x (re.++ (str.to_re "6") (re.+ (str.to_re "813")))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "48") (re.++ (str.to_re "248") (str.to_re "34"))))))

(assert (> (+ (* (- 2) (str.to_int x)) (* (- 2) (str.to_int y)) (* 3 (str.to_int z))) 47))
(assert (= (+ (* (- 10) (str.to_int x)) (* 9 (str.to_int y)) (* (- 3) (str.to_int z))) 47))
(assert (< (+ (* 7 (str.len x)) (* 3 (str.len y)) (- (str.len z))) 70))

(check-sat)