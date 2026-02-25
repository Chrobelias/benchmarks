(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ y "88")))

(assert (str.in_re y (re.union (re.union (re.union (re.* (re.range "3" "9")) (str.to_re "811")) (str.to_re "65")) (re.range "3" "8"))))
(assert (str.in_re x (re.++ (str.to_re "6") (re.* (re.union (re.range "0" "4") (re.range "6" "8"))))))

(assert (> (+ (- (str.len y)) (* 6 (str.to_int x)) (* (- 5) (str.to_int y))) 12))
(assert (<= (+ (* (- 9) (str.len x)) (* 6 (str.len y))) 75))

(check-sat)