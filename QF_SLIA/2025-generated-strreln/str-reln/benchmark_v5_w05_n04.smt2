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

(assert (str.in_re x (re.union (re.union (re.+ (str.to_re "3")) (re.range "2" "6")) (str.to_re "246"))))
(assert (str.in_re y (re.union (re.* (str.to_re "199")) (re.++ (str.to_re "51") (str.to_re "823")))))
(assert (str.in_re z (re.union (re.+ (str.to_re "584")) (re.* (re.* (str.to_re "7"))))))
(assert (str.in_re a (re.+ (str.to_re "199"))))
(assert (str.in_re b (re.* (re.++ (re.range "2" "9") (str.to_re "50")))))

(assert (> (+ (* 2 (str.len x)) (* 5 (str.len y)) (* 7 (str.len z)) (* (- 6) (str.len a)) (* (- 3) (str.len b))) 20))
(assert (= (+ (* (- 9) (str.len x)) (* 9 (str.len y)) (* (- 5) (str.len z)) (* 6 (str.len a)) (* (- 6) (str.len b))) 18))
(assert (>= (+ (* 2 (str.len x)) (* 6 (str.len y)) (* 5 (str.len z)) (* (- 4) (str.len a)) (- (str.len b))) 59))
(assert (= (+ (* 3 (str.len x)) (* (- 5) (str.to_int x))) 70))

(check-sat)