(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (< (+ (* (- 4) (str.len z)) (* (- 10) (str.len a)) (* (- 10) (str.to_int x)) (* (- 5) (str.to_int y))) 56))
(assert (< (+ (* (- 4) (str.len x)) (* 9 (str.len y)) (* 2 (str.len z)) (str.len a) (* 2 (str.len b)) (* 2 (str.to_int y)) (* 7 (str.to_int a))) 9))
(assert (= (+ (str.to_int x) (* (- 6) (str.to_int y)) (* 8 (str.to_int z)) (str.to_int a) (* (- 7) (str.to_int b))) 70))
(assert (= (+ (* (- 7) (str.len x)) (* (- 4) (str.len y)) (* 2 (str.len z)) (* (- 9) (str.len a)) (* 6 (str.len b))) 95))

(check-sat)