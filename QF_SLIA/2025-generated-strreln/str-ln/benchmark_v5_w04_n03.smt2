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

(assert (= (+ (* (- 6) (str.len x)) (* (- 6) (str.len y)) (* 5 (str.len z)) (* 2 (str.len a)) (* 4 (str.len b))) 73))
(assert (< (+ (- (str.len y)) (* (- 6) (str.len z)) (* (- 9) (str.len a)) (* (- 3) (str.len b))) 12))
(assert (= (+ (* 3 (str.to_int x)) (* (- 5) (str.to_int y)) (* (- 5) (str.to_int z)) (* 6 (str.to_int a)) (* (- 5) (str.to_int b))) 68))
(assert (> (+ (* 9 (str.len x)) (* (- 9) (str.len y)) (* 2 (str.len z)) (str.len a) (* (- 3) (str.len b))) 56))

(check-sat)