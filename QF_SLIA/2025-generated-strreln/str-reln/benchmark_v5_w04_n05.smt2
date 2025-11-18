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

(assert (str.in_re x (re.* (re.union (str.to_re "613") (str.to_re "3")))))
(assert (str.in_re y (re.union (re.range "3" "5") (re.* (re.++ (str.to_re "220") (str.to_re "73"))))))
(assert (str.in_re z (re.* (re.* (str.to_re "629")))))
(assert (str.in_re a (re.+ (re.+ (re.* (re.range "2" "8"))))))
(assert (str.in_re b (re.+ (re.* (re.++ (str.to_re "29") (re.* (str.to_re "30")))))))

(assert (> (+ (* 4 (str.len x)) (* (- 6) (str.len a)) (* (- 10) (str.to_int z)) (* (- 9) (str.to_int b))) 15))
(assert (<= (+ (* (- 6) (str.len a)) (- (str.to_int x)) (* 7 (str.to_int z)) (* 9 (str.to_int b))) 53))

(check-sat)