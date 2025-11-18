(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "910")) (re.* (re.* (str.to_re "50"))))))
(assert (str.in_re y (re.+ (re.union (re.+ (re.+ (str.to_re "0"))) (str.to_re "37")))))
(assert (str.in_re z (re.union (str.to_re "67") (re.++ (str.to_re "889") (re.* (str.to_re "167"))))))
(assert (str.in_re a (re.* (re.++ (str.to_re "215") (str.to_re "51")))))

(assert (= (+ (* 10 (str.to_int x)) (* 3 (str.to_int z)) (* (- 8) (str.to_int a))) 55))
(assert (< (+ (* 3 (str.len x)) (* (- 10) (str.len y)) (* 7 (str.len z)) (- (str.len a))) 55))

(check-sat)