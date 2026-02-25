(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "43" x) (str.++ y "87")))

(assert (str.in_re y (re.++ (re.range "2" "7") (re.* (str.to_re "37")))))
(assert (str.in_re x (re.* (re.union (str.to_re "95") (re.range "7" "9")))))

(assert (> (+ (- (str.len x)) (str.len y)) 28))
(assert (< (+ (* 9 (str.len x)) (* 3 (str.to_int y))) 81))
(assert (> (+ (* (- 2) (str.len x)) (* (- 5) (str.len y))) 88))

(check-sat)