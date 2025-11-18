(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (str.to_re "6") (re.* (re.++ (str.to_re "546") (re.range "5" "7"))))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "817") (str.to_re "832")) (re.* (str.to_re "950")))))
(assert (str.in_re z (re.union (re.++ (re.+ (str.to_re "94")) (re.+ (str.to_re "64"))) (re.range "2" "5"))))
(assert (str.in_re a (re.++ (re.* (str.to_re "0")) (str.to_re "951"))))

(assert (< (+ (* 8 (str.len y)) (* (- 2) (str.len z)) (* (- 2) (str.len a))) 87))
(assert (= (+ (* (- 6) (str.len x)) (* (- 9) (str.len y)) (* 7 (str.len z)) (* 10 (str.len a))) 82))
(assert (> (+ (* 4 (str.len x)) (* 7 (str.len y)) (str.len z) (str.len a)) 45))
(assert (> (+ (* 6 (str.len x)) (- (str.len y)) (* (- 3) (str.len z)) (* 4 (str.len a))) 8))
(assert (< (+ (* 6 (str.to_int x)) (* (- 6) (str.to_int y)) (* (- 3) (str.to_int z)) (* (- 3) (str.to_int a))) 13))
(assert (= (+ (* 4 (str.to_int x)) (* (- 8) (str.to_int y)) (- (str.to_int z)) (* (- 6) (str.to_int a))) 46))

(check-sat)