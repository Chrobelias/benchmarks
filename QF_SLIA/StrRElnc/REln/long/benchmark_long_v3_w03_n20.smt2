(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (str.in_re x (re.union (re.++ (str.to_re "970") (re.* (str.to_re "6"))) (str.to_re "66"))))
(assert (str.in_re y (re.union (re.++ (str.to_re "175") (re.* (re.* (str.to_re "81")))) (str.to_re "75"))))
(assert (str.in_re z (re.union (re.union (re.+ (str.to_re "392")) (str.to_re "92")) (re.+ (str.to_re "590")))))

(assert (>= (+ (* (- 2) (str.to_int x)) (* (- 9) (str.to_int z))) 62))
(assert (< (+ (* 10 (str.len x)) (* 3 (str.len y)) (* (- 7) (str.len z))) 40))
(assert (>= (+ (* (- 5) (str.len x)) (* (- 2) (str.len y)) (* 9 (str.len z))) 48))

(check-sat)