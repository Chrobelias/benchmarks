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

(assert (str.in_re x (re.++ (re.union (str.to_re "8") (re.++ (re.+ (str.to_re "658")) (re.range "2" "8"))) (str.to_re "164"))))
(assert (str.in_re y (re.* (re.++ (re.* (str.to_re "63")) (re.range "3" "8")))))
(assert (str.in_re z (re.union (re.+ (re.+ (str.to_re "744"))) (str.to_re "81"))))
(assert (str.in_re a (re.* (re.* (re.++ (re.range "2" "8") (re.range "7" "9"))))))
(assert (str.in_re b (re.union (str.to_re "278") (re.* (re.++ (str.to_re "517") (str.to_re "20"))))))

(assert (>= (+ (* 9 (str.len x)) (* 8 (str.len y)) (str.len z) (* 10 (str.len a)) (* 10 (str.len b))) 85))
(assert (> (+ (* 4 (str.to_int x)) (* 6 (str.to_int y)) (* 8 (str.to_int a)) (str.to_int b)) 53))
(assert (>= (+ (* (- 4) (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 9) (str.to_int z)) (- (str.to_int a)) (* 10 (str.to_int b))) 83))
(assert (= (+ (* 8 (str.len x)) (- (str.len z)) (* (- 4) (str.len a)) (* (- 8) (str.len b))) 63))

(check-sat)