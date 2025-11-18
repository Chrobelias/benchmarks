(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (<= (+ (str.to_int x) (* (- 9) (str.to_int y)) (* (- 4) (str.to_int z))) 78))
(assert (> (+ (* (- 8) (str.len x)) (* (- 6) (str.len y)) (str.len z)) 68))
(assert (< (* (- 8) (str.to_int z)) 66))

(check-sat)