(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.union (str.to_re "792") (re.+ (re.+ (str.to_re "57"))))))
(assert (str.in_re x (re.union (str.to_re "33") (re.++ (re.+ (str.to_re "78")) (re.* (str.to_re "923"))))))
(assert (str.in_re z (re.++ (str.to_re "650") (re.+ (str.to_re "97")))))

(assert (< (+ (* (- 9) (str.len y)) (* (- 2) (str.to_int x)) (* 8 (str.to_int y))) 75))
(assert (= (+ (* (- 6) (str.to_int x)) (* (- 7) (str.to_int y)) (* 7 (str.to_int z))) 82))

(check-sat)