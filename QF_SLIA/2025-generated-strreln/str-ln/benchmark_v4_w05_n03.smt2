(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (+ (* 8 (str.len x)) (* 3 (str.len y)) (* (- 3) (str.len z)) (* 7 (str.len a))) 0))
(assert (= (+ (* (- 9) (str.len x)) (* (- 4) (str.len y)) (* (- 10) (str.len z)) (* 5 (str.len a))) 63))
(assert (= (+ (* 7 (str.len x)) (* (- 3) (str.len y)) (* (- 5) (str.len z)) (* (- 5) (str.to_int x))) 78))
(assert (< (+ (str.len x) (* (- 8) (str.len y)) (str.len z) (* (- 2) (str.len a))) 84))

(check-sat)