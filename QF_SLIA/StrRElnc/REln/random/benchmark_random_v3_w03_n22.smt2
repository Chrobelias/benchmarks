(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.+ (re.* (str.to_re "178")))))
(assert (str.in_re z (re.* (re.++ (re.union (str.to_re "33") (re.+ (str.to_re "76"))) (str.to_re "1")))))
(assert (str.in_re x (re.* (re.+ (str.to_re "8")))))

(assert (= (+ (* 2 (str.len x)) (* (- 9) (str.len y))) 61))
(assert (< (+ (* (- 3) (str.len x)) (* 6 (str.len y)) (* 7 (str.len z))) 82))
(assert (>= (+ (* 6 (str.to_int x)) (* (- 3) (str.to_int y)) (* (- 4) (str.to_int z))) 21))

(check-sat)