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

(assert (str.in_re x (re.++ (re.++ (re.* (str.to_re "20")) (str.to_re "30")) (re.* (str.to_re "2")))))
(assert (str.in_re y (re.++ (re.* (str.to_re "4")) (str.to_re "840"))))
(assert (str.in_re z (re.++ (re.* (str.to_re "59")) (re.range "2" "8"))))
(assert (str.in_re a (re.+ (re.++ (re.* (re.* (str.to_re "2"))) (re.range "1" "3")))))
(assert (str.in_re b (re.+ (re.union (re.* (str.to_re "49")) (str.to_re "564")))))

(assert (<= (+ (* 8 (str.len x)) (str.len y) (* (- 6) (str.len a)) (* 2 (str.len b))) 96))
(assert (<= (+ (* 8 (str.len x)) (* (- 8) (str.len z)) (* 3 (str.len a)) (* (- 6) (str.len b)) (* 5 (str.to_int x))) 12))
(assert (<= (+ (* (- 9) (str.to_int x)) (* 7 (str.to_int y)) (- (str.to_int z)) (* (- 5) (str.to_int a)) (* 6 (str.to_int b))) 23))
(assert (< (+ (* (- 4) (str.to_int x)) (* 4 (str.to_int y)) (* 4 (str.to_int z)) (* 4 (str.to_int a)) (* (- 3) (str.to_int b))) 82))
(assert (= (+ (* 3 (str.len x)) (* 6 (str.len y)) (* (- 8) (str.len z)) (* (- 2) (str.len a)) (str.len b)) 98))

(check-sat)