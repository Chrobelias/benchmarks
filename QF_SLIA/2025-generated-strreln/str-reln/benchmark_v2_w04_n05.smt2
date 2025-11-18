(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "259")) (re.++ (re.* (str.to_re "5")) (str.to_re "358")))))
(assert (str.in_re y (re.union (re.++ (re.* (re.range "5" "9")) (str.to_re "321")) (re.range "5" "9"))))

(assert (<= (+ (- (str.to_int x)) (* (- 6) (str.to_int y))) 60))
(assert (> (+ (* 10 (str.len y)) (* 3 (str.to_int x))) 11))
(assert (= (+ (* 9 (str.to_int x)) (* (- 8) (str.to_int y))) 23))

(check-sat)