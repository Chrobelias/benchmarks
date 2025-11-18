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

(assert (= (+ (* (- 4) (str.to_int x)) (* (- 10) (str.to_int y)) (* (- 5) (str.to_int z)) (* 2 (str.to_int a)) (* 10 (str.to_int b))) 28))
(assert (= (+ (- (str.len x)) (* (- 8) (str.len y)) (* 10 (str.len z)) (* (- 9) (str.len a)) (str.len b)) 38))
(assert (< (+ (* 8 (str.len x)) (* (- 4) (str.len y)) (* (- 9) (str.to_int x)) (* (- 4) (str.to_int z)) (* (- 8) (str.to_int a)) (* (- 4) (str.to_int b))) 23))
(assert (= (+ (* 7 (str.len x)) (* 9 (str.len y)) (- (str.len z)) (* (- 5) (str.len a)) (* (- 7) (str.len b))) 62))
(assert (> (+ (- (str.len x)) (* (- 2) (str.len y)) (* 9 (str.len z)) (* (- 10) (str.len a)) (* 3 (str.len b))) 49))

(check-sat)