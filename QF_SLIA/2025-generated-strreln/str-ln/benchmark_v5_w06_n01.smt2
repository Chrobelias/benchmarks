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

(assert (< (+ (* 6 (str.len y)) (* 4 (str.to_int x)) (* (- 7) (str.to_int y)) (* (- 8) (str.to_int a)) (* (- 6) (str.to_int b))) 100))
(assert (> (+ (str.len x) (* (- 8) (str.len y)) (* (- 2) (str.len z)) (* (- 4) (str.len a)) (- (str.len b))) 82))
(assert (> (+ (* 4 (str.len b)) (* (- 3) (str.to_int z))) 92))
(assert (= (+ (* 2 (str.len x)) (* (- 2) (str.len y)) (- (str.len z)) (* (- 6) (str.len a)) (* (- 6) (str.len b))) 66))

(check-sat)